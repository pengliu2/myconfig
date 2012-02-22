<map version="0.9.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="python" ID="ID_1710472227" CREATED="1285330603337" MODIFIED="1285330606848">
<hook NAME="MapStyle" max_node_width="600"/>
<node POSITION="right" ID="ID_620907556" CREATED="1285330625055" MODIFIED="1285331723211">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      use ' as quotation, as well as &quot;, or use triple quotes (''' or &quot;&quot;&quot;) to specify multi-line strings
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="use # as comment marker" POSITION="right" ID="ID_556197298" CREATED="1285330693078" MODIFIED="1285330701585"/>
<node TEXT="see manual of print in interpreter mode: &gt;&gt;&gt;help(&apos;print&apos;);" POSITION="right" ID="ID_1890272349" CREATED="1285330843739" MODIFIED="1285330872683"/>
<node POSITION="right" ID="ID_1896262868" CREATED="1285331528558" MODIFIED="1285331648799">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      variable types:
    </p>
    <p>
      literal constatnt
    </p>
    <p>
      numbers:
    </p>
    <p>
      &#160;&#160;&#160;integers
    </p>
    <p>
      &#160;&#160;&#160;long integers
    </p>
    <p>
      &#160;&#160;&#160;floating point
    </p>
    <p>
      &#160;&#160;&#160;complex numbers
    </p>
    <p>
      string
    </p>
  </body>
</html></richcontent>
<node TEXT="string" ID="ID_53150386" CREATED="1285331782514" MODIFIED="1285331784637">
<node TEXT="r&quot;string&quot;: raw string" ID="ID_1660930830" CREATED="1285331793648" MODIFIED="1285331803625"/>
<node TEXT="u&quot;string&quot; or U&quot;string&quot;: unicode string" ID="ID_678833707" CREATED="1285331821796" MODIFIED="1285331834017"/>
<node TEXT="string is immutable" ID="ID_1939579912" CREATED="1285331852764" MODIFIED="1285331863127"/>
<node TEXT="always use raw strings for regex" ID="ID_1563569537" CREATED="1285331941939" MODIFIED="1285331953925"/>
<node TEXT="True is true" ID="ID_1672435783" CREATED="1285335261734" MODIFIED="1285335265804"/>
</node>
</node>
<node TEXT="flow control" POSITION="right" ID="ID_1102874740" CREATED="1285335728440" MODIFIED="1285335733826">
<node TEXT="break doesn&apos;t lead to else statement in while-else" ID="ID_1953545205" CREATED="1285335734737" MODIFIED="1285335756344"/>
</node>
<node TEXT="function" POSITION="right" ID="ID_1459151861" CREATED="1285335809416" MODIFIED="1285335810900"/>
<node TEXT="module" POSITION="right" ID="ID_1491854229" CREATED="1285336303412" MODIFIED="1285336304561">
<node TEXT="import to use a sys module" ID="ID_1400517802" CREATED="1285336305436" MODIFIED="1285336317177"/>
</node>
<node TEXT="inheritance" POSITION="right" ID="ID_722675100" CREATED="1313729681925" MODIFIED="1313729699199">
<node ID="ID_1530170703" CREATED="1313729725122" MODIFIED="1313730574007">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      &gt;cat test.py
    </p>
    <p>
      class base(object):&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;def __init__(self, n):&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;self.n=&quot;my name is %s&quot;%n&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;def method(self, p1):&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;print 'printing from base class %s: %s'%(self.n, p1)
    </p>
    <p>
      
    </p>
    <p>
      class sub(base):&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;def method(self, p1, p2=&quot;null&quot;):&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;print 'printing from sub-class %s: %s, %s'%(self.n, p1,p2)&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      
    </p>
    <p>
      s = sub('subclass')&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      b = super(sub,s)&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      b.method('k') &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      
    </p>
    <p>
      &gt;python test.py
    </p>
    <p>
      printing from base class my name is subclass: k
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
  </body>
</html>
</richcontent>
<node TEXT="super() only works with new style classes" ID="ID_877563688" CREATED="1313729827372" MODIFIED="1313729838328"/>
<node TEXT="which function object is going to be bound to a function call, this is decided by the type of instance. super() is just a expresssion to indicate all function call is going to be bould to the base-class of the object." ID="ID_25595107" CREATED="1313729838892" MODIFIED="1313730797865"/>
</node>
</node>
<node TEXT="chaco" POSITION="left" ID="ID_1180748369" CREATED="1285637470171" MODIFIED="1285637472257"/>
<node TEXT="traits" POSITION="left" ID="ID_201979638" CREATED="1293122828239" MODIFIED="1293122834771"/>
<node TEXT="test" POSITION="left" ID="ID_1167252891" CREATED="1294628954703" MODIFIED="1294628960375">
<node TEXT="nosetest" ID="ID_340517863" CREATED="1294629397201" MODIFIED="1294629400703">
<node TEXT="nosetests -v --with-coverage --cover-package=highlight --with-doctest --cover-erase --exe" ID="ID_458943535" CREATED="1294629408105" MODIFIED="1294629429279"/>
</node>
</node>
<node TEXT="examples" POSITION="left" ID="ID_1148150546" CREATED="1296156022257" MODIFIED="1296156024854">
<node TEXT="calling NI-DAQmx, the National Instruments driver" ID="ID_1771888831" CREATED="1296156026924" MODIFIED="1296156084722">
<node TEXT="dll file is in Windows\system32\nicaiu.dll" ID="ID_1216506775" CREATED="1296156085433" MODIFIED="1296156104404"/>
</node>
</node>
</node>
</map>
