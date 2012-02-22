from enthought.chaco.api import ArrayDataSource, DataRange1D, LinearMapper,BarPlot, LinePlot, \
                                 ScatterPlot, PlotAxis, PlotGrid,OverlayPlotContainer, VPlotContainer,add_default_axes, \
                                 add_default_grids,VPlotContainer
from enthought.chaco.tools.api import PanTool, ZoomTool,RangeSelection,RangeSelectionOverlay
from enthought.chaco.api import create_line_plot
from enthought.traits.ui.api import View,Item,VGroup,TableEditor, HGroup
from enthought.traits.api import HasTraits,DelegatesTo,Trait, Property, String
from enthought.traits.api import Float, Instance, Int,Bool,Str,Unicode,Enum,Button
from enthought.chaco.api import AbstractOverlay, BaseXYPlot
from enthought.chaco.label import Label
from enthought.kiva.traits.kiva_font_trait import KivaFont
from enthought.enable.api import black_color_trait
from enthought.traits.ui.table_column \
    import ObjectColumn, ExpressionColumn

from timechart import TimechartProject, Timechart

from numpy import linspace,arange,amin,amax
from math import log
from numpy import array, ndarray,argmax,searchsorted,mean
from numpy import array, compress, column_stack, invert, isnan, transpose, zeros,ones
from enthought.traits.api import List
from enthought.enable.colors import ColorTrait
from enthought.pyface.timer import timer
import re
import sys
import os
from timechart import coloredObjectColumn

c_states_colors=[0x000000,0xbbbbff,0x7777ff,0x5555ff,0x3333ff,0x1111ff,0x0000ff]
process_colors=[0x000000,0x555555,0xffff88,0x55ffff]
class TimeChartOptions(HasTraits):
    minimum_time_filter = Enum((0,1000,10000,50000,100000,500000,1000000,5000000,1000000,5000000,10000000,50000000))
    remove_pids_not_on_screen = Bool(True)
    show_wake_events = Bool(False)
    show_p_states = Bool(True)
    show_c_states = Bool(False)
    auto_zoom_y = Bool(False)

    proj = TimechartProject

    traits_view = View(VGroup(
            Item('minimum_time_filter'),
            Item('remove_pids_not_on_screen'),
            Item('show_wake_events'),
            Item('show_p_states'),
            Item('show_c_states'),
            Item('auto_zoom_y'),
            label='Display Properties'
            ))
    def connect(self,plot):
        self.auto_zoom_timer = timer.Timer(300,self._auto_zoom_y_delayed)
        self.auto_zoom_timer.Stop()
        self.plot = plot
    def _minimum_time_filter_changed(self):
        self.plot.invalidate()
    def _remove_pids_not_on_screen_changed(self):
        self.plot.invalidate()
    def _show_wake_events_changed(self):
        self.plot.invalidate()
    def _show_p_states_changed(self):
        self.plot.invalidate()
    def _show_c_states_changed(self):
        self.plot.invalidate()
    def _auto_zoom_y_changed(self,val):
        self.plot.auto_zoom_y()
        self.auto_zoom_timer.Stop()
    def _auto_zoom_y_delayed(self):
        self.plot.auto_zoom_y()
        self.auto_zoom_timer.Stop()

class coloredObjectColumn(ObjectColumn):
    def get_text_color(self,i):
        if i.file_name=="dmesg":
            return "#111111"
        else:
            return  "#777777"
    def get_cell_color(self,i):
        r,g,b,a = i.default_bg_color
        return "#%02X%02X%02X"%(255*r,255*g,255*b)
        
log_editor = TableEditor(
    columns = [
        coloredObjectColumn(name = 'file_name', width = 0.45, editable = False),
        coloredObjectColumn(name = 'log', width = 0.55, editable = False)
        ],
    deletable   = False,
    editable   = False,
    sort_model  = False,
    auto_size   = False,
    orientation = 'vertical',
    show_toolbar = False,
    selection_mode = 'rows',
    selected = "selected"
    )

class Log(Timechart):
    name = Property(String)
    file_name = String
    log = String
    project = None
    wakeuplog = False
    def _get_default_bg_color(self):
        if self.file_name.startswith("dmesg"):
            return (.9,1,.9,1)
        if self.file_name.startswith("logcat"):
            return (.7,1,.7,1)
        return (.3,1,.3,1)

    def _get_bg_color(self):
        if self.project.plot.range_tools.highlight_wakeup and self.wakeuplog:
            return  (0.678, 0.847, 0.902, 1.0)
        return self.default_bg_color

