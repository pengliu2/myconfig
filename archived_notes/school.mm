<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1284068756174" ID="ID_1850120971" MODIFIED="1284068765023" TEXT="school">
<node CREATED="1285452642875" ID="ID_285123883" MODIFIED="1285452651454" POSITION="left" TEXT="course project">
<node CREATED="1285452655477" ID="ID_395000160" MODIFIED="1285452659114" TEXT="alternative">
<node CREATED="1284090243991" ID="ID_1599356364" MODIFIED="1284090267786" TEXT="the project alternative: a smart kernel panic dumping"/>
<node CREATED="1284068839871" ID="ID_1228183191" MODIFIED="1284068869166" TEXT="the project alternative: back port run-time power management"/>
<node CREATED="1284068773352" ID="ID_800169169" MODIFIED="1284068838505" TEXT="the project alternative: the system behavior monitor. powertop+lttng+PC tool"/>
<node CREATED="1284091426648" ID="ID_65527218" MODIFIED="1284091456666" TEXT="the project alternative: the CPU emulator to verify PM framework">
<node CREATED="1284132631383" ID="ID_188851158" MODIFIED="1284132642185" TEXT="android emulator is based on qemu">
<node CREATED="1284132643471" ID="ID_766149012" MODIFIED="1284132974359">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      changes:
    </p>
    <p>
      
    </p>
    <p>
      - support for instruction level profiling and data cache simulation. this allows the emulator to generate &quot;profile&quot; files that can later be analyzed with external tools to provide accurate information about what's happending in the system.
    </p>
    <p>
      
    </p>
    <p>
      - changes in the dynamic code generators, mainly to support cocurrent generators in a single binary ( this allows us to different generators for profiling and non-profiling modes, and switch between them dynamically at runtime when needed).
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1284221238699" ID="ID_149039638" MODIFIED="1284221248581" TEXT="features of qemu">
<node CREATED="1284221797696" ID="ID_1593747968" MODIFIED="1284223233995" TEXT="Using dynamic translation to native code for reasonable speed - need to evaluate">
<icon BUILTIN="xmag"/>
</node>
<node CREATED="1284223154216" ID="ID_963122191" MODIFIED="1284223164580" TEXT="Full ARMv7 emulation"/>
<node CREATED="1284223175246" ID="ID_1967646127" MODIFIED="1284842474261" TEXT="NWFPE FPU support included in user Linux emulation"/>
<node CREATED="1284223185801" ID="ID_1124662895" MODIFIED="1284223229827" TEXT="Can run most ARM Linux binaries.">
<icon BUILTIN="xmag"/>
</node>
</node>
</node>
</node>
<node CREATED="1284842193459" ID="ID_54187665" MODIFIED="1284842203743" TEXT="course project / QEMU">
<node CREATED="1284232693632" ID="ID_579058293" MODIFIED="1284232695167" TEXT="my plan">
<node CREATED="1284232696112" ID="ID_730370828" MODIFIED="1284301511522" TEXT="read qemu code">
<node CREATED="1284301512790" ID="ID_459158520" LINK="http://www.usenix.org/publications/library/proceedings/usenix05/tech/freenix/full_papers/bellard/bellard_html/index.html" MODIFIED="1284301531385" TEXT="a paper">
<node CREATED="1284302555293" ID="ID_756411560" MODIFIED="1284302558832">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;&#160;* CPU emulator (currently x861, PowerPC, ARM and Sparc)
    </p>
    <p>
      &#160;&#160;&#160;&#160;* Emulated devices (e.g. VGA display, 16450 serial port, PS/2 mouse and keyboard, IDE hard disk, NE2000 network card, ...)
    </p>
    <p>
      &#160;&#160;&#160;&#160;* Generic devices (e.g. block devices, character devices, network devices) used to connect the emulated devices to the corresponding host devices
    </p>
    <p>
      &#160;&#160;&#160;&#160;* Machine descriptions (e.g. PC, PowerMac, Sun4m) instantiating the emulated devices
    </p>
    <p>
      &#160;&#160;&#160;&#160;* Debugger
    </p>
    <p>
      &#160;&#160;&#160;&#160;* User interface
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1284232701669" ID="ID_1839721949" MODIFIED="1284233163513" TEXT="the C states">
<node CREATED="1284233477885" ID="ID_1543370731" MODIFIED="1284233616587" TEXT="the OMAP3 power">
<node CREATED="1284233617686" ID="ID_520095535" MODIFIED="1284233673928">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      power state (only&#160;for MPU and CORE domains)
    </p>
    <p>
      will scale to a given power state
    </p>
    <p>
      (ON/ACTIVE, INACTIVE, RETENTION (CSWR, OSWR) or OFF)
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1284233714492" ID="ID_1724395595" MODIFIED="1284233717885" TEXT="power domain"/>
<node CREATED="1284233727616" ID="ID_664932675" MODIFIED="1284233730492" TEXT="voltage domain"/>
<node CREATED="1284233730849" ID="ID_1343366609" MODIFIED="1284233735142" TEXT="clock domain"/>
</node>
<node CREATED="1284233491829" ID="ID_166885033" MODIFIED="1284233509213">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      C-State is a linux SW combination of MPU and CORE power domains states during idle
    </p>
    <p>
      period
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1284842205477" ID="ID_767699149" MODIFIED="1284842207807" TEXT="QEMU">
<node CREATED="1284229873947" ID="ID_1496611315" MODIFIED="1284229877108" TEXT="qemu internal">
<node CREATED="1284229878250" ID="ID_1066121876" MODIFIED="1284229879443" TEXT="The basic idea is to split every target instruction into a couple of RISC-like TCG ops (see target-i386/translate.c)."/>
<node CREATED="1284230187557" ID="ID_1256804783" MODIFIED="1284230230837" TEXT="My computer has an Intel T5600 CPU , which supports VT-x"/>
</node>
<node CREATED="1284842230870" ID="ID_547034131" MODIFIED="1284842233259" TEXT="capability">
<node CREATED="1284842279500" ID="ID_693075431" MODIFIED="1284842297110" TEXT="other tools">
<node CREATED="1284842297800" ID="ID_794970709" MODIFIED="1284842300437" TEXT="skyeye">
<node CREATED="1284842372989" ID="ID_1571913626" MODIFIED="1284842380565" TEXT="OMAP is not supported"/>
<node CREATED="1284842394176" ID="ID_97197481" MODIFIED="1284842402742" TEXT="Even cortex is not supported"/>
</node>
</node>
<node CREATED="1284842445728" ID="ID_1678340015" LINK="http://developer.android.com/guide/developing/tools/emulator.html#limitations" MODIFIED="1284842517801">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      from the link
    </p>
    <p>
      &#160;&#160;&#160;&#160;*&#160;&#160;No support for placing or receiving actual phone calls. You can simulate phone calls (placed and received) through the emulator console, however.
    </p>
    <p>
      &#160;&#160;&#160;&#160;* No support for USB connections
    </p>
    <p>
      &#160;&#160;&#160;&#160;* No support for camera/video capture (input).
    </p>
    <p>
      &#160;&#160;&#160;&#160;* No support for device-attached headphones
    </p>
    <p>
      &#160;&#160;&#160;&#160;* No support for determining connected state
    </p>
    <p>
      &#160;&#160;&#160;&#160;* No support for determining battery charge level and AC charging state
    </p>
    <p>
      &#160;&#160;&#160;&#160;* No support for determining SD card insert/eject
    </p>
    <p>
      &#160;&#160;&#160;&#160;* No support for Bluetooth
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1286423418972" ID="ID_1120296584" MODIFIED="1286423421598" POSITION="right" TEXT="lectures">
<node CREATED="1287454155332" ID="ID_1771689793" MODIFIED="1287454162517" TEXT="10/18: virtualization">
<node CREATED="1287456541075" ID="ID_542301640" MODIFIED="1287456543364" TEXT="two readings"/>
<node CREATED="1287457107656" ID="ID_1891273482" MODIFIED="1287457117194" TEXT="paravirtualization diagram"/>
<node CREATED="1287457135065" ID="ID_1681980990" MODIFIED="1287457145501" TEXT="cache/TLB synchronization"/>
<node CREATED="1287457212560" ID="ID_292353194" MODIFIED="1287457222247" TEXT="talk outline questions">
<icon BUILTIN="yes"/>
</node>
</node>
<node CREATED="1287286268900" ID="ID_1479632229" MODIFIED="1287286334683" TEXT="10/15: OS design">
<node CREATED="1287286748885" ID="ID_209895522" MODIFIED="1287289401402">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      difficulties: naming
    </p>
    <p>
      binding: late binging memory: easy to share
    </p>
    <p>
      networking
    </p>
    <p>
      
    </p>
    <p>
      early binding could be secure
    </p>
    <p>
      
    </p>
    <p>
      dynamic binding pid to pcb ?
    </p>
    <p>
      questionaire?
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1286856426766" ID="ID_752556524" MODIFIED="1286856486113" TEXT="10/11: network"/>
<node CREATED="1286851419221" ID="ID_518218166" MODIFIED="1286851428780" TEXT="10/08:network">
<node CREATED="1286851429600" ID="ID_693066927" MODIFIED="1286851447643" TEXT="either net: CSMA/CD, package size"/>
<node CREATED="1286852338960" ID="ID_103001425" MODIFIED="1286852361183" TEXT="p2p network instead of bus network because of easy mantainence"/>
<node CREATED="1286852511476" ID="ID_542703933" MODIFIED="1286852529536" TEXT="low bandwidth network: break the IP packages"/>
<node CREATED="1286855921321" ID="ID_800699661" MODIFIED="1286855998254" TEXT="TCP provides: flow control, reliable connection, congestion control, , demultiplex"/>
<node CREATED="1286856082845" ID="ID_1670925141" MODIFIED="1286856088401" TEXT="16b in IPv4 for port"/>
</node>
<node CREATED="1286423422423" ID="ID_1391312841" MODIFIED="1286424383489" TEXT="10/06: review the mid-term"/>
<node CREATED="1286423443778" ID="ID_683296109" MODIFIED="1286424386006" TEXT="10/01: prepare for the mid-term"/>
<node CREATED="1286424371892" ID="ID_767690586" MODIFIED="1286424394513" TEXT="09/29: network introduction"/>
<node CREATED="1286424499008" ID="ID_833212268" MODIFIED="1286424508017" TEXT="09/27: filesystem"/>
</node>
<node CREATED="1286935988761" ID="ID_60120706" MODIFIED="1286936005142" POSITION="right" TEXT="OS design">
<node CREATED="1286936025817" ID="ID_1020936826" MODIFIED="1286936038320" TEXT="chapter 13 design"/>
</node>
<node CREATED="1287544874230" ID="ID_377172103" MODIFIED="1287544881150" POSITION="left" TEXT="machine problems">
<node CREATED="1286652669878" FOLDED="true" ID="ID_531204844" MODIFIED="1286652672641" TEXT="MP2">
<node CREATED="1286661010657" ID="ID_610440228" MODIFIED="1286661014094" TEXT="requirements">
<node CREATED="1286652692285" ID="ID_873071777" MODIFIED="1286652696807">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;&#160;*&#160;&#160;TThread, a wrapper class of the PThread functions.
    </p>
    <p>
      &#160;&#160;&#160;&#160;* TMutics, a wrapper class of the PThread mutex.
    </p>
    <p>
      &#160;&#160;&#160;&#160;* TCondition, a wrapper class of the PThread condition variable.
    </p>
    <p>
      &#160;&#160;&#160;&#160;* TJob, a job to be stored in the job queue.
    </p>
    <p>
      &#160;&#160;&#160;&#160;* TPoolThr, a thread that runs inside the thread pool.
    </p>
    <p>
      &#160;&#160;&#160;&#160;* TThreadPool, main class that provides the interface for submitting jobs for running.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1286653542963" ID="ID_654624254" MODIFIED="1286653545603">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The thread pool you are implementing differs from the reference implementation most significantly in that, instead of looking for an idle thread to execute the job directly, the thread pool Run enqueues the job on the job queue and returns to the caller immediately.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1286653191993" ID="ID_1793027534" MODIFIED="1286653197378">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      You need to provide your tests for the thread pool to make sure it is working properly and synchronizing properly.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1286652755289" ID="ID_1453155904" MODIFIED="1286652759529">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      your thread pool provides the API and must have the functionality listed below:
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;1. Constructor. This method has an argument specifying the maximum number of worker threads.
    </p>
    <p>
      &#160;&#160;&#160;2. Run. This method takes in a TJob object, optional arguments, and adds the job to the job queue.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1286661029320" ID="ID_1586465285" MODIFIED="1286661030697" TEXT="design">
<node CREATED="1286661244372" ID="ID_1486896095" MODIFIED="1286661257253" TEXT="TThreadPool is the interface">
<node CREATED="1286661299198" ID="ID_105279747" MODIFIED="1286661314205" TEXT="has a TPoolThread to maintain the queue"/>
<node CREATED="1286661559451" ID="ID_228776624" MODIFIED="1286680180648">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      run() to add a new job. It needs to hold a mutex and put the job in the queue, and wake up the TPoolThread, with a condition.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1286678543297" ID="ID_1004081310" MODIFIED="1286678581506" TEXT="TThreadPool shall know once a TThread finishs current TJob, and then dispatch a new to it."/>
</node>
<node CREATED="1286663112579" ID="ID_586810358" MODIFIED="1286679285567" TEXT="TPoolThread is derived from TThread">
<node CREATED="1286680186803" ID="ID_669989983" MODIFIED="1287116174057">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <strike>It waits on a condition. ONce waken up, it&#160;holds the mutex of job queue, picks up a job and gives it to a thread. If there is no thread? It waiting for the thread queue. </strike>
    </p>
    <p>
      
    </p>
    <p>
      <strike>It seems not matter whether it first waits for the jobs and then threads or vice versa. But at the beginning, it needs to wait for the jobs because we're sure that threads are all idle. </strike>
    </p>
    <p>
      
    </p>
    <p>
      <strike>So it can be the TPoolThread waits for the job condition, Once get a job, it then waits for the thread condition for an idle thread. But how about the job cancelling? It should be fine the user cancels the job directly. Because once TPoolThread gets a thread, it will hold the thread mutex and try to deque the job, but because the job has been cancelled, it just finds the job queue is empty again, so it releases the thread mutex and waits for another job.</strike>
    </p>
    <p>
      
    </p>
    <p>
      There may not be a control Thread. The client call ThreadPool.run_job to append a job, and then wake up the threads waiting on the condition.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1286678248952" ID="ID_1712223502" MODIFIED="1286678251481" TEXT="base">
<node CREATED="1286678310266" ID="ID_864746271" MODIFIED="1286678519619">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      procedure insert(item: integer);
    </p>
    <p>
      begin
    </p>
    <p>
      &#160;&#160;&#160;&#160;if count = N then wait(full);
    </p>
    <p>
      &#160;&#160;&#160;&#160;insert_item(item);
    </p>
    <p>
      &#160;&#160;&#160;&#160;count := count + 1;
    </p>
    <p>
      &#160;&#160;&#160;&#160;if count = 1 then signal(empty);
    </p>
    <p>
      end;
    </p>
    <p>
      
    </p>
    <p>
      function remove: integer;
    </p>
    <p>
      begin
    </p>
    <p>
      &#160;&#160;&#160;&#160;if count = 0 then wait(empty);
    </p>
    <p>
      &#160;&#160;&#160;&#160;remove = remove_item;
    </p>
    <p>
      &#160;&#160;&#160;&#160;count := count - 1;
    </p>
    <p>
      &#160;&#160;&#160;&#160;if count = N -1 then signal(full)
    </p>
    <p>
      end;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1285452608509" FOLDED="true" ID="ID_1094456619" MODIFIED="1285452624767" TEXT="mp1: schedule, scheduling, scheduler">
<node CREATED="1285452738110" ID="ID_1869884813" MODIFIED="1285452759205" TEXT="__setscheduler()"/>
<node CREATED="1287461085213" ID="ID_1487272777" MODIFIED="1287461087207" TEXT="interview">
<node CREATED="1287461543252" ID="ID_236496709" MODIFIED="1287461672364" TEXT="In the first diagram, I let the emulator be. It seems all the processes are CFS processes. That means, the processes is scheduled by the CFS scheduler."/>
<node CREATED="1287461966715" ID="ID_487788482" MODIFIED="1287462060777" TEXT="The web browsing didn&apos;t introduce real time processes, probably because the web browsing is not considered an real time task."/>
<node CREATED="1287462061952" ID="ID_796504857" MODIFIED="1287462124792" TEXT="In the phone call experiment, there is an non CFS process introduced."/>
</node>
</node>
<node CREATED="1287544914162" ID="ID_572631048" MODIFIED="1287544915499" TEXT="mp3">
<node CREATED="1287545022196" ID="ID_1037279306" MODIFIED="1287545028066" TEXT="requests">
<node CREATED="1287545028724" ID="ID_1262796618" MODIFIED="1287545047992">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      in page_referenced print
    </p>
    <p>
      *** Beginning page_referenced() ***
    </p>
    <p>
      jiffies is: 4294947688
    </p>
    <p>
      number of referenced anonymous pages is: 0
    </p>
    <p>
      number of referenced file pages is: 6
    </p>
    <p>
      page_referenced() is returning: 6
    </p>
    <p>
      *** Ending page_referenced() ***
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1287545116055" ID="ID_1276631991" MODIFIED="1287545136392">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      in shrink_list print
    </p>
    <p>
      *** Beginning shrink_list() ***
    </p>
    <p>
      jiffies is: 4294946768
    </p>
    <p>
      lru is: LRU_INACTIVE_FILE
    </p>
    <p>
      memory zone is: Normal
    </p>
    <p>
      swappiness is: 60
    </p>
    <p>
      priority is: 8
    </p>
    <p>
      shrink_inactive_list() called
    </p>
    <p>
      shrink_list() is returning: 26
    </p>
    <p>
      *** Ending shrink_list() ***
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1287545158239" ID="ID_676157473" MODIFIED="1287545190291">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      in try_to_free_pages() and do_try_to_free_pages print
    </p>
    <p>
      *** Beginning try_to_free_pages() ***
    </p>
    <p>
      *** Beginning do_try_to_free_pages() ***
    </p>
    <p>
      memory zones are: Normal |
    </p>
    <p>
      jiffies is: 4294951698 | priority is: 12 | total_scanned is: 0 | nr_reclaimed is: 0
    </p>
    <p>
      jiffies is: 4294951698 | priority is: 11 | total_scanned is: 0 | nr_reclaimed is: 0
    </p>
    <p>
      jiffies is: 4294951698 | priority is: 10 | total_scanned is: 0 | nr_reclaimed is: 0
    </p>
    <p>
      jiffies is: 4294951698 | priority is: 9 | total_scanned is: 0 | nr_reclaimed is: 0
    </p>
    <p>
      jiffies is: 4294951698 | priority is: 8 | total_scanned is: 0 | nr_reclaimed is: 0
    </p>
    <p>
      jiffies is: 4294951698 | priority is: 7 | total_scanned is: 108 | nr_reclaimed is: 60
    </p>
    <p>
      *** Ending do_try_to_free_pages() ***
    </p>
    <p>
      try_to_free_pages() is returning: 60
    </p>
    <p>
      *** Ending try_to_free_pages() ***
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1287545754724" ID="ID_1947362747" MODIFIED="1287545758012" TEXT="readings">
<node CREATED="1287545758868" ID="ID_951571196" MODIFIED="1287545775703">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Tanenbaum: Chapter 3.
    </p>
    <p>
      Love: Chapters 12, 15, 16.
    </p>
    <p>
      Bovet and Cesati: Chapters 2, 8, 9, 15, 17.
    </p>
    <p>
      http://proquest.safaribooksonline.com.proxy2.library.uiuc.edu/0596005652
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</node>
</map>
