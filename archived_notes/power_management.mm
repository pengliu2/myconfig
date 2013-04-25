<map version="0.9.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="power management" ID="ID_514874633" CREATED="1284063181513" MODIFIED="1284063226169">
<hook NAME="MapStyle" max_node_width="600"/>
<node TEXT="tools" POSITION="right" ID="ID_1571936084" CREATED="1284063106601" MODIFIED="1284063107874">
<node TEXT="National Instrument (DAQ)" ID="ID_1662871957" CREATED="1284063108561" MODIFIED="1284063124435">
<node ID="ID_1473478928" CREATED="1284063145292" MODIFIED="1284065450917">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      the tool we are using to measure the current drain is NI 6251
    </p>
    <p>
      it has no support on Linux
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node TEXT="OMAP4 Domain Architecture Document" POSITION="right" ID="ID_1640404280" CREATED="1284402300828" MODIFIED="1284402318146">
<node ID="ID_1176961203" CREATED="1284655618434" MODIFIED="1284655678745">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      DPLL: digital phase lock logic:
    </p>
    <p>
      to distribute the clock
    </p>
    <p>
      to keep the output phase the same pace to the input
    </p>
    <p>
      to change the frequency
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="TELSA: audio processor" ID="ID_903859470" CREATED="1287000435490" MODIFIED="1287000628792"/>
<node TEXT="DUCATI: video processor" ID="ID_1005686580" CREATED="1287000615392" MODIFIED="1287000622626"/>
<node TEXT="C states and power domains" ID="ID_878933124" CREATED="1295287049940" MODIFIED="1295287060135"/>
<node TEXT="whole system possible power states" ID="ID_1899121670" CREATED="1295287289629" MODIFIED="1295287302615"/>
<node TEXT="the idle time current drain problem" ID="ID_1510311896" CREATED="1295287362895" MODIFIED="1295287375795">
<node TEXT="there could be two factors affecting the current drain value" ID="ID_1386091831" CREATED="1295287377154" MODIFIED="1295287405805">
<node TEXT="CPU frequency" ID="ID_913774589" CREATED="1295287408356" MODIFIED="1295287414010"/>
<node TEXT="power domains&apos; state" ID="ID_299433933" CREATED="1295287414270" MODIFIED="1295287425111">
<node TEXT="For this, we need to find a trace event to log those events." ID="ID_508652555" CREATED="1295287507536" MODIFIED="1295287532495"/>
</node>
</node>
</node>
<node TEXT="clock domain" ID="ID_213190314" CREATED="1295289329021" MODIFIED="1295289418376" LINK="omap4.mm"/>
</node>
<node TEXT="logging system" POSITION="right" ID="ID_1451525777" CREATED="1284563117283" MODIFIED="1284563117287" LINK="logging%20system.mm">
<node TEXT="/sys/power/" ID="ID_1377811781" CREATED="1292389918123" MODIFIED="1292389926077">
<node ID="ID_94831212" CREATED="1292389940704" MODIFIED="1292390018204">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      pm_trace
    </p>
    <p>
      
    </p>
    <p>
      The /sys/power/pm_trace file controls the code which saves the
    </p>
    <p>
      &#160;last PM event point in the RTC across reboots, so that you can ebug a machine that just hangs during suspend (or more
    </p>
    <p>
      &#160;commonly, during resume).&#160;&#160;Namely, the RTC is only used to save the last PM event point if this file contains '1'.&#160;&#160;Initially
    </p>
    <p>
      &#160;it contains '0' which may be changed to '1' by writing a string representing a nonzero integer into it.
    </p>
    <p>
      
    </p>
    <p>
      dmesg -s 1000000 | grep 'hash matches'
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="pm_trace is not in OMAP build" ID="ID_388432644" CREATED="1292426393977" MODIFIED="1292426401615"/>
</node>
<node TEXT="Jean Pihet&apos;s patch has been merged on Oct 04, 2010" ID="ID_1456483522" CREATED="1292392554515" MODIFIED="1292393080977"/>
</node>
<node TEXT="cpuidle" POSITION="right" ID="ID_809554788" CREATED="1284914478513" MODIFIED="1284914480241">
<node TEXT="cpuidle driver" ID="ID_1877504459" CREATED="1284914491647" MODIFIED="1284914495170">
<node ID="ID_1424349605" CREATED="1284914567529" MODIFIED="1284914625714">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      functions include the platform idle state detection and mechanisms in place to support actual entry-exit into CPU idle states
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="it also supports dynamic changes (like battery &lt;--&gt; AC)" ID="ID_1629986990" CREATED="1284914635876" MODIFIED="1284914662092"/>
<node ID="ID_166848190" CREATED="1284914910077" MODIFIED="1284914930368">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      omap3_idle_driver
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="omap3_idle_device (per cpu structure)" ID="ID_611650237" CREATED="1284915019724" MODIFIED="1284915032439"/>
</node>
<node TEXT="cpuidle governor" ID="ID_307031582" CREATED="1284914495495" MODIFIED="1284914513507"/>
<node TEXT="cpuidle infrastructure" ID="ID_951344797" CREATED="1284914514197" MODIFIED="1284914519491">
<node ID="ID_1048861872" CREATED="1284915406409" MODIFIED="1284915424045">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      decide what idle state to enter at any given time
    </p>
  </body>
