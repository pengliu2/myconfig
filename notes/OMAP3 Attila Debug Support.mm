<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1280733237519" ID="ID_1793321857" MODIFIED="1282751269753" TEXT="Attila Debug Support">
<node CREATED="1280734756843" ID="ID_459772945" MODIFIED="1280734781702" POSITION="left" TEXT="Relationship with PM">
<node CREATED="1280734619756" ID="ID_1403676519" MODIFIED="1280734646818" TEXT="It can/shall be totally disabled when not needed."/>
<node CREATED="1280737943962" ID="ID_274097579" MODIFIED="1280737999632" TEXT="The ETB memory array is powered directly from SMPS at 1.2v. There&apos;s no dependency to CORE as in previous OMAP3 generation."/>
</node>
<node CREATED="1282766473632" ID="ID_583716253" MODIFIED="1282766475549" POSITION="left" TEXT="debugging">
<node CREATED="1282766486003" ID="ID_277481626" MODIFIED="1282766502579">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Some of the debug resources can be owned either by the application, or by the debugger. The ownership
    </p>
    <p>
      is required to configure or program debug resources. In other words, ownership determines if write access
    </p>
    <p>
      is granted to the debug resources configuration registers. The debug resource ownership is exclusive.
    </p>
    <p>
      Hence, simultaneous use of debug resources by both debugger and application is not permitted. However,
    </p>
    <p>
      the debugger can forcibly seize ownership of debug resources.
    </p>
    <p>
      <b>A read access does not require ownership. Therefore, either party can read any debug </b>
    </p>
    <p>
      <b>module registers with or without ownership.</b>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1282752166893" ID="ID_235619768" MODIFIED="1282752170755" POSITION="right" TEXT="components">
<node CREATED="1282751316257" ID="ID_1359018728" MODIFIED="1282752164569" TEXT="emulator subsystem">
<node CREATED="1282751404547" ID="ID_559561391" MODIFIED="1282751444753" TEXT="icepick-D:emulation unit">
<node CREATED="1282753552829" ID="ID_691428110" MODIFIED="1282753615882">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The ICE-Pick module is implemented in the emulation domain and closely coupled to the Power &amp; Clock
    </p>
    <p>
      Management modules (PM, CM). This provides the debug user with complete control of a system&#8217;s
    </p>
    <p>
      operation. The emulation domain is the dominate control authority when it is enabled, and is capable of:
    </p>
    <ul>
      <li>
        Inhibiting state changes, including

        <ul>
          <li>
            Preventing subsystem power from being turned off
          </li>
          <li>
            Preventing subsystem clocks being turned off
          </li>
        </ul>
      </li>
      <li>
        Making subsystems operable by

        <ul>
          <li>
            Forcing the subsystem power to the on state
          </li>
          <li>
            Forcing the subsystem clock to the on state
          </li>
        </ul>
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1282751446001" ID="ID_1951866353" MODIFIED="1282751478450" TEXT="DAP: the interface"/>
<node CREATED="1282751484179" ID="ID_1044529644" MODIFIED="1282751556358" TEXT="the processor trace subsystem: Chiron">
<node CREATED="1282849392561" ID="ID_919927649" MODIFIED="1282849451195" TEXT="in Cortex A9 program trace only"/>
</node>
<node CREATED="1282751571171" ID="ID_838185677" MODIFIED="1282751578344" TEXT="system trace subsystem"/>
<node CREATED="1282752005903" ID="ID_1693279313" MODIFIED="1282752107113">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      EMU-CFG interconnection:
    </p>
    <ul>
      <li>
        used to configure the resources in debug subsystem
      </li>
      <li>
        accessible from external interface or L3
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1282752185269" ID="ID_762690897" MODIFIED="1282752190643" TEXT="cross trigger unit"/>
</node>
<node CREATED="1282752176942" ID="ID_476357890" MODIFIED="1282752243825">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      ICEMelter: wakeup and power down the emulation power domain
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1282752249166" ID="ID_728753353" MODIFIED="1282752375461">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Core instrumentation interconnect:
    </p>
    <ul>
      <li>
        initiator ports:

        <ul>
          <li>
            L3 interconnect (for software instrumentation &amp; Performance probes)
          </li>
          <li>
            OCP-WP - L3 interconnect
          </li>
          <li>
            ...
          </li>
        </ul>
      </li>
      <li>
        Target port

        <ul>
          <li>
            EMU instrumentation interconnect
          </li>
        </ul>
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1282752449595" ID="ID_1851840751" MODIFIED="1282752454434" TEXT="OCP-WatchPoint"/>
<node CREATED="1282752472675" ID="ID_486486544" MODIFIED="1282752484085" TEXT="OCP to OCP-WP bridge"/>
<node CREATED="1282752491426" ID="ID_1680669600" MODIFIED="1282752526977">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Power Management Event Profiler, The PM state changes are handled as generic
    </p>
    <p>
      events and encapsulated in STP messages
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1282752536299" ID="ID_1983533891" MODIFIED="1282752555300">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Clock Management Events Profiler:
    </p>
    <p>
      The CM state changes are handled as genericevents and encapsulated in STP messages
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1282752564268" ID="ID_1189918901" MODIFIED="1282752583065" TEXT="Performance Probes: embedded in L3 interconnect"/>
</node>
<node CREATED="1282762513547" ID="ID_817278500" MODIFIED="1282762518793" POSITION="right" TEXT="library">
<node CREATED="1282762526671" ID="ID_151398876" LINK="http://processors.wiki.ti.com/index.php/CToolsLib" MODIFIED="1282762557073" TEXT="TI&apos;s CToolsLib"/>
</node>
</node>
</map>
