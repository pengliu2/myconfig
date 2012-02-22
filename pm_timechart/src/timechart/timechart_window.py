import sys
import shutil
from enthought.traits.api import  HasTraits,Str
from enthought.traits.ui.api import InstanceEditor,Item,View,HSplit,VSplit,Handler, StatusItem
from enthought.traits.ui.menu import Action, MenuBar, ToolBar, Menu
from timechart import TimechartProject
from timechart_plot import TimechartPlot, create_timechart_container, DiagramStatisticsTools
from enthought.enable.component_editor import ComponentEditor

class TimechartWindow(HasTraits):
    project = TimechartProject
    plot = TimechartPlot

    def __init__(self,project):
        self.project = project
        self.plot =  create_timechart_container(project)
        self.plot_options = self.plot.options
        self.plot_range_tools = self.plot.range_tools
        self.stat = self.plot.stat
        self.suspend = self.plot.suspend
        #self.stat = here we have to run the perl script to get the statistics result PENG
        self.trait_view().title = "PyTimechart: "+project.filename
    def get_title(self):
        return "PyTimechart:"+self.project.filename
    # Create an action that exits the application.
    exit_action = Action(name='exit', action='do_action_exit')
    about_action = Action(name='About',action='do_action_about')
    status = Str("Welcome to PyTimechart")
    class myHandler(Handler):
        def do_action_exit(self, UIInfo):
            view = UIInfo.ui.context['object']
            view.close()
        def do_action_about(self, UIInfo):
            view = UIInfo.ui.context['object']
            view.about()
    
    traits_view = View(
        VSplit(
            HSplit(
                Item('suspend', show_label = False, editor = InstanceEditor(view = 'suspend_view'), style='custom', width=250),
                Item('plot_range_tools', show_label = False, editor=InstanceEditor(view = 'selection_view'), style='custom',width=150)
            ),
            HSplit(
                Item('plot', show_label = False, editor = ComponentEditor(), width=50),
                Item('stat', show_label = False, editor=InstanceEditor(view = 'stat_view'), style='custom',width=150),
                )
            ),
        toolbar = ToolBar(),
        menubar = MenuBar(Menu(exit_action, name = '&File'),
                          Menu(about_action, name = '&Help')),
        statusbar = [StatusItem(name='status'),],
        resizable = True,
        width = 1280,
        height = 1024,
        handler = myHandler()               
        )
    def close(self):
        shutil.rmtree(self.project.tmpdir)
        sys.exit(0)
