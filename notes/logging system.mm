<map version="0.9.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="logging system" ID="ID_673954673" CREATED="1284478075800" MODIFIED="1292389848333" LINK="power%20management.mm">
<hook NAME="MapStyle" max_node_width="600"/>
<node TEXT="PC side test agent" POSITION="right" ID="ID_1307260615" CREATED="1284484530621" MODIFIED="1284484542028">
<node TEXT="functions" ID="ID_111700141" CREATED="1284484542893" MODIFIED="1284484585039">
<node ID="ID_994831965" CREATED="1284484591700" MODIFIED="1284484905822">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      communicates with CD snapshot
    </p>
    <p>
      to start/stop.
    </p>
    <p>
      to retrieve the data.
    </p>
  </body>
</html></richcontent>
</node>
<node ID="ID_357566888" CREATED="1284484685921" MODIFIED="1284484899962">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      communicates with the phone side app:
    </p>
    <p>
      to start/stop.
    </p>
    <p>
      to get notifications from the phone side app when phone side procedure has been done.
    </p>
  </body>
</html></richcontent>
</node>
<node ID="ID_1395966646" CREATED="1284491756852" MODIFIED="1284491985839">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      perhaps it shall be able to convert the&#160;CD snapshot data to what lttng can recognize
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="help"/>
</node>
</node>
</node>
<node TEXT="phone side test agent" POSITION="right" ID="ID_136608439" CREATED="1284491845442" MODIFIED="1284491852369">
<node TEXT="functions" ID="ID_501983991" CREATED="1284491855898" MODIFIED="1284491858096">
<node ID="ID_457678909" CREATED="1284492165738" MODIFIED="1284492227101">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      it shall organize the test cases in a standalone DB, not by hard code.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="test cases are scripts" ID="ID_393584001" CREATED="1284492240134" MODIFIED="1284492249314"/>
<node TEXT="we may need to take a look at Android Script Environment to check if it can provide all the APIs of Android, or at least, those needed by PM testing." ID="ID_1454134730" CREATED="1284492259859" MODIFIED="1284492354318">
<icon BUILTIN="help"/>
</node>
</node>
</node>
<node TEXT="lttng" POSITION="right" ID="ID_473009191" CREATED="1284492767536" MODIFIED="1284492769643">
<node TEXT="the trace points shall be reviewed to make sure they are properly set" ID="ID_594579108" CREATED="1284492771282" MODIFIED="1284492855741">
<icon BUILTIN="bell"/>
</node>
<node TEXT="add new trace points for the sake of PM" ID="ID_1951305970" CREATED="1284493551960" MODIFIED="1284493563686"/>
<node TEXT="develop lttng viewer plugin for PM specific req" ID="ID_1857653761" CREATED="1284561799252" MODIFIED="1284568985750"/>
<node TEXT="fix the timing issue" ID="ID_399227336" CREATED="1284568986529" MODIFIED="1284568993449"/>
</node>
<node TEXT="problems" POSITION="right" ID="ID_711593070" CREATED="1284492345717" MODIFIED="1284492351391">
<icon BUILTIN="help"/>
<node ID="ID_1453934625" CREATED="1284492359372" MODIFIED="1284493630614">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      How can we identify the impact introduced by lttng and other tracing tools? We might need to valuate the performance penalty for each tool.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="There can&apos;t be eactly the same time the loggings start on PC side and phone side. So how can we calibrate them?" ID="ID_582807709" CREATED="1284492392008" MODIFIED="1284492713566"/>
</node>
<node TEXT="systemtap" POSITION="right" ID="ID_1494830660" CREATED="1295154758835" MODIFIED="1295154761457">
<node TEXT="more complicated than ftrace" ID="ID_877283096" CREATED="1295154762198" MODIFIED="1295154768981"/>
<node TEXT="it dynamically compiles a specific script into kernel module" ID="ID_1109779911" CREATED="1295154769657" MODIFIED="1295154784983"/>
<node TEXT="so it seems able to do anything!" ID="ID_882635891" CREATED="1295154785790" MODIFIED="1295154792983"/>
<node TEXT="there has been ARM port" ID="ID_1136089183" CREATED="1295154805386" MODIFIED="1295154813396"/>
</node>
<node TEXT="aplogd" POSITION="left" ID="ID_1349161077" CREATED="1285172915785" MODIFIED="1285172917960"/>
<node TEXT="printk" POSITION="left" ID="ID_827048650" CREATED="1300201343040" MODIFIED="1300201344138">
<node TEXT="/proc/sys/kernel/printk" ID="ID_356428484" CREATED="1300201344773" MODIFIED="1300201350080">
<node ID="ID_320983806" CREATED="1300201351500" MODIFIED="1300201537735">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>console_loglevel</b>&#160;&#160; <b>default_message_loglevel</b>&#160;&#160; <b>minimum_message_loglevel</b>&#160; &#160; <b>default_console_loglevel</b>
    </p>
    <p>
      higher than this&#160;&#160;&#160;&#160;&#160;&#160;&#160;printk() without level set&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;minimum value which&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;default value of
    </p>
    <p>
      will be print to&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;console_loglevel can be set&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;console_loglevel
    </p>
    <p>
      console
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</map>
