<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1283186249194" ID="ID_1156940769" MODIFIED="1283265575804" TEXT="Linux Trace">
<node CREATED="1283265606830" ID="ID_601995257" MODIFIED="1283265608635" POSITION="right" TEXT="markers">
<node CREATED="1283265706465" ID="ID_1185226418" MODIFIED="1283269838430">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      lttng has a directory entry called markers, where the script ltt-armall write 1 to all files named enable before an logging is going to be started.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1283283073077" ID="ID_1927992566" MODIFIED="1283283076717" POSITION="left" TEXT="trace point">
<node CREATED="1283283156014" ID="ID_1736781909" MODIFIED="1283283186828" TEXT="omap3 has tracepoints in pm34xx.c for suspend entry and exit"/>
</node>
<node CREATED="1283352538468" ID="ID_1066603456" MODIFIED="1283352540743" POSITION="right" TEXT="LTTng">
<node CREATED="1283358020565" ID="ID_757990567" MODIFIED="1283358030798" TEXT="we are using relay lockless by default"/>
<node CREATED="1283361299591" ID="ID_90207051" MODIFIED="1283361311547" TEXT="It seems LTTng has been supporting DVFS of OMAP3"/>
<node CREATED="1283359186996" ID="ID_926487635" MODIFIED="1283359224706" TEXT="official LTTng patch for OMAP3 puts its functions in pm34xx.c somewhere where we don&apos;t ever use."/>
<node CREATED="1284651768841" ID="ID_1770112980" MODIFIED="1284651774720" TEXT="TODO">
<icon BUILTIN="attach"/>
<node CREATED="1284651776702" ID="ID_1169125551" MODIFIED="1284651816881">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      it doesn't support %08X in the format string yet (parse_c_type needs a fix)
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1283353491145" ID="ID_1730813221" MODIFIED="1283353492345" POSITION="left" TEXT="printk">
<node CREATED="1283353493558" ID="ID_146754854" MODIFIED="1283355093342">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      OMAP printk seems obtaining current timestamp (ns from boot) from the 32K clock input.
    </p>
  </body>
</html></richcontent>
<arrowlink DESTINATION="ID_519109215" ENDARROW="Default" ENDINCLINATION="1519;0;" ID="Arrow_ID_428740291" STARTARROW="None" STARTINCLINATION="1519;0;"/>
</node>
</node>
<node CREATED="1283354950218" ID="ID_277122431" MODIFIED="1283545024512" POSITION="left" TEXT="relative concepts">
<icon BUILTIN="pencil"/>
<node CREATED="1283354956017" ID="ID_519109215" MODIFIED="1283355093332">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      clocksource:
    </p>
    <p>
      hardware abstraction for a free running counter Provides mostly state-free accessors to the underlying hardware. This is the structure used for system time.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1283358034527" ID="ID_1896302638" MODIFIED="1283358040395" TEXT="relay filesystem"/>
</node>
<node CREATED="1283361700101" ID="ID_374934437" MODIFIED="1283361702078" POSITION="right" TEXT="ftrace"/>
<node CREATED="1285776328638" ID="ID_702257677" MODIFIED="1285776346205" POSITION="right" TEXT="events: not all tracepoints can be used as events"/>
</node>
</map>