</html></richcontent>
</node>
<node ID="ID_1262783715" CREATED="1284915765621" MODIFIED="1284915940696">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      cpuidle thread: cpu_idle-&gt;pm_idle=cpuidle_idle_call-&gt;cpuidle_curr_governor-&gt;select(dev) then target_state-&gt;enter
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node TEXT="suspend" POSITION="right" ID="ID_1870349077" CREATED="1284923625002" MODIFIED="1284923630545">
<node ID="ID_1924998793" CREATED="1284923858072" MODIFIED="1284924283650">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      enter_state is called in two places, state_store and pm_suspend.
    </p>
    <p>
      State_store is never called by others.
    </p>
    <p>
      pm_suspend is only called in wakelock.c
    </p>
    <p>
      
    </p>
    <p>
      static suspend-&gt;pm_suspend is called from a work_queue
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="cpufreq" POSITION="right" ID="ID_1525313152" CREATED="1284933950485" MODIFIED="1284933952548">
<node TEXT="ondemand" ID="ID_852197020" CREATED="1284933955624" MODIFIED="1284933958808">
<node ID="ID_755551132" CREATED="1284933994668" MODIFIED="1284934187803">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      get_cpu_idle_time: each time scheduling, the scheduler add the cpu time spent in user space and kernel space to the per cpu variable: kstat
    </p>
  </body>
