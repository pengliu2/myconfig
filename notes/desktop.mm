<map version="0.9.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="DeskTop" ID="ID_159129988" CREATED="1286997745036" MODIFIED="1286997747770">
<hook NAME="MapStyle" max_node_width="600"/>
<node TEXT="mutt" POSITION="left" ID="ID_1153001769" CREATED="1287961812928" MODIFIED="1287961816769">
<node TEXT="keybind: F: important=gmail starred" ID="ID_1500640842" CREATED="1287961817527" MODIFIED="1287961834158"/>
<node TEXT="mailbox:GmailImportant=Priority" ID="ID_797322112" CREATED="1287961837255" MODIFIED="1287961863460"/>
<node TEXT="keybind: s: save to mailbox = gmail label" ID="ID_318857814" CREATED="1287962551801" MODIFIED="1287962572899"/>
</node>
<node TEXT="vim" POSITION="left" ID="ID_5976134" CREATED="1295752060473" MODIFIED="1295752061651">
<node TEXT="line length or line wrapper" ID="ID_132077844" CREATED="1295752062709" MODIFIED="1295752070467">
<node TEXT=" :set textwidth=72&#xa;gq}" ID="ID_1621957071" CREATED="1295752109203" MODIFIED="1331862679042"/>
</node>
</node>
<node TEXT="MS office" POSITION="left" ID="ID_532618543" CREATED="1301854448852" MODIFIED="1301854455322">
<node TEXT="in editing state:&#xa;insert-&gt;movie and sound-&gt;record" ID="ID_345991526" CREATED="1301854456149" MODIFIED="1301854538663"/>
<node TEXT="in playing state:&#xa;slide show -&gt;insert narriation" ID="ID_878618569" CREATED="1301854539322" MODIFIED="1301854599847"/>
</node>
<node TEXT="disk rescue" POSITION="right" ID="ID_1189097678" CREATED="1290837159945" MODIFIED="1290837170461">
<node TEXT="gparted live cd" ID="ID_886386893" CREATED="1290837171963" MODIFIED="1290837183721">
<node TEXT="testdisk: to scan for lost partitions" ID="ID_1064818184" CREATED="1290837184559" MODIFIED="1290837201675"/>
<node TEXT="ntfsclone: to backup and restore ntfs partitions" ID="ID_1475822978" CREATED="1290837209985" MODIFIED="1290837237623"/>
<node TEXT="sfdisk: to back mbr" ID="ID_1262912758" CREATED="1290837240658" MODIFIED="1290837246493"/>
</node>
<node TEXT="acer recovery disk: a single partition" ID="ID_1857453945" CREATED="1290837254868" MODIFIED="1290837269897"/>
<node TEXT="ntfsclone" ID="ID_261886760" CREATED="1290877313224" MODIFIED="1290877317496"/>
<node TEXT="sfdisk to back up the mbr" ID="ID_262711000" CREATED="1290877318259" MODIFIED="1290877345967"/>
</node>
<node TEXT="mouse and key swapping" POSITION="right" ID="ID_1802971139" CREATED="1301190744445" MODIFIED="1301852771866">
<node TEXT="In ubuntu /usr/lib/X11/xorg.conf.d" ID="ID_612531929" CREATED="1301190748631" MODIFIED="1301190791612"/>
<node TEXT="or using Xmodmap" ID="ID_629474324" CREATED="1301190801032" MODIFIED="1301190807164"/>
<node TEXT="Remapping Mouse Buttons&#xa;&#xa;Throughout this book, each description of a mouse click refers to the button by its position (left, middle, or right, with left implied when no button is specified) because the position of a mouse button is more intuitive than an arbitrary name or number. X terminology numbers buttons starting at the left and continuing with the mouse wheel. The buttons on a three-button mouse are numbered 1 (left), 2 (middle), and 3 (right). A mouse wheel, if present, is 4 (rolling it up) and 5 (rolling it down). Clicking the wheel is equivalent to clicking the middle mouse button. The buttons on a two-button mouse are 1 (left) and 2 (right).&#xa;&#xa;If you are right-handed, you can conveniently press the left mouse button with your index finger; X programs take advantage of this fact by relying on button 1 for the most common operations. If you are left-handed, your index finger rests most conveniently on button 2 or 3 (the right button on a two- or three-button mouse).&#xa;&#xa;To exchange the functions of the left and right mouse buttons when you are running GNOME, from the panel at the top of the window select System: Preferences Mouse (RHEL uses Applications: Preferences Mouse) and put a check mark in the box labeled Left-handed mouse. From KDE choose Main menu: Control Center Peripherals Mouse and select Left handed from the General tab.&#xa;&#xa;You can also change how X interprets the mouse buttons by using xmodmap. If you are left-handed and using a three-button mouse with a wheel, the following command causes X to interpret the right button as button 1 and the left button as button 3:&#xa;&#xa;$ xmodmap -e &apos;pointer = 3 2 1 4 5&apos;&#xa;&#xa;&#xa;Omit the 4 and 5 if the mouse does not have a wheel. The following command works for a two-button mouse without a wheel:&#xa;&#xa;$ xmodmap -e &apos;pointer = 2 1&apos;&#xa;&#xa;&#xa;If xmodmap displays an error message complaining about the number of buttons, use the pp option to xmodmap to display the number of buttons that X has defined for the mouse:&#xa;&#xa;$ xmodmap -pp&#xa;There are 9 pointer buttons defined.&#xa;&#xa;    Physical        Button&#xa;     Button          Code&#xa;        1               1&#xa;        2               2&#xa;        3               3&#xa;        4               4&#xa;        5               5&#xa;        6               6&#xa;        7               7&#xa;        8               8&#xa;        9               9&#xa;&#xa;&#xa;Then expand the previous command, adding numbers to complete the list. If the pp option shows nine buttons, give the following command:&#xa;&#xa;$ xmodmap -e &apos;pointer = 3 2 1 4 5 6 7 8 9&apos;&#xa;&#xa;&#xa;Changing the order of the first three buttons is critical to making the mouse suitable for a left-handed user. When you remap the mouse buttons, remember to reinterpret the descriptions in this book accordingly. When this book asks you to click the left button, or does not specify a button to click, use the right button, and vice versa." ID="ID_1217206212" CREATED="1301852773136" MODIFIED="1301852776901"/>
<node TEXT="xkb_options in /usr/share/X11/" ID="ID_1062721761" CREATED="1302397571085" MODIFIED="1302397596521"/>
<node TEXT="keymap:&#xa;dmesg | grep Microsoft&#xa;to get a key raw code: keymap -i input/event6&#xa;&#xa;keymap file in /lib/udev/keymaps" ID="ID_820066665" CREATED="1302397605894" MODIFIED="1302397663566"/>
<node TEXT="evtest is to capture raw key event input" ID="ID_1536802055" CREATED="1314373034450" MODIFIED="1314373050590"/>
<node TEXT="xev is to capture X key event" ID="ID_890133525" CREATED="1314373051586" MODIFIED="1314373060039"/>
</node>
<node TEXT="xinput configuration" POSITION="right" ID="ID_463117385" CREATED="1304081826739" MODIFIED="1304081834417">
<node TEXT="disable mouse or disable touchpad" ID="ID_974901907" CREATED="1304081835202" MODIFIED="1304081848239">
<node TEXT="http://unix.stackexchange.com/questions/4469/disable-mouse-not-touchpad-in-xorg-while-idle" ID="ID_227954108" CREATED="1304081849426" MODIFIED="1304081856751"/>
<node TEXT="xinput list&#xa;xinput list-props &quot;AlpsPS/a ALPS DualPoint TouchPad&quot;&#xa;xinput set-prop &quot;AlpsPS/2 ALPS DualPoint TouchPad&quot; &quot;Device Enabled&quot; 0" ID="ID_1109683868" CREATED="1304081866698" MODIFIED="1304081895047"/>
</node>
</node>
<node TEXT="expand to two monitors&#xa;xrandr --output LVDS1 --primary --auto --rotate normal --pos 0x0 --output VGA1 --auto --rotate normal --right-of LVDS1&#xa;back to one monitor&#xa;xrandr --output VGA1 --off" POSITION="right" ID="ID_388908387" CREATED="1305568618525" MODIFIED="1305596717166"/>
<node TEXT="firefox" POSITION="left" ID="ID_1454072227" CREATED="1307719224574" MODIFIED="1307719226953">
<node TEXT="pentadacyl" ID="ID_1089221318" CREATED="1307719227976" MODIFIED="1307719231838">
<node TEXT="passthrough key" ID="ID_44583076" CREATED="1307719232712" MODIFIED="1307719239236">
<node TEXT=":set passkeys+=&apos;https://www\.google\.com/reader&apos;:jkv&#xa;:set passkeys+=&apos;https://mail\.google\.com/&apos;:xljkroae&lt;CR&gt;,gi&#xa;:mkp!" ID="ID_374163404" CREATED="1307719239928" MODIFIED="1307720479447"/>
<node TEXT=":set passkeys=mail.google.com:xljke&lt;CR&gt;,gi&#xa;:set passkeys+=www.google.com/reader:jkv&#xa;:mkp!" ID="ID_1616275678" CREATED="1307719239928" MODIFIED="1313678665528"/>
</node>
</node>
</node>
<node TEXT="screen" POSITION="right" ID="ID_1488802927" CREATED="1320193655909" MODIFIED="1320193657571">
<node TEXT="C-s doesn&apos;t work issue: C-z f" ID="ID_188161656" CREATED="1320194547366" MODIFIED="1320194563956"/>
</node>
<node TEXT="elitebook 8540w" POSITION="left" ID="ID_1820541567" CREATED="1346468635762" MODIFIED="1346468647178">
<node TEXT="download the new firmware from linuxwireless.org into /lib/firmware/" ID="ID_1564916921" CREATED="1346468655414" MODIFIED="1346468678638"/>
<node TEXT="Suggestion: increase the VM dirty writeback time from 5.00 to 15 seconds with:&#xa;  echo 1500 &gt; /proc/sys/vm/dirty_writeback_centisecs" ID="ID_812750192" CREATED="1346599094190" MODIFIED="1346599111986"/>
<node TEXT="Suggestion: Disable &apos;hal&apos; from polling your cdrom with:  &#xa;hal-disable-polling --device /dev/cdrom" ID="ID_550344007" CREATED="1346599681821" MODIFIED="1346599683343"/>
<node TEXT="Suggestion: Enable USB autosuspend by pressing the U key or adding &#xa;usbcore.autosuspend=1 to the kernel command line in the grub config: edit /etc/default/grub and add the new parameter to GRUB_CMDLINE_LINUX_DEFAULT=&quot;quiet&quot;" ID="ID_1293295406" CREATED="1346599742847" MODIFIED="1347414888987"/>
</node>
</node>
</map>
