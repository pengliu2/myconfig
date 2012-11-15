<map version="0.9.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Motorola Power Management" ID="ID_1191565460" CREATED="1326059646823" MODIFIED="1350590236866">
<hook NAME="MapStyle" max_node_width="600"/>
<font NAME="SansSerif" SIZE="16" BOLD="false" ITALIC="false"/>
<node TEXT="testing" POSITION="right" ID="ID_59424259" CREATED="1326060249008" MODIFIED="1326060569176">
<node TEXT="daily current drain measurement" ID="ID_214766982" CREATED="1326060631190" MODIFIED="1326081210089">
<cloud WIDTH="0"/>
<node TEXT="pycat(the Python-based Current Automation Tool)" ID="ID_1820172310" CREATED="1326079949501" MODIFIED="1326079978874">
<node TEXT="We have to make it work with the new ICS interface" ID="ID_1196602273" CREATED="1326083006081" MODIFIED="1326083027480"/>
</node>
<node TEXT="pmdashboard" ID="ID_1933232011" CREATED="1326079999675" MODIFIED="1326080004859">
<node TEXT="We want pmdashboard to be updated automatically according to PyCat&apos;s results" ID="ID_1014431140" CREATED="1326083033775" MODIFIED="1326083231003"/>
</node>
</node>
<node TEXT="stress test" ID="ID_467193959" CREATED="1326060665431" MODIFIED="1326081323785" LINK="http://sourceforge.mot-mobility.com/git-home/?group_id=18677">
<cloud WIDTH="0"/>
<node TEXT="wake up the phone&#xa;randomly play with the phone&#xa;put the phone in suspend moe" ID="ID_101690296" CREATED="1326081385534" MODIFIED="1326081422517"/>
</node>
</node>
<node TEXT="team" POSITION="right" ID="ID_1466920791" CREATED="1347502843690" MODIFIED="1347502855141">
<node TEXT="meeting" ID="ID_322740509" CREATED="1347502857502" MODIFIED="1347502866622">
<node TEXT="Sep 12" ID="ID_143697342" CREATED="1347551551182" MODIFIED="1347551551184" LINK="Sep12.mm"/>
</node>
</node>
<node TEXT="bring-up" POSITION="right" ID="ID_1696730954" CREATED="1326060141904" MODIFIED="1326060203073">
<node TEXT="MSM8960" ID="ID_778212123" CREATED="1326060737313" MODIFIED="1326061311757">
<cloud COLOR="#00ff00" WIDTH="0"/>
<node TEXT="current drain measurement per QC release" ID="ID_1436560532" CREATED="1326060814107" MODIFIED="1326061085768" LINK="https://docs.google.com/a/motorola.com/spreadsheet/ccc?key=0AgB05NdtJ-vwdHZsWDd0dVN4Zi1mMjlYLS1uZjlQS1E">
<node TEXT="latest QC release is 1.0.2350&#xa;msm_otg (IKQCOMSD1-695) is preventing system wide suspend" ID="ID_1937439001" CREATED="1326079457702" MODIFIED="1326079847964"/>
</node>
<node TEXT="GPIO settings (following QC&apos;s advices to minimize leakage)" ID="ID_1641438903" CREATED="1326078695472" MODIFIED="1326079356617"/>
<node TEXT="suspend mode current drain breakdown" ID="ID_1032051286" CREATED="1326079863067" MODIFIED="1326079888155">
<node TEXT="this is blocked because latest daily build doesn&apos;t work on wingphone" ID="ID_1886631749" CREATED="1326079893911" MODIFIED="1326079936754">
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
</node>
<node TEXT="Spyder/ICS" ID="ID_322682795" CREATED="1326060745391" MODIFIED="1326061347650">
<cloud COLOR="#ffff00" WIDTH="0"/>
<node TEXT="Guojian is working on OFF mode" ID="ID_477941056" CREATED="1326078788869" MODIFIED="1326081271852">
<icon BUILTIN="help"/>
</node>
</node>
</node>
<node TEXT="debugging" POSITION="left" ID="ID_682897779" CREATED="1326060223293" MODIFIED="1326060245816">
<node TEXT="power event logging" ID="ID_858667581" CREATED="1326060594236" MODIFIED="1326080709945">
<cloud WIDTH="0"/>
<node TEXT="wakelock logging: to print long time wakelock after display-off" ID="ID_842751798" CREATED="1326079419973" MODIFIED="1326082619543">
<node TEXT="Mike and Ke working on this" ID="ID_1346381307" CREATED="1326081186405" MODIFIED="1326081256803">
<icon BUILTIN="help"/>
</node>
</node>
<node TEXT="wakeup source logging" ID="ID_1648876645" CREATED="1326080046974" MODIFIED="1326080052090">
<node TEXT="TI changed this part of logging so we have to adjust our tool to align it to the change" ID="ID_934626612" CREATED="1326081946769" MODIFIED="1326082581048">
<cloud COLOR="#ffff00" WIDTH="0"/>
</node>
</node>
<node TEXT="something missed on MSM8960" ID="ID_1383842259" CREATED="1326082933056" MODIFIED="1326082971030">
<cloud COLOR="#00ff00" WIDTH="0"/>
<node TEXT="CPU usage logging" ID="ID_733247669" CREATED="1326082633315" MODIFIED="1326082977858"/>
<node TEXT="Kernel timer logging" ID="ID_335885236" CREATED="1326082645141" MODIFIED="1326082992928"/>
<node TEXT="Scheduler logging" ID="ID_1376850468" CREATED="1326082660489" MODIFIED="1326082995408"/>
</node>
</node>
<node TEXT="log parser: to run on PC side to ease the interpreting of power management logs" ID="ID_314089538" CREATED="1326060694000" MODIFIED="1326081101588">
<node TEXT="MSM8960" ID="ID_1754156577" CREATED="1326080068154" MODIFIED="1326081038345" LINK="http://sourceforge.mot-mobility.com/git-home/?group_id=18677">
<cloud COLOR="#00ff00" WIDTH="0"/>
<node TEXT="done" ID="ID_753128724" CREATED="1326081111340" MODIFIED="1326081114109"/>
</node>
<node TEXT="Spyder/ICS" ID="ID_138552286" CREATED="1326080077013" MODIFIED="1326081150596">
<cloud COLOR="#ffff00" WIDTH="0"/>
<node TEXT="not started working on it yet" ID="ID_1226748954" CREATED="1326081051145" MODIFIED="1326081126092"/>
</node>
</node>
</node>
<node TEXT="energy monitor" POSITION="right" ID="ID_390216440" CREATED="1350582103492" MODIFIED="1350582109546">
<node TEXT="analysis" ID="ID_745746687" CREATED="1350582110364" MODIFIED="1350582116418">
<node TEXT="scripts" ID="ID_205683522" CREATED="1350582117204" MODIFIED="1350582122035">
<node TEXT="prerequisition" ID="ID_1581765667" CREATED="1350582427205" MODIFIED="1350582434874">
<node TEXT="automatically downloads logs &#xa;from blur service portal" ID="ID_1208133929" CREATED="1350582444075" MODIFIED="1351810362137">
<node TEXT="public account" ID="ID_1967738109" CREATED="1350586035755" MODIFIED="1350586561617"/>
<node TEXT="got the getbug script &#xa;for bug2go report pulling" ID="ID_628922021" CREATED="1351800134510" MODIFIED="1351810357294">
<node TEXT="requires python-requests, so hal01 is not suitable&#xa;10.04 doesn&apos;t have python-requests at all" ID="ID_958010087" CREATED="1351800483846" MODIFIED="1351810351487"/>
</node>
</node>
<node TEXT="a server or workstation working 7x24, Debian or Ubuntu" ID="ID_1197833722" CREATED="1350582459475" MODIFIED="1352131219988"/>
<node TEXT="development environment: Apache, PHP and PostgreSQL?" ID="ID_1302521620" CREATED="1352133130635" MODIFIED="1352133149089">
<node TEXT="nginx is supporting FastCGI" ID="ID_814328521" CREATED="1352135606117" MODIFIED="1352135617038"/>
</node>
<node TEXT="the server side script" ID="ID_1161934946" CREATED="1352140738525" MODIFIED="1352140746252">
<node TEXT="a configuration file to define which groups the script should pull from bug2go" ID="ID_1674672299" CREATED="1352140747037" MODIFIED="1352140769307"/>
</node>
<node TEXT="front-end" ID="ID_1124571876" CREATED="1352999675320" MODIFIED="1352999679147">
<node TEXT="apache2" ID="ID_1671603520" CREATED="1352999687768" MODIFIED="1352999689901"/>
<node TEXT="to enable php5 mod for apache2" ID="ID_393880813" CREATED="1352999691192" MODIFIED="1352999702952"/>
</node>
</node>
<node TEXT="designs" ID="ID_1336869057" CREATED="1350587444612" MODIFIED="1350587448386">
<node TEXT="Normal pattern and abnormal pattern" ID="ID_715932694" CREATED="1350587649980" MODIFIED="1350587677889">
<node TEXT="This is the most important part. We need to tell the script what are abnormal cases and must be reported" ID="ID_1408489779" CREATED="1350587679012" MODIFIED="1350587816295"/>
<node TEXT="We might want to investigate existing procedure. Now health team reviews data and create CR&apos;s" ID="ID_1800005419" CREATED="1350587829892" MODIFIED="1350587886111"/>
<node TEXT="several examples" ID="ID_829102897" CREATED="1350588002509" MODIFIED="1350588008073">
<node TEXT="Whenever display is turned off, but the phone doesn&apos;t enter deep sleep mode in a specific time interval, for example, 1 minute. We can even consider to make this time interval dynamic, and computed from all user trial logs. For example, if there are 1000 phones in user trial, there are at least 1000 logs submitted. The script goes through them, parses each display-off occurrence and reports the top 5% longest delays." ID="ID_1911999611" CREATED="1350588083755" MODIFIED="1350589758336"/>
<node TEXT="Thermal case. We can use the temperature integration of time as our meter. For example, calculate 5-minute temperate integration of time, every 1 minutes, when display is off, and also report the top 5%." ID="ID_1502600601" CREATED="1350590196134" MODIFIED="1350597315192"/>
</node>
<node TEXT="bug2go administration system" ID="ID_905684472" CREATED="1350597622679" MODIFIED="1350597649118">
<node TEXT="&quot;Bug2Go Administration System&#xa; &#xa;&#xa;   This system is a tool that provides the end user (a user trial participant or engineer) an efficient mechanism to &#xa;   provide performance and design feedback (defined as a &quot;Complaint Report) to the Motorola product development team. &#xa;   The client side application shall collect a set of predefined relevant logs and data points from the device and&#xa;   upload this information to the B2G server. The B2G server will execute some level of processing on the uploaded data&#xa;   and create a Jira issue with the uploaded/processed information. &quot;" ID="ID_1907636837" CREATED="1350597652431" MODIFIED="1350597655429"/>
<node TEXT="This URL open the download page for bug2go 2386365:&#xa;https://b2gadm-mcloud101-blur.svcmot.com/bugreport/viewBugreport.action?bg_id=2386365&#xa;&#xa;This page implements a mini form:&#xa;        &lt;form  action=&quot;downloadlog.action&quot; method=&quot;post&quot;&gt;&#xa;            &lt;input type=&quot;hidden&quot; name=&quot;bg_id&quot;  value=&quot;2386365&quot;&gt;&#xa;            &lt;div class=&quot;btn_left&quot;&gt; &lt;div class=&quot;btn_right&quot;&gt;&#xa;        &lt;input type=&quot;submit&quot; value=&quot;Download Device Logs&quot; class=&quot;bg_btn&quot;&gt;&#xa;&#xa;            &lt;/div&gt;&lt;/div&gt;&#xa;        &lt;/form&gt;&#xa;&#xa;We need to make our script to submit the form and download the file." ID="ID_1719647411" CREATED="1350598772729" MODIFIED="1350599255521"/>
<node TEXT="before we get the download script, we can use the &quot;batch download logs&quot; feature" ID="ID_794896243" CREATED="1350599398625" MODIFIED="1350599433557"/>
</node>
</node>
<node TEXT="&quot;Server-side EM data analyzer. We&apos;d have large amount of EM reports. A server-side analyzer is to go over them and send alert for any potential issue.&#xa;The server-side analyzer should include following components&#xa; - downloader, downloads logs from bug2go portal. Encapsulates the interface to bug2go portal website.&#xa;   - can get a bug ID list from bug2go portal base on a query string which filters only bugs we&apos;re interested in, for now it&apos;s A:Battery Discharge Summary&#xa;   - can download the bugs in the query result mentioned above&#xa; - extractor, extracts the EM data from bug2go report. This must be in line with the way how we pack EM data into bug2go report.&#xa; - parser, generates readable EM data files and summaries. This is developed separately because this is more associated to the EM itself.&#xa; - comparator, finds out potential issues from parsed EM data and summaries.&#xa; - frontend, represents the analysis results in various ways, such as emails, webpages and JIRA CR&apos;s.&#xa;&quot;" ID="ID_1022267849" CREATED="1352351833515" MODIFIED="1352351835129">
<node TEXT="downloader.py" ID="ID_1196244820" CREATED="1352351838113" MODIFIED="1352351843224">
<node TEXT="depends" ID="ID_1644170662" CREATED="1352351844193" MODIFIED="1352351849335">
<node TEXT="python-requests" ID="ID_465536127" CREATED="1352351850841" MODIFIED="1352351857887"/>
<node TEXT="python-xlrd" ID="ID_546535737" CREATED="1352351858777" MODIFIED="1352352652625"/>
</node>
</node>
</node>
</node>
<node TEXT="prototyping" ID="ID_1818564441" CREATED="1352824450508" MODIFIED="1352824454871">
<node TEXT="Collect all available EM data files" ID="ID_666215216" CREATED="1352824455737" MODIFIED="1352824476047"/>
<node TEXT="create a simple index db with product name, build#, file location" ID="ID_1433351991" CREATED="1352824479377" MODIFIED="1352824559729"/>
<node TEXT="" ID="ID_1424881651" CREATED="1352824535154" MODIFIED="1352824535154"/>
</node>
</node>
</node>
<node TEXT="interface to bug2go" ID="ID_1438076371" CREATED="1352419430866" MODIFIED="1352419437961">
<node TEXT="/sdcard/energy_monitor/backup/" ID="ID_1488559229" CREATED="1352419438803" MODIFIED="1352420036464"/>
<node TEXT="/sdcard/energy_monitor/trash/" ID="ID_1124978772" CREATED="1352420015620" MODIFIED="1352420034767"/>
<node TEXT="/sdcard/energy_monitor/20121108102839_energy.bin" ID="ID_1188914205" CREATED="1352419455857" MODIFIED="1352419477961"/>
</node>
<node TEXT="meeting Oct-23" ID="ID_1315372349" CREATED="1351009794029" MODIFIED="1351009814732">
<node TEXT="accept a text file as overall stats" ID="ID_483966259" CREATED="1351010765672" MODIFIED="1351010822920"/>
<node TEXT="send the sample report to Adam" ID="ID_592786881" CREATED="1351011163752" MODIFIED="1351011233081"/>
</node>
</node>
</node>
</map>