</html></richcontent>
</node>
<node ID="ID_1758437110" CREATED="1284934329454" MODIFIED="1284934361233">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      sample load and change freq in a workque: kondemand_wq
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="OPP" ID="ID_1082546113" CREATED="1292393020227" MODIFIED="1292393022705">
<node ID="ID_1835843760" CREATED="1292393027274" MODIFIED="1292393075047">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Nishanth Menon's opp lib has been merged on Oct 13, 2010
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="hotplug" ID="ID_447683613" CREATED="1295456763483" MODIFIED="1295456766787">
<node TEXT="TI&apos;s hotplug governor: cpufreq_governor_dbs" ID="ID_886877839" CREATED="1295456770590" MODIFIED="1295456794935"/>
<node TEXT="actually, if only one CPU is running on near 100% load, two CPUs on do no harm." ID="ID_1517214946" CREATED="1299362862417" MODIFIED="1299362900711">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
<node TEXT="tmp" POSITION="left" ID="ID_1778085332" CREATED="1284066640591" MODIFIED="1284066648281">
<node TEXT="measure mp3 playback current drain" ID="ID_1754428784" CREATED="1284066649205" MODIFIED="1284066669224">
<node TEXT="the current drain in every volume level" ID="ID_100876109" CREATED="1284068735906" MODIFIED="1284068752169"/>
<node TEXT="d2we" ID="ID_260584931" CREATED="1284074051769" MODIFIED="1284074055755">
<node TEXT="user debug build" ID="ID_1054505756" CREATED="1284072232244" MODIFIED="1284072236506">
<node TEXT="1" ID="ID_1737004199" CREATED="1284076325535" MODIFIED="1284076327209">
<node TEXT="mute" ID="ID_1932467663" CREATED="1284074075038" MODIFIED="1284074077238"/>
<node TEXT="8 units" ID="ID_39544211" CREATED="1284074078345" MODIFIED="1284074081499"/>
</node>
<node TEXT="2" ID="ID_1908491852" CREATED="1284076334658" MODIFIED="1284076335564">
<node TEXT="mute" ID="ID_938027639" CREATED="1284076338910" MODIFIED="1284076340438"/>
<node TEXT="8 units" ID="ID_610528007" CREATED="1284076341665" MODIFIED="1284076345919"/>
</node>
<node TEXT="3" ID="ID_90633995" CREATED="1284076335915" MODIFIED="1284076336440">
<node TEXT="mute" ID="ID_1405535666" CREATED="1284076349950" MODIFIED="1284076351124"/>
<node TEXT="8 units" ID="ID_1920331718" CREATED="1284076352008" MODIFIED="1284076355167"/>
</node>
</node>
<node TEXT="user build" ID="ID_871507857" CREATED="1284066688570" MODIFIED="1284066692616">
<node TEXT="new devtree" ID="ID_1284919239" CREATED="1284077297929" MODIFIED="1284077301918">
<node TEXT="1" ID="ID_457701660" CREATED="1284076361249" MODIFIED="1284076396474">
<node TEXT="mute" ID="ID_1410922536" CREATED="1284074084431" MODIFIED="1284074085766"/>
<node TEXT="8 units" ID="ID_1628139106" CREATED="1284074086854" MODIFIED="1284074092911">
<node TEXT="50.77" ID="ID_1541158335" CREATED="1284077250355" MODIFIED="1284077253835"/>
</node>
</node>
<node TEXT="2" ID="ID_1107117281" CREATED="1284076380305" MODIFIED="1284076381257">
<node TEXT="mute" ID="ID_1229297628" CREATED="1284076404604" MODIFIED="1284076406037"/>
<node TEXT="8 units" ID="ID_1538824097" CREATED="1284076406774" MODIFIED="1284076410000">
<node TEXT="46.48" ID="ID_376274068" CREATED="1284077444248" MODIFIED="1284077446771"/>
</node>
</node>
<node TEXT="3" ID="ID_1435569051" CREATED="1284076383385" MODIFIED="1284076383813">
<node TEXT="mute" ID="ID_1271624006" CREATED="1284076411963" MODIFIED="1284076414019"/>
<node TEXT="8 units" ID="ID_19950399" CREATED="1284076414634" MODIFIED="1284076416897">
<node TEXT="45.83" ID="ID_1558053530" CREATED="1284077548139" MODIFIED="1284077550709"/>
</node>
</node>
</node>
<node TEXT="old devtree" ID="ID_1062842036" CREATED="1284077297929" MODIFIED="1284077331811">
<node TEXT="1" ID="ID_836846890" CREATED="1284076361249" MODIFIED="1284076396474">
<node TEXT="mute" ID="ID_1492043771" CREATED="1284074084431" MODIFIED="1284074085766"/>
<node TEXT="8 units" ID="ID_1672723797" CREATED="1284074086854" MODIFIED="1284074092911"/>
</node>
<node TEXT="2" ID="ID_1812313748" CREATED="1284076380305" MODIFIED="1284076381257">
<node TEXT="mute" ID="ID_1484875333" CREATED="1284076404604" MODIFIED="1284076406037"/>
<node TEXT="8 units" ID="ID_236613746" CREATED="1284076406774" MODIFIED="1284076410000"/>
</node>
<node TEXT="3" ID="ID_351120806" CREATED="1284076383385" MODIFIED="1284076383813">
<node TEXT="mute" ID="ID_400677989" CREATED="1284076411963" MODIFIED="1284076414019"/>
<node TEXT="8 units" ID="ID_15817606" CREATED="1284076414634" MODIFIED="1284076416897"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node TEXT="clock management 36xx" POSITION="left" ID="ID_417226575" CREATED="1284506073735" MODIFIED="1284506082546">
<node ID="ID_1696200714" CREATED="1284506104631" MODIFIED="1284506166647">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      CM__ICLKEN.EN_&lt;module&gt; control the interface clock unless CM_AUTOIDLE.AUTO_&lt;module&gt; is 1
    </p>
  </body>