class RangeSelectionTools(HasTraits):
    time = Str
    #c_states = Str
    zoom = Button()
    logcat_button = Button()
    show = Button()
    hide = Button()
    logs = List(Log)
    traits_view = View(VGroup(
#            HGroup(Item('show'), Item('hide'),show_labels  = False),
            Item('time'),
            #Item('c_states',style="custom"),
            Item('zoom'),
            Item('logs',
                 show_label = False,
                 height=20,
                 editor = log_editor
                 ),
            label='Selection Infos'
            ))

    highlight_wakeup = False

    def _show_changed(self):
        self.highlight_wakeup = True
    def _hide_changed(self):
        self.highlight_wakeup = False

    def connect(self,plot):
        self.plot = plot
        plot.range_selection.on_trait_change(self._selection_update_handler, "selection")
        self._timer = timer.Timer(100,self._selection_updated_delayed)
        self._timer.Stop()
    def _selection_update_handler(self,value):
        if value is not None :
            self.start, self.end = amin(value) * 1000000, amax(value) *1000000
            time = self.end-self.start
            self.time = "%d.%03d %03ds"%(time/1000000,(time/1000)%1000,time%1000)
            self._timer.Start()
    def _zoom_changed(self):
        self.plot.index_range.high = self.end/1000000
        self.plot.index_range.low = self.start/1000000
        self.plot.range_selection.deselect()
        self.plot.invalidate_draw()
        self.plot.request_redraw()

    def _logcat_button_changed(self):
        pass

    def zoom_to(self, start, end):
        self.start = start * 1000000
        self.end = end * 1000000
        time = self.end-self.start
        self.time = "%d.%03d %03ds"%(time/1000000,(time/1000)%1000,time%1000)
        self._selection_updated_delayed()
        self._zoom_changed()

    def _selection_updated_delayed(self):
        
        tmp_logs = []

        tmp = open(self.plot.proj.tmp_dmesg_file,'w+')
        suspend_re = re.compile('<\d>\[ *(\d+\.\d+)\]')
        f = open(self.plot.proj.tmp_logcat_file,'r')
        sys.stderr.write('start is %d, end is %d\n'%(self.start,self.end))
        write_to_tmp = False

        while True:
            line = f.readline()
            if len(line) == 0:
                break;
            res = suspend_re.search(line)
            if res is None:
                if write_to_tmp:
                    l = Log(file_name="logcat", log=line[0:-1], project=self.plot.proj)
                    tmp_logs.append(l)
                continue

            groups = res.groups()
            if (float(groups[0])*1000000) < self.start:
                continue
            elif (float(groups[0])*1000000) < self.end:
                wkl = False
                if re.search('exit suspend', line):
                    wkl = True
                l = Log(file_name="dmesg", log=line[0:-1], project=self.plot.proj, wakeuplog=wkl)
                tmp_logs.append(l)
                tmp.write(line)
                write_to_tmp = True
            else:
                write_to_tmp = False
                break
        f.close()
        tmp.close()
        self.logs = tmp_logs

        os.system('cd %s; perl ~/bin/pm_log_parser.pl %s>%s'%(self.plot.proj.tmpdir,self.plot.proj.tmp_dmesg_file,self.plot.proj.tmp_stat_file))
        self.plot.stat.update()

        self._timer.Stop()


class SuspendEntry(Timechart):
    name = Property(String)
    start = String
    end = String
    duration = String
    status = String
    domains = String
    reason = String
    entry = String
    
    project = None
    def _get_default_bg_color(self):
        return (.3,1,.3,1)
    def _get_bg_color(self):
        return self.default_bg_color

class coloredObjectColumnSuspend(ObjectColumn):
    def get_text_color(self,i):
        return  "#777777"
    def get_cell_color(self,i):
        r,g,b,a = i.default_bg_color
        return "#%02X%02X%02X"%(255*r,255*g,255*b)

