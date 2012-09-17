<map version="0.9.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Motorola Power Management" ID="ID_1191565460" CREATED="1326059646823" MODIFIED="1326060113687">
<hook NAME="MapStyle" layout="OUTLINE" max_node_width="600"/>
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
<node TEXT="debugging" POSITION="right" ID="ID_682897779" CREATED="1326060223293" MODIFIED="1326060245816">
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
<node TEXT="Sep 12" ID="ID_1299282118" CREATED="1347502868522" MODIFIED="1347502874078">
<node TEXT="8960pro" ID="ID_1634464241" CREATED="1347502877981" MODIFIED="1347503094324">
<node TEXT="getting started in 3 weeks" ID="ID_1514380196" CREATED="1347504323837" MODIFIED="1347504334588"/>
<node TEXT="2.0G. It could be very hot. We will consider to improve the thermal daemon" ID="ID_395511282" CREATED="1347503097296" MODIFIED="1347503261158"/>
<node TEXT="too many wake-ups" ID="ID_1201176601" CREATED="1347503317681" MODIFIED="1347503323160">
<node TEXT="pm8xxxx_usr_irq: might be alarm wake-up" ID="ID_1136189663" CREATED="1347503330611" MODIFIED="1347503356551"/>
<node TEXT="might need a better way to log PMIC wake-up reason. To log the wakeup wakelock can be a solution" ID="ID_183555672" CREATED="1347503444296" MODIFIED="1347503528328"/>
<node TEXT="try to get wake-up sources from RPM side as well" ID="ID_811042300" CREATED="1347503571721" MODIFIED="1347503587639"/>
</node>
</node>
<node TEXT="JB primatives consolidating" ID="ID_547583429" CREATED="1347503262130" MODIFIED="1347503277235"/>
<node TEXT="EM" ID="ID_1218513844" CREATED="1347504147832" MODIFIED="1347504154892">
<node TEXT="a meeting later this week to discuss the data structue" ID="ID_1573117573" CREATED="1347504156988" MODIFIED="1347504175469"/>
<node TEXT="the longest background wakelock logs?" ID="ID_409218669" CREATED="1347504176826" MODIFIED="1347504186904"/>
</node>
<node TEXT="Atom" ID="ID_1027135546" CREATED="1347504195544" MODIFIED="1347504209022">
<node TEXT="JB patches have been in the base line, smi-jb line" ID="ID_1506858671" CREATED="1347504233819" MODIFIED="1347504263705"/>
<node TEXT="We have deep dive session" ID="ID_516967052" CREATED="1347504353272" MODIFIED="1347504366414"/>
<node TEXT="To port interactive governor and other PM facilities" ID="ID_1570072819" CREATED="1347504423206" MODIFIED="1347504450041"/>
</node>
<node TEXT="Sleep feature" ID="ID_5016836" CREATED="1347504601910" MODIFIED="1347504613905">
<node TEXT="needs an interface to provide active wakelock information" ID="ID_1181530993" CREATED="1347504629655" MODIFIED="1347504683914"/>
<node TEXT="will discuss the possibility to make a new design with FW team" ID="ID_347176466" CREATED="1347504768391" MODIFIED="1347504806796"/>
</node>
</node>
</node>
</node>
</node>
</map>