</html></richcontent>
</node>
<node ID="ID_737735235" CREATED="1284506267037" MODIFIED="1284506342649">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      idle status register: CM_IDELST_&lt;domain_name&gt;
    </p>
    <p>
      
    </p>
    <p>
      The idle mode of any module can depend on the configuration of the CM_FCLKEN_&lt;domain_name&gt; and
    </p>
    <p>
      CM_ICLKEN_&lt;domain_name&gt; registers, or may be controlled automatically by hardware, depending on
    </p>
    <p>
      the configuration of the CM_AUTOIDLE_&lt;domain_name&gt; registers.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="cpu idle procedure" ID="ID_1510495699" CREATED="1284509326874" MODIFIED="1284509334901">
<node TEXT="omap3_enter_idle" ID="ID_1271455250" CREATED="1284509364882" MODIFIED="1284509377006">
<node TEXT="omap_sram_idle" ID="ID_161713093" CREATED="1284509619685" MODIFIED="1284509627172">
<node TEXT="_omap_sram_idle" ID="ID_1723369675" CREATED="1284509845604" MODIFIED="1284509850284">
<node ID="ID_28173939" CREATED="1284509881667" MODIFIED="1284509926108">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =omap_sram_push(omap34xx_cpu_suspend, omap34xx_cpu_suspend_sz)
    </p>
  </body>
</html></richcontent>
<node ID="ID_1570977147" CREATED="1284509956136" MODIFIED="1284509984121">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      omap34xx_cpu_suspend is assembly
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
<node TEXT="tools" POSITION="left" ID="ID_1606576127" CREATED="1285801410702" MODIFIED="1285801412870">
<node TEXT="powertop" ID="ID_127063882" CREATED="1285017645481" MODIFIED="1285017648399">
<node TEXT="two mode: dump and period" ID="ID_1283946129" CREATED="1285017653854" MODIFIED="1285017669012"/>
<node TEXT="modprobe cpufreq_stats" ID="ID_429746115" CREATED="1285017676472" MODIFIED="1285017692217"/>
<node TEXT="someone is maintaining powertop for android at http://gitorious.org/android/powertop" ID="ID_407499148" CREATED="1285801413815" MODIFIED="1285801437644"/>
</node>
<node TEXT="pytimechart" ID="ID_1292290287" CREATED="1285688117836" MODIFIED="1285688121976">
<node ID="ID_489093855" CREATED="1285688131658" MODIFIED="1285688202518">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      the perf and ftrace framework are used to generate the following events:
    </p>
    <ul>
      <li>
        cpuidle transitions to and from idle
      </li>
      <li>
        system suspend
      </li>
      <li>
        individual clocks enable, disable and set_rate
      </li>
      <li>
        cpufreq/DVFS transitions
      </li>
      <li>
        power domain transitions
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node TEXT="perf subsystem" ID="ID_1390279051" CREATED="1285692697989" MODIFIED="1285692701286">
<node TEXT="providing virtual 64 counters" ID="ID_86592980" CREATED="1285692702259" MODIFIED="1285692708868"/>
</node>
</node>
</node>
<node TEXT="for omap4" POSITION="left" ID="ID_560736061" CREATED="1289449089834" MODIFIED="1295624127143">
<node TEXT="hwmod" ID="ID_972469795" CREATED="1295284128245" MODIFIED="1295284130730">
<node TEXT="usb ohci" ID="ID_486919663" CREATED="1295624130047" MODIFIED="1295624135371"/>
</node>
</node>
</node>
</map>