suspend_table_editor = TableEditor(
    columns = [
        coloredObjectColumnSuspend(name = 'start', width = 1, editable = False),
        coloredObjectColumnSuspend(name = 'end', width = 1 , editable = False),
        coloredObjectColumnSuspend(name = 'duration', width = 1, editable = False),
        coloredObjectColumnSuspend(name = 'status', width = 1, editable = False),
        coloredObjectColumnSuspend(name = 'domains', width = 1, editable = False),
        coloredObjectColumnSuspend(name = 'reason', width = 1, editable = False),
        coloredObjectColumnSuspend(name = 'entry', width = 1, editable = False)
        ],
    deletable = False,
    editable = False,
    sort_model = False,
    auto_size = False,
    orientation = 'vertical',
    show_toolbar = False,
    selection_mode = 'rows',
    selected = "selected"
    )

class SuspendListTools(HasTraits):
    zoom = Button()
    suspend_entry = List(SuspendEntry)
    selected = List(SuspendEntry)

    traits_view = View(
        VGroup(
            Item('suspend_entry',
                 show_label = False,
                 height=20,
                 editor=suspend_table_editor
                 ),
            Item('zoom'),
            label="Suspend/Resume List"
            ),
        )
    def connect(self,plot):
        self.plot = plot
        f = open(self.plot.proj.csv_file, 'r')
        line = f.readline()
        if len(line) == 0:
            return

        tmp_entries = []
        suspend_re = re.compile('(\d+\.\d{6}), *(\d+\.\d{6}),(\d+\.\d{6}), *(\d+\.\d{6}),([^,]+),([^,]+),(.*)$')
        while True:
            line = f.readline()
            if len(line) == 0:
                break
            m = suspend_re.match(line)
            if m is not None:
                entry = SuspendEntry(entry=line[0:-1],
                                     start=m.groups()[1],
                                     end=m.groups()[3],
                                     duration=m.groups()[2],
                                     status=m.groups()[4],
                                     domains=m.groups()[5],
                                     reason=m.groups()[6],
                                     project=self.plot.proj)
            tmp_entries.append(entry)

        f.close()
        self.suspend_entry = tmp_entries
    def _zoom_changed(self):
        first_entry = self.selected[0].entry
        last_entry = self.selected[-1].entry
        re_pattern = re.compile('^\d+\.\d{6},(\d+\.\d{6}),\d+\.\d{6},(\d+\.\d{6}),.*')
        m = re_pattern.match(first_entry)
        if m is None:
            sys.stderr.write('nothing match 1, %s\n'%first_entry)
            return
        start = float(m.groups()[0])

        m = re_pattern.match(last_entry)
        if m is None:
            sys.stderr.write('nothing match 2, %s\n'%last_entry)
            return
        end = float(m.groups()[1])

        self.plot.range_tools.zoom_to(start, end)

class DiagramStatisticsTools(HasTraits):
    mystr = Str
    traits_view = View(VGroup(
        Item('mystr',style="custom"),
        label='statistics'
        ))
    
    def update(self):
        tmp_mystr = ""
        f = open(self.plot.proj.tmp_stat_file,'r')
        while True:
            l = f.readline()
            if len(l) == 0:
                break
            tmp_mystr = tmp_mystr + l

        f.close()
        self.mystr = tmp_mystr

    def connect(self,plot):
        self.plot = plot
        tmp_mystr = ""

        f = open(self.plot.proj.tmp_stat_file,'r')
        while True:
            l = f.readline()
            if len(l) == 0:
                break
            tmp_mystr = tmp_mystr + l

        f.close()
        self.mystr = tmp_mystr
        

