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
<node TEXT="Sep 12" ID="ID_143697342" CREATED="1347551551182" MODIFIED="1347551551184" LINK="Sep12.mm"/>
</node>
</node>
</node>
</map>
