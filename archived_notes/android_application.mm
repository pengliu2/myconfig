<map version="0.9.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Android Framework" ID="ID_1129793286" CREATED="1284591541375" MODIFIED="1284591548577">
<hook NAME="MapStyle" max_node_width="600"/>
<node TEXT="input system" POSITION="right" ID="ID_319898436" CREATED="1284591576994" MODIFIED="1284591580336">
<node TEXT="input system uses /dev/input/eventX" ID="ID_1597761309" CREATED="1284591582779" MODIFIED="1284591595196"/>
<node TEXT="" ID="ID_482977053" CREATED="1284591597120" MODIFIED="1284591597120"/>
</node>
<node TEXT="applications" POSITION="left" ID="ID_682981179" CREATED="1290702063642" MODIFIED="1290702065859">
<node TEXT="fundamental" ID="ID_1747844830" CREATED="1290702066584" MODIFIED="1290702069207">
<node TEXT="each apk is an application" ID="ID_1552132547" CREATED="1290702791734" MODIFIED="1290702805955"/>
<node ID="ID_151650958" CREATED="1290702807747" MODIFIED="1290702863453">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      each application has its own user name of Linux system
    </p>
    <p>
      
    </p>
    <p>
      It's possible to arrange for two applications to share the same user ID, in which case they will be able to see each other's files. To conserve system resources, applications with the same ID can also arrange to run in the same Linux process, sharing the same VM.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="activity" ID="ID_702911477" CREATED="1290723791841" MODIFIED="1290724076533">
<node TEXT="a visual user interface for one focused endeavor the user can undertake" ID="ID_820594013" CREATED="1290724097051" MODIFIED="1290724101515"/>
<node TEXT="each activity has a default window" ID="ID_290963126" CREATED="1290724113164" MODIFIED="1290724123728">
<node TEXT="visual content of the window is provided by a hierarchy of views - objects derived from the base View class" ID="ID_1804836260" CREATED="1290724137902" MODIFIED="1290724197453"/>
</node>
</node>
<node TEXT="service" ID="ID_373645895" CREATED="1290724958496" MODIFIED="1290724960795">
<node TEXT="Each service extends the Service base class." ID="ID_960652191" CREATED="1290725658724" MODIFIED="1290725660381"/>
</node>
<node TEXT="broadcast receiver" ID="ID_1548574240" CREATED="1290725392750" MODIFIED="1290725404801">
<node TEXT="All receivers extend the BroadcastReceiver base class." ID="ID_89357694" CREATED="1290725646901" MODIFIED="1290725648624"/>
</node>
<node TEXT="ContentProvider" ID="ID_1140195871" CREATED="1290726120449" MODIFIED="1290726124024">
<node TEXT="Applications don&apos;t call ContentProvider directly. Rather they use a ContentResolver object and call its methods instead." ID="ID_92299720" CREATED="1290726127649" MODIFIED="1290731390249"/>
</node>
<node TEXT="task" ID="ID_211295605" CREATED="1290745102655" MODIFIED="1290745104082">
<node TEXT="a task is a stack of activities" ID="ID_350451790" CREATED="1290745105694" MODIFIED="1290745114548"/>
</node>
</node>
</node>
<node TEXT="animate" POSITION="left" ID="ID_1664542076" CREATED="1299992812603" MODIFIED="1299992832012">
<node TEXT="Animation and RotateAnimation" ID="ID_1944958646" CREATED="1299994942055" MODIFIED="1299994946154"/>
</node>
</node>
</map>