class TimechartPlot(BarPlot):
    """custom plot to draw the timechart
    probably not very 'chacotic' We draw the chart as a whole
    """
    # the colors of the values
    c_states_colors = List(ColorTrait)
    process_colors = List(ColorTrait)
    # The text of the axis title.
    title = Trait('', Str, Unicode) #May want to add PlotLabel option
    # The font of the title.
    title_font = KivaFont('modern 9')
    # The font of the title.
    title_font_large = KivaFont('modern 15')
    # The spacing between the axis line and the title
    title_spacing = Trait('auto', 'auto', Float)
    # The color of the title.
    title_color = ColorTrait("black")

    options = TimeChartOptions()
    range_tools = RangeSelectionTools()
    stat = DiagramStatisticsTools()
    suspend = SuspendListTools()
    redraw_timer = None
    def invalidate(self):
        self.invalidate_draw()
        self.request_redraw()

    def request_redraw_delayed(self):
        self.redraw_timer.Stop()
        BarPlot.request_redraw(self)
    def request_redraw(self):
        if self.redraw_timer == None:
            self.redraw_timer = timer.Timer(30,self.request_redraw_delayed)
        self.redraw_timer.Start()

    def auto_zoom_y(self):
        if self.value_range.high != self.max_y+1 or self.value_range.low != self.min_y:
            self.value_range.high = self.max_y+1
            self.value_range.low = self.min_y
            self.invalidate_draw()
            self.request_redraw()

    def _gather_timechart_points(self,start_ts,end_ts,y,step):
        low_i = searchsorted(end_ts,self.index_mapper.range.low)
        high_i = searchsorted(start_ts,self.index_mapper.range.high)
        if low_i==high_i:
            return array([])

        start_ts = start_ts[low_i:high_i]
        end_ts = end_ts[low_i:high_i]
        points = column_stack((start_ts,end_ts,
                               zeros(high_i-low_i)+(y+step), ones(high_i-low_i)+(y-step),array(range(low_i,high_i))))
        return points
    def _draw_label(self,gc,label,text,x,y):
        label.text = text
        l_w,l_h = label.get_width_height(gc)
        offset = array((x,y-l_h/2))
        gc.translate_ctm(*offset)
        label.draw(gc)
        gc.translate_ctm(*(-offset))
        return l_w,l_h
    def _draw_timechart(self,gc,tc,label,base_y,fill_colors):
        
        bar_middle_y = self.first_bar_y+(base_y+.5)*self.bar_height
        points = self._gather_timechart_points(tc.start_ts,tc.end_ts,base_y,.2)
        if self.options.remove_pids_not_on_screen and points.size == 0:
            return 0
        if bar_middle_y+self.bar_height < self.y or bar_middle_y-self.bar_height>self.y+self.height:
            return 1 #quickly decide we are not on the screen
        self._draw_bg(gc,base_y,tc.bg_color)
        # we are too short in height, dont display all the labels
        if self.last_label >= bar_middle_y:
            # draw label
            l_w,l_h = self._draw_label(gc,label,tc.name,self.x,bar_middle_y)
            self.last_label = bar_middle_y-8
        else:
            l_w,l_h = 0,0 
        if points.size != 0:
            # draw the middle line from end of label to end of screen
            if l_w != 0: # we did not draw label because too short on space
                gc.set_alpha(0.2)
                gc.move_to(self.x+l_w,bar_middle_y)
                gc.line_to(self.x+self.width,bar_middle_y)
                gc.draw_path()
            gc.set_alpha(0.5)
            # map the bars start and stop locations into screen space
            lower_left_pts = self.map_screen(points[:,(0,2)])
            upper_right_pts = self.map_screen(points[:,(1,3)])
            bounds = upper_right_pts - lower_left_pts

            if points.size>1000: # critical path, we only draw unicolor rects
                #calculate the mean color
                t = mean(tc.types[points[0][4]:points[-1][4]])
                gc.set_fill_color(fill_colors[int(t)])
                rects=column_stack((lower_left_pts, bounds))
                gc.rects(rects)
                gc.draw_path()
            else:
                # lets display them more nicely
                rects=column_stack((lower_left_pts, bounds,points[:,(4)]))
                last_t = -1
                gc.save_state()
                for x,y,sx,sy,i in rects:
                    t = tc.types[i]

                    if last_t != t:
                        # only draw when we change color. agg will then simplify the path
                        # note that a path only can only have one color in agg.
                        gc.draw_path()
                        if len(fill_colors)>t:
                            gc.set_fill_color(fill_colors[int(t)])
                        last_t = t
                    gc.rect(x,y,sx,sy)
                # draw last path
                gc.draw_path()
                if tc.has_comments:
                    for x,y,sx,sy,i in rects:
                        if sx<8: # not worth calculatig text size
                            continue
                        label.text = tc.get_comment(i)
                        l_w,l_h = label.get_width_height(gc)
                        if l_w < sx:
                            offset = array((x,y+self.bar_height*.6/2-l_h/2))
                            gc.translate_ctm(*offset)
                            label.draw(gc)
                            gc.translate_ctm(*(-offset))
            if tc.max_latency > 0: # emphase events where max_latency is reached
                ts = tc.max_latency_ts
                if ts.size>0:
                    points = self._gather_timechart_points(ts,ts,base_y,0)
                    if points.size>0:
                        # map the bars start and stop locations into screen space
                        gc.set_alpha(1)
                        lower_left_pts = self.map_screen(points[:,(0,2)]) 
                        upper_right_pts = self.map_screen(points[:,(1,3)])
                        bounds = upper_right_pts - lower_left_pts
                        rects=column_stack((lower_left_pts, bounds))
                        gc.rects(rects)
                        gc.draw_path()
                
                    
        return 1
            
    def _draw_freqchart(self,gc,tc,label,y):
        self._draw_bg(gc,y,tc.bg_color)
        low_i = searchsorted(tc.start_ts,self.index_mapper.range.low)
        high_i = searchsorted(tc.start_ts,self.index_mapper.range.high)

        if low_i>0:
            low_i -=1
        if high_i<len(tc.start_ts):
            high_i +=1
        
        if low_i>=high_i-1:
            return array([])
        
        start_ts = tc.start_ts[low_i:high_i-1]
        end_ts = tc.start_ts[low_i+1:high_i]
        values = (tc.types[low_i:high_i-1]/(float(tc.max_types)))+y
        starts = column_stack((start_ts,values))
        ends = column_stack((end_ts,values))
        starts = self.map_screen(starts)
        ends = self.map_screen(ends)
        gc.begin_path()
        gc.line_set(starts, ends)
        
        new_starts = ends[0:-1]
        new_ends = starts[1:]
        gc.line_set(new_starts, new_ends)

        gc.stroke_path()
