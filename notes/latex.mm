<map version="0.9.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="latex" ID="ID_545852018" CREATED="1296408369700" MODIFIED="1296408372801">
<hook NAME="MapStyle" max_node_width="600"/>
<node TEXT="arch" POSITION="right" ID="ID_226783632" CREATED="1296408387092" MODIFIED="1296408388466">
<node TEXT="real world book" ID="ID_430313679" CREATED="1296408481603" MODIFIED="1296408486209">
<node TEXT="author writing manuscript" ID="ID_203854800" CREATED="1296408389271" MODIFIED="1296408406256"/>
<node TEXT="book designer trying to figure out what the manuscript wants to say" ID="ID_832483655" CREATED="1296408415051" MODIFIED="1296408436689"/>
<node TEXT="book designer giving instructions to typesetter" ID="ID_692412683" CREATED="1296408437332" MODIFIED="1296408454032"/>
<node TEXT="typersetter using the instructions and manuscript to make a formatted book" ID="ID_899015197" CREATED="1296408454456" MODIFIED="1296408477883"/>
</node>
<node TEXT="latex" ID="ID_1704022939" CREATED="1296408494398" MODIFIED="1296408496217">
<node TEXT="latex is book designer" ID="ID_947035822" CREATED="1296408496911" MODIFIED="1296408503427"/>
<node TEXT="tex is typesetter" ID="ID_301063230" CREATED="1296408503902" MODIFIED="1296408509576"/>
<node TEXT="but latex needs more information from the author" ID="ID_1826874650" CREATED="1296408510600" MODIFIED="1296408524610"/>
</node>
</node>
<node TEXT="format" POSITION="left" ID="ID_130412158" CREATED="1296408819601" MODIFIED="1296408824346">
<node TEXT="special characters" ID="ID_284535239" CREATED="1296408825067" MODIFIED="1296408830107">
<node TEXT="# $ % ^ &amp; _ { } ~ \" ID="ID_1528725330" CREATED="1296408830891" MODIFIED="1296408851237"/>
<node TEXT="escape: \" ID="ID_78218218" CREATED="1296408853432" MODIFIED="1296408858184">
<node TEXT="\textbackslash for \" ID="ID_272157338" CREATED="1296408869215" MODIFIED="1296408878166"/>
<node TEXT="\\ is linebreak" ID="ID_1494465253" CREATED="1296408895990" MODIFIED="1296408899317"/>
<node TEXT="\ is also used to start a command" ID="ID_1905390187" CREATED="1296408911663" MODIFIED="1296408917788"/>
</node>
<node TEXT="command format" ID="ID_419063547" CREATED="1296409091152" MODIFIED="1296409094609">
<node TEXT="end of a command: {}" ID="ID_1696821278" CREATED="1296409043300" MODIFIED="1296409052432">
<node TEXT="it stops latex from eating up the spaces after a command" ID="ID_484599789" CREATED="1296409054892" MODIFIED="1296409068449"/>
</node>
<node TEXT="[ ] is used to pass parameters to a command" ID="ID_1755781794" CREATED="1296409099856" MODIFIED="1296409114423"/>
</node>
<node TEXT="input file structure" ID="ID_602901623" CREATED="1296409339972" MODIFIED="1296409344535">
<node TEXT="must be started with \documentclass" ID="ID_423840164" CREATED="1296409346424" MODIFIED="1296409358329"/>
<node TEXT="load package" ID="ID_102314183" CREATED="1296409431776" MODIFIED="1296409434882">
<node TEXT="\usepackage{...}" ID="ID_705651938" CREATED="1296409437792" MODIFIED="1296409443772"/>
</node>
<node TEXT="other setting up" ID="ID_1451987160" CREATED="1296409473126" MODIFIED="1296409477786"/>
<node TEXT="start the body of text" ID="ID_1136446812" CREATED="1296409479318" MODIFIED="1296409492304">
<node ID="ID_1560651815" CREATED="1296409493776" MODIFIED="1296409506990">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      \begin{document}
    </p>
    <p>
      \end{document}
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node TEXT="command" ID="ID_671845455" CREATED="1296409329832" MODIFIED="1296409332589">
<node TEXT="comment" ID="ID_437991813" CREATED="1296409194230" MODIFIED="1296409219003">
<node TEXT="%" ID="ID_1254084001" CREATED="1296409219583" MODIFIED="1296409220838"/>
<node ID="ID_769467098" CREATED="1296409231337" MODIFIED="1296409290469">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      \usepackage{verbatim}
    </p>
    <p>
      \begin{comment}
    </p>
    <p>
      
    </p>
    <p>
      \end{comment}
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="page style" ID="ID_443657510" CREATED="1296410303674" MODIFIED="1296410307753"/>
<node TEXT="formula" ID="ID_1852012925" CREATED="1296411063596" MODIFIED="1296411075098">
<node ID="ID_1378886664" CREATED="1296411076574" MODIFIED="1296411092947">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      \begin{equation}
    </p>
    <p>
      \end{equation}
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="new line" ID="ID_948300374" CREATED="1296411912961" MODIFIED="1296411916106">
<node TEXT="\\ \newline" ID="ID_43613947" CREATED="1296411916843" MODIFIED="1296411924449"/>
<node TEXT="\\*: addionally prohibits a page break after the forced line break" ID="ID_721945409" CREATED="1296411929590" MODIFIED="1296412002524"/>
<node TEXT="\newpage : starts a new page" ID="ID_903945615" CREATED="1296412007293" MODIFIED="1296412020841"/>
</node>
<node TEXT="ligatures" ID="ID_129205488" CREATED="1296412548072" MODIFIED="1296412575015">
<node TEXT="\mbox{}" ID="ID_886780024" CREATED="1296412575702" MODIFIED="1296412580840"/>
</node>
</node>
<node TEXT="commenting with %" ID="ID_1808700416" CREATED="1301858783275" MODIFIED="1301858798204"/>
</node>
<node TEXT="mathematical formulae" POSITION="left" ID="ID_1097851100" CREATED="1296412664696" MODIFIED="1296412677133">
<node TEXT="AMS: America Mathematics Sociaty" ID="ID_697948008" CREATED="1296412984294" MODIFIED="1296413000984">
<node TEXT="text style formulae : typeset it in-line" ID="ID_656058273" CREATED="1296413004730" MODIFIED="1296413055862">
<node TEXT="between $ and $" ID="ID_1433022134" CREATED="1296413063692" MODIFIED="1296413070001">
<node ID="ID_835405543" CREATED="1296413076951" MODIFIED="1296413101591">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      example : $a^2 + b^2 = c^2$
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="multpling symbol: $\times$" ID="ID_1773638191" CREATED="1301858682857" MODIFIED="1301858724775"/>
</node>
</node>
<node TEXT="display style formulae : typeset it separately" ID="ID_1629346532" CREATED="1296413024949" MODIFIED="1296413050718"/>
</node>
</node>
<node TEXT="program" POSITION="right" ID="ID_1644347055" CREATED="1301858729662" MODIFIED="1301858731699">
<node TEXT="\usepackage{listings}&#xa;\lstset{language=C}" ID="ID_1169908705" CREATED="1301858752794" MODIFIED="1301858773279">
<node TEXT="ABAP &#x9;IDL &#x9;Plasm&#xa;ACSL &#x9;inform &#x9;POV&#xa;Ada &#x9;Java &#x9;Prolog&#xa;Algol &#x9;JVMIS &#x9;Promela&#xa;Ant &#x9;ksh &#x9;Python&#xa;{Motorola}Assembler &#x9;Lisp &#x9;R&#xa;Awk &#x9;Logo &#x9;Reduce&#xa;bash &#x9;make &#x9;Rexx&#xa;Basic2 &#x9;Mathematica1 &#x9;RSL&#xa;C &#x9;Matlab &#x9;Ruby&#xa;C++ &#x9;Mercury &#x9;S&#xa;Caml &#x9;MetaPost &#x9;SAS&#xa;Clean &#x9;Miranda &#x9;Scilab&#xa;Cobol &#x9;Mizar &#x9;sh&#xa;Comal &#x9;ML &#x9;SHELXL&#xa;csh &#x9;Modula-2 &#x9;Simula&#xa;Delphi &#x9;MuPAD &#x9;SQL&#xa;Eiffel &#x9;NASTRAN &#x9;tcl&#xa;Elan &#x9;Oberon-2 &#x9;TeX&#xa;erlang &#x9;OCL &#x9;VBScript&#xa;Euphoria &#x9;Octave &#x9;Verilog&#xa;Fortran &#x9;Oz &#x9;VHDL&#xa;GCL &#x9;Pascal &#x9;VRML&#xa;Gnuplot &#x9;Perl &#x9;XML&#xa;Haskell &#x9;PHP &#x9;XSLT&#xa;HTML &#x9;PL/I" ID="ID_1493876235" CREATED="1301858840104" MODIFIED="1301858884406"/>
</node>
</node>
<node TEXT="compiler" POSITION="right" ID="ID_480192391" CREATED="1311778462295" MODIFIED="1311778464988">
<node TEXT="latex to text" ID="ID_1858251552" CREATED="1311780207452" MODIFIED="1311780213148">
<node TEXT="latex &lt;the tex file&gt;&#xa;catdvi &lt;the tex file&gt;.dvi &gt; &lt;the text file&gt;.txt" ID="ID_1960401774" CREATED="1311780213805" MODIFIED="1311780249850"/>
</node>
</node>
</node>
</map>
