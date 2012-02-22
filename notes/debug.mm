<map version="0.9.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="debug" ID="ID_1900240704" CREATED="1304982069517" MODIFIED="1304982072121">
<hook NAME="MapStyle" max_node_width="600"/>
<node TEXT="logging" POSITION="right" ID="ID_728726814" CREATED="1304982073385" MODIFIED="1304982110619" LINK="logging%20system.mm"/>
<node TEXT="nohup and disown" POSITION="left" ID="ID_386956211" CREATED="1304982113137" MODIFIED="1304982125582"/>
<node TEXT="gdb" POSITION="right" ID="ID_918490720" CREATED="1305061392205" MODIFIED="1305061395113">
<node TEXT="change standard output by gdb" ID="ID_355088556" CREATED="1304982134570" MODIFIED="1304982144166">
<node ID="ID_989969285" CREATED="1304982144786" MODIFIED="1304982221701">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      touch /tmp/stdout
    </p>
    <p>
      touch /tmp/stderr
    </p>
    <p>
      gdb -p &lt;pid&gt;<br/>p dup2(open(&quot;/tmp/stdout&quot;,1),1)
    </p>
    <p>
      p dup2(open(&quot;/tmp/stderr&quot;,1),2)
    </p>
    <p>
      detach
    </p>
    <p>
      quit<br/>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="**** forward network connection" ID="ID_1267640706" CREATED="1305061399339" MODIFIED="1305061454380">
<node TEXT=" - In putty, host name is where you want to debug the remote device. &#xa; - In Connection-&gt;SSH-&gt;Tunnels, enable =Local ports accept connections from other hosts=.&#xa; - Add a forwarded port device_ip:9000. &#xa; - In host, use 9000 to debug remote device." ID="ID_267004061" CREATED="1305061455555" MODIFIED="1305061456629"/>
<node TEXT="use openssh" ID="ID_738955681" CREATED="1305061461395" MODIFIED="1305061470848"/>
<node TEXT="ssh -L 8118:192.168.12.2:9000 peng@10.22.61.226 -N -v&#xa;&#xa;the phone is connected to 10.22.61.226&#xa;the usblan ip address of the phone is 192.168.12.2&#xa;on the phone side: gdbserver :9000 --attach &lt;pid&gt;&#xa;&#xa;on remote side: gdb&gt;target remote :8118" ID="ID_1664573035" CREATED="1305069062957" MODIFIED="1305127560387"/>
</node>
<node TEXT="shared library" ID="ID_1112829360" CREATED="1305135006930" MODIFIED="1305135040030" LINK="http://linux-mobile-hacker.blogspot.com/2008/02/debug-shared-library-with-gdbserver.html">
<node TEXT="**** load shared library&#xa;&#xa; - set solib-search-path &lt;path&gt; or set sysroot. This should be the fakeroot in host machine.&#xa;&#xa; - Android system defines the linker as /system/bin/linker, so we have to =set solib-absolute-prefix &lt;where the symbol files created&gt;. This can be a list seperated by :, in each folder GDB just searchs for the shared libraries basename." ID="ID_1402963828" CREATED="1305068798866" MODIFIED="1305147647321"/>
<node TEXT="add-symbol-file SYM_FILE ADDR to add symbol files for shared libraries&#xa;info shared to share the address where the library is loaded&#xa;ADDR = `info shared` + `objdump -h lib.so |grep text | cut -f 3`" ID="ID_1081324768" CREATED="1305135069179" MODIFIED="1305135246090">
<font BOLD="true"/>
</node>
</node>
</node>
</node>
</map>