#        for i in xrange(len(starts)):
#            x1,y1 = starts[i]
#            x2,y2 = ends[i]
#            sx = x2-x1
#            if sx >8:
#                label.text = str(tc.types[low_i+i])
#                l_w,l_h = label.get_width_height(gc)
#                if l_w < sx:
#                    if x1<0:x1=0
#                    offset = array((x1,y1))
#                    gc.translate_ctm(*offset)
#                    label.draw(gc)
#                    gc.translate_ctm(*(-offset))
    def _draw_wake_ups(self,gc,processes_y):
        low_i = searchsorted(self.proj.wake_events['time'],self.index_mapper.range.low)
        high_i = searchsorted(self.proj.wake_events['time'],self.index_mapper.range.high)
        gc.set_stroke_color((0,0,0,.6))
        for i in xrange(low_i,high_i):
            waker,wakee,ts = self.proj.wake_events[i]
            if processes_y.has_key(wakee) and processes_y.has_key(waker):
                y1 = processes_y[wakee]
                y2 = processes_y[waker]
                x,y = self.map_screen(array((ts,y1)))
                gc.move_to(x,y)
                y2 = processes_y[waker]
                x,y = self.map_screen(array((ts,y2)))
                gc.line_to(x,y)
                x,y = self.map_screen(array((ts,(y1+y2)/2)))
                if y1 > y2:
                    y+=5
                    dy=-5
                else:
                    y-=5
                    dy=+5
                gc.move_to(x,y)
                gc.line_to(x-3,y+dy)
                gc.move_to(x,y)
                gc.line_to(x+3,y+dy)

        gc.draw_path()
    def _draw_bg(self,gc,y,color):
        gc.set_alpha(1)
        gc.set_line_width(0)
        gc.set_fill_color(color)
        this_bar_y = self.map_screen(array((0,y)))[1]
        gc.rect(self.x, this_bar_y, self.width, self.bar_height)
        gc.draw_path()
        gc.set_line_width(self.line_width)
        gc.set_alpha(0.5)

    def _draw_plot(self, gc, view_bounds=None, mode="normal"):
        gc.save_state()
        gc.clip_to_rect(self.x, self.y, self.width, self.height)
        gc.set_antialias(1)
        gc.set_stroke_color(self.line_color_)
        gc.set_line_width(self.line_width)
        self.first_bar_y = self.map_screen(array((0,0)))[1]
        self.last_label = self.height+self.y
        self.bar_height = self.map_screen(array((0,1)))[1]-self.first_bar_y
        self.max_y = y = self.proj.num_cpu*2+self.proj.num_process-1
        if self.bar_height>15:
            font = self.title_font_large
        else:
            font = self.title_font
        label = Label(text="",
                      font=font,
                      color=self.title_color,
                      rotate_angle=0)
        for i in xrange(len(self.proj.c_states)):
            tc = self.proj.c_states[i]
            if self.options.show_c_states:
                self._draw_timechart(gc,tc,label,y,self.c_states_colors)
                y-=1
            tc = self.proj.p_states[i]
            if self.options.show_p_states:
                self._draw_freqchart(gc,tc,label,y)
                y-=1
        processes_y = {0xffffffffffffffffL:y+1}
        for tc in self.proj.processes:
            if tc.total_time < self.options.minimum_time_filter:
                continue
            if tc.show==False:
                continue
            processes_y[(tc.comm,tc.pid)] = y+.5
            if self._draw_timechart(gc,tc,label,y,self.process_colors) or not self.options.remove_pids_not_on_screen:
                y-=1
        if self.options.show_wake_events:
            self._draw_wake_ups(gc,processes_y)
        gc.restore_state()
        self.min_y = y
        if self.options.auto_zoom_y:
            self.options.auto_zoom_timer.Start()
