<map version="0.9.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="wxWidgets" ID="ID_1670944868" CREATED="1348536584163" MODIFIED="1348536589562">
<hook NAME="MapStyle" max_node_width="600"/>
<node TEXT="IDE&apos;s" POSITION="left" ID="ID_782134990" CREATED="1348536711892" MODIFIED="1348536725100">
<node TEXT="netbeans" ID="ID_1181282329" CREATED="1348536729707" MODIFIED="1348536735304">
<node TEXT="Create a project" ID="ID_1246104893" CREATED="1348536691354" MODIFIED="1348536705669"/>
<node TEXT="In submenu Configuration Properties -&gt; C/C++ -&gt; C++ Compiler -&gt; Command Line&#xa;&#xa;Add the following in &quot;Additional options&quot;:&#xa;&#xa;`wx-config --cxxflags`" ID="ID_222251930" CREATED="1348536746454" MODIFIED="1348536763700"/>
<node TEXT="In submenu Configuration Properties -&gt; Linker -&gt; Command Line&#xa;&#xa;Add the following in &quot;Additional options&quot;:&#xa;&#xa;`wx-config --libs`" ID="ID_240726086" CREATED="1348536773284" MODIFIED="1348536774916"/>
</node>
</node>
<node TEXT="GDI (Graphic Device Interface)" POSITION="right" ID="ID_328762918" CREATED="1348591580972" MODIFIED="1348591594174">
<node TEXT="To accelerate drawing cursor, Audacity uses bitmaps for background rendering" ID="ID_1083788304" CREATED="1348591614495" MODIFIED="1348591665697"/>
<node TEXT="Sizer" ID="ID_878434366" CREATED="1348783307468" MODIFIED="1348783319284">
<node TEXT="wxFrame widget has a special built-in sizer! Only one widget can be put inside the wxFrame container." ID="ID_1329587365" CREATED="1348783320167" MODIFIED="1348783363671"/>
</node>
<node TEXT="window deletion" ID="ID_44678951" CREATED="1359067455914" MODIFIED="1359067471887">
<node TEXT="when the user clicks on the system close button or system close command, in a frame or a dialog, wxWidgets calls wxWindow::Close, which in turn generates an EVT_CLOSE event" ID="ID_1584503373" CREATED="1359067813767" MODIFIED="1359067860942"/>
<node TEXT="OnCloseWindow() is from wxTopLevelWindowBase" ID="ID_1446186325" CREATED="1359068287223" MODIFIED="1359068303859"/>
<node TEXT="this-&gt;Destroy() must be called to delete the window" ID="ID_1588876386" CREATED="1359068690396" MODIFIED="1359068732577"/>
<node TEXT="wxWindow::SetSizer(): The window will then own the object, and will take care of its deletion." ID="ID_1268461390" CREATED="1359088400419" MODIFIED="1359088408266"/>
</node>
</node>
<node TEXT="cross platform" POSITION="right" ID="ID_1744752287" CREATED="1349373800530" MODIFIED="1349373807914">
<node TEXT="to compile wxWidgets with nmake" ID="ID_957438861" CREATED="1349373815171" MODIFIED="1349803100304">
<node TEXT="cl.exe must be in PATH" ID="ID_850744564" CREATED="1349373833461" MODIFIED="1349373840342"/>
<node TEXT="vcvarsall.bat must be executed before all other things" ID="ID_169498613" CREATED="1349373841895" MODIFIED="1349373860468"/>
<node TEXT="WXWIN must be set globally" ID="ID_523238307" CREATED="1352312947645" MODIFIED="1352312957389"/>
</node>
<node TEXT="project based on wxWidgets" ID="ID_402270760" CREATED="1349803101069" MODIFIED="1349803112453"/>
</node>
</node>
</map>