class myZoomTool(ZoomTool):
    """ a zoom tool which change y range only when control is pressed"""
    def normal_mouse_wheel(self, event):
        if event.control_down:
            self.tool_mode = "box"
        else:
            self.tool_mode = "range"
        super(myZoomTool, self).normal_mouse_wheel(event)
        # restore default zoom mode
        if event.control_down:
            self.tool_mode = "range"
def create_timechart_container(project):
    """ create a vplotcontainer which connects all the inside plots to synchronize their index_range """

    # find index limits
    low = 1<<64
    high = 0
    for i in xrange(len(project.c_states)):
        if len(project.c_states[i].start_ts):
            low = min(low,project.c_states[i].start_ts[0])
            high = max(high,project.c_states[i].end_ts[-1])
        if len(project.p_states[i].start_ts):
            low = min(low,project.p_states[i].start_ts[0])
            high = max(high,project.p_states[i].start_ts[-1])
    for tc in project.processes:
        if len(tc.start_ts):
            low = min(low,tc.start_ts[0])
            high = max(high,tc.end_ts[-1])
    project.process_stats(low,high)
    # we have the same x_mapper/range for each plots
    index_range = DataRange1D(low=low, high=high)
    index_mapper = LinearMapper(range=index_range,domain_limit=(low,high))
    value_range = DataRange1D(low=0, high=project.num_cpu*2+project.num_process)
    value_mapper = LinearMapper(range=value_range,domain_limit=(0,project.num_cpu*2+project.num_process))
    index = ArrayDataSource(array((low,high)), sort_order="ascending")
    plot = TimechartPlot(index=index,
                         proj=project, bgcolor="white",padding=(0,0,0,40),
                         use_backbuffer = True,
                         fill_padding = True,
                         value_mapper = value_mapper,
                         index_mapper=index_mapper,
                         line_color="black",
                         c_states_colors=c_states_colors,
                         process_colors=process_colors,
                         render_style='hold',
                         line_width=1)
    project.on_trait_change(plot.invalidate, "show")
    project.on_trait_change(plot.invalidate, "selected")
    project.on_trait_change(plot.invalidate, "hide")
    max_process = 50
    if value_range.high>max_process:
        value_range.low = value_range.high-max_process
    # Attach some tools 
    plot.tools.append(PanTool(plot,drag_button='left'))
    zoom = myZoomTool(component=plot, tool_mode="range", always_on=True,axis="index",drag_button=None)
    plot.tools.append(zoom)

    plot.range_selection = RangeSelection(plot,resize_margin=1)
    plot.tools.append(plot.range_selection)
    plot.overlays.append(RangeSelectionOverlay(component=plot,axis="index",use_backbuffer=True))

    axe = PlotAxis(orientation='bottom',title='time',mapper=index_mapper,component=plot)
    plot.underlays.append(axe)
    plot.options.connect(plot)
    plot.range_tools.connect(plot)
    plot.stat.connect(plot)
    plot.suspend.connect(plot)
    return plot
