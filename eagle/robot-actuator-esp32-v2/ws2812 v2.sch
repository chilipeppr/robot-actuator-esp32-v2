<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.4.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="1" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="7" fill="1" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="57" name="tCAD" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="7" fill="1" visible="yes" active="yes"/>
<layer number="100" name="Muster" color="7" fill="1" visible="yes" active="yes"/>
<layer number="101" name="Patch_Top" color="7" fill="1" visible="yes" active="yes"/>
<layer number="102" name="Vscore" color="7" fill="1" visible="yes" active="yes"/>
<layer number="103" name="tMap" color="7" fill="1" visible="yes" active="yes"/>
<layer number="104" name="Name" color="7" fill="1" visible="yes" active="yes"/>
<layer number="105" name="tPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="106" name="bPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="107" name="Crop" color="7" fill="1" visible="yes" active="yes"/>
<layer number="108" name="fp8" color="7" fill="1" visible="yes" active="yes"/>
<layer number="109" name="fp9" color="7" fill="1" visible="yes" active="yes"/>
<layer number="110" name="fp0" color="7" fill="1" visible="yes" active="yes"/>
<layer number="111" name="LPC17xx" color="7" fill="1" visible="yes" active="yes"/>
<layer number="112" name="tSilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="116" name="Patch_BOT" color="7" fill="1" visible="yes" active="yes"/>
<layer number="121" name="_tsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="122" name="_bsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="123" name="tTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="124" name="bTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="125" name="_tNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="126" name="_bNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="127" name="_tValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="128" name="_bValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="131" name="tAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="132" name="bAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="144" name="Drill_legend" color="7" fill="1" visible="yes" active="yes"/>
<layer number="150" name="Notes" color="7" fill="1" visible="yes" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="yes" active="yes"/>
<layer number="152" name="_bDocu" color="7" fill="1" visible="yes" active="yes"/>
<layer number="153" name="FabDoc1" color="7" fill="1" visible="yes" active="yes"/>
<layer number="154" name="FabDoc2" color="7" fill="1" visible="yes" active="yes"/>
<layer number="155" name="FabDoc3" color="7" fill="1" visible="yes" active="yes"/>
<layer number="199" name="Contour" color="7" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="201" name="201bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="202" name="202bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="203" name="203bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="204" name="204bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="205" name="205bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="206" name="206bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="207" name="207bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="208" name="208bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="209" name="209bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="210" name="210bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="211" name="211bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="212" name="212bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="213" name="213bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="214" name="214bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="215" name="215bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="216" name="216bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="217" name="217bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="218" name="218bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="219" name="219bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="220" name="220bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="221" name="221bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="222" name="222bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="223" name="223bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="224" name="224bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="248" name="Housing" color="7" fill="1" visible="yes" active="yes"/>
<layer number="249" name="Edge" color="7" fill="1" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="7" fill="1" visible="yes" active="yes"/>
<layer number="251" name="SMDround" color="7" fill="1" visible="yes" active="yes"/>
<layer number="254" name="cooling" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="robot actuator">
<packages>
<package name="LED_WS2812-2020">
<text x="-1.998490625" y="1.45621875" size="1.270140625" layer="25">&gt;NAME</text>
<text x="-2.17548125" y="-2.478090625" size="1.27075" layer="27">&gt;VALUE</text>
<wire x1="-1.1" y1="1" x2="1.1" y2="1" width="0.127" layer="51"/>
<wire x1="1.1" y1="1" x2="1.1" y2="-1" width="0.127" layer="51"/>
<wire x1="1.1" y1="-1" x2="-1.1" y2="-1" width="0.127" layer="51"/>
<wire x1="-1.1" y1="-1" x2="-1.1" y2="1" width="0.127" layer="51"/>
<wire x1="-1.515" y1="-1.25" x2="1.515" y2="-1.25" width="0.05" layer="39"/>
<wire x1="1.515" y1="-1.25" x2="1.515" y2="1.25" width="0.05" layer="39"/>
<wire x1="1.515" y1="1.25" x2="-1.515" y2="1.25" width="0.05" layer="39"/>
<wire x1="-1.515" y1="1.25" x2="-1.515" y2="-1.25" width="0.05" layer="39"/>
<circle x="-1.77" y="0.63" radius="0.10295625" width="0.2" layer="51"/>
<wire x1="-0.3" y1="1" x2="0.3" y2="1" width="0.127" layer="21"/>
<wire x1="-0.3" y1="-1" x2="0.3" y2="-1" width="0.127" layer="21"/>
<circle x="-1.77" y="0.63" radius="0.10295625" width="0.2" layer="21"/>
<smd name="3" x="0.915" y="-0.55" dx="0.7" dy="0.7" layer="1" rot="R180"/>
<smd name="4" x="0.915" y="0.55" dx="0.7" dy="0.7" layer="1" rot="R180"/>
<smd name="1" x="-0.915" y="0.55" dx="0.7" dy="0.7" layer="1"/>
<smd name="2" x="-0.915" y="-0.55" dx="0.7" dy="0.7" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="WS2812-2020">
<wire x1="-10.16" y1="7.62" x2="10.16" y2="7.62" width="0.4064" layer="94"/>
<wire x1="10.16" y1="7.62" x2="10.16" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="-10.16" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="-10.16" y1="-7.62" x2="-10.16" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-10.16" y1="-5.08" x2="-10.16" y2="7.62" width="0.4064" layer="94"/>
<text x="-10.1778" y="7.633340625" size="1.781109375" layer="95">&gt;NAME</text>
<text x="-10.1779" y="-10.1779" size="1.78113125" layer="96">&gt;VALUE</text>
<pin name="DI" x="-15.24" y="0" length="middle" direction="in"/>
<pin name="DO" x="15.24" y="0" length="middle" direction="out" rot="R180"/>
<pin name="GND" x="15.24" y="-5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="VDD" x="15.24" y="5.08" length="middle" direction="pwr" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="WS2812-2020" prefix="U">
<description>Intelligent control LED
integrated light source</description>
<gates>
<gate name="G$1" symbol="WS2812-2020" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LED_WS2812-2020">
<connects>
<connect gate="G$1" pin="DI" pad="3"/>
<connect gate="G$1" pin="DO" pad="1"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="VDD" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Unavailable"/>
<attribute name="DESCRIPTION" value=" "/>
<attribute name="MF" value="Worldsemi"/>
<attribute name="MP" value="WS2812-2020"/>
<attribute name="PACKAGE" value="Package Analog Devices"/>
<attribute name="PRICE" value="None"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead" urn="urn:adsk.eagle:library:325">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X03" urn="urn:adsk.eagle:footprint:22340/1" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-3.175" y1="1.27" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-3.8862" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<rectangle x1="-2.794" y1="-0.254" x2="-2.286" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
</package>
<package name="1X03/90" urn="urn:adsk.eagle:footprint:22341/1" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-3.81" y1="-1.905" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="6.985" x2="-2.54" y2="1.27" width="0.762" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="6.985" x2="0" y2="1.27" width="0.762" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="6.985" x2="2.54" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-2.54" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="0" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-4.445" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="5.715" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.921" y1="0.635" x2="-2.159" y2="1.143" layer="21"/>
<rectangle x1="-0.381" y1="0.635" x2="0.381" y2="1.143" layer="21"/>
<rectangle x1="2.159" y1="0.635" x2="2.921" y2="1.143" layer="21"/>
<rectangle x1="-2.921" y1="-2.921" x2="-2.159" y2="-1.905" layer="21"/>
<rectangle x1="-0.381" y1="-2.921" x2="0.381" y2="-1.905" layer="21"/>
<rectangle x1="2.159" y1="-2.921" x2="2.921" y2="-1.905" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="1X03" urn="urn:adsk.eagle:package:22458/2" type="model" library_version="3">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X03"/>
</packageinstances>
</package3d>
<package3d name="1X03/90" urn="urn:adsk.eagle:package:22459/2" type="model" library_version="3">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X03/90"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PINHD3" urn="urn:adsk.eagle:symbol:22339/1" library_version="3">
<wire x1="-6.35" y1="-5.08" x2="1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="1.27" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="-6.35" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="5.08" x2="-6.35" y2="-5.08" width="0.4064" layer="94"/>
<text x="-6.35" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X3" urn="urn:adsk.eagle:component:22524/3" prefix="JP" uservalue="yes" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD3" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X03">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22458/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="1X03/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22459/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U1" library="robot actuator" deviceset="WS2812-2020" device=""/>
<part name="U2" library="robot actuator" deviceset="WS2812-2020" device=""/>
<part name="U3" library="robot actuator" deviceset="WS2812-2020" device=""/>
<part name="JP1" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X3" device="" package3d_urn="urn:adsk.eagle:package:22458/2"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="G$1" x="35.56" y="68.58" smashed="yes">
<attribute name="NAME" x="25.3822" y="76.213340625" size="1.781109375" layer="95"/>
<attribute name="VALUE" x="25.3821" y="58.4021" size="1.78113125" layer="96"/>
</instance>
<instance part="U2" gate="G$1" x="35.56" y="43.18" smashed="yes">
<attribute name="NAME" x="25.3822" y="50.813340625" size="1.781109375" layer="95"/>
<attribute name="VALUE" x="25.3821" y="33.0021" size="1.78113125" layer="96"/>
</instance>
<instance part="U3" gate="G$1" x="35.56" y="17.78" smashed="yes">
<attribute name="NAME" x="25.3822" y="25.413340625" size="1.781109375" layer="95"/>
<attribute name="VALUE" x="25.3821" y="7.6021" size="1.78113125" layer="96"/>
</instance>
<instance part="JP1" gate="A" x="38.1" y="91.44" smashed="yes">
<attribute name="NAME" x="31.75" y="97.155" size="1.778" layer="95"/>
<attribute name="VALUE" x="31.75" y="83.82" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="3V3" class="0">
<segment>
<pinref part="JP1" gate="A" pin="1"/>
<wire x1="35.56" y1="93.98" x2="22.86" y2="93.98" width="0.1524" layer="91"/>
<label x="22.86" y="93.98" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="VDD"/>
<wire x1="50.8" y1="73.66" x2="58.42" y2="73.66" width="0.1524" layer="91"/>
<label x="58.42" y="73.66" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="VDD"/>
<wire x1="50.8" y1="48.26" x2="58.42" y2="48.26" width="0.1524" layer="91"/>
<label x="58.42" y="48.26" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U3" gate="G$1" pin="VDD"/>
<wire x1="50.8" y1="22.86" x2="58.42" y2="22.86" width="0.1524" layer="91"/>
<label x="58.42" y="22.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="JP1" gate="A" pin="3"/>
<wire x1="35.56" y1="88.9" x2="22.86" y2="88.9" width="0.1524" layer="91"/>
<label x="22.86" y="88.9" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="GND"/>
<wire x1="50.8" y1="63.5" x2="58.42" y2="63.5" width="0.1524" layer="91"/>
<label x="58.42" y="63.5" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="GND"/>
<wire x1="50.8" y1="38.1" x2="58.42" y2="38.1" width="0.1524" layer="91"/>
<label x="58.42" y="38.1" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U3" gate="G$1" pin="GND"/>
<wire x1="50.8" y1="12.7" x2="58.42" y2="12.7" width="0.1524" layer="91"/>
<label x="58.42" y="12.7" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="DO"/>
<wire x1="50.8" y1="68.58" x2="68.58" y2="68.58" width="0.1524" layer="91"/>
<wire x1="68.58" y1="68.58" x2="68.58" y2="55.88" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="DI"/>
<wire x1="20.32" y1="43.18" x2="10.16" y2="43.18" width="0.1524" layer="91"/>
<wire x1="68.58" y1="55.88" x2="10.16" y2="55.88" width="0.1524" layer="91"/>
<wire x1="10.16" y1="55.88" x2="10.16" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="DO"/>
<wire x1="50.8" y1="43.18" x2="68.58" y2="43.18" width="0.1524" layer="91"/>
<wire x1="68.58" y1="43.18" x2="68.58" y2="30.48" width="0.1524" layer="91"/>
<wire x1="68.58" y1="30.48" x2="10.16" y2="30.48" width="0.1524" layer="91"/>
<wire x1="10.16" y1="30.48" x2="10.16" y2="17.78" width="0.1524" layer="91"/>
<pinref part="U3" gate="G$1" pin="DI"/>
<wire x1="20.32" y1="17.78" x2="10.16" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="DO"/>
<wire x1="50.8" y1="17.78" x2="58.42" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DI" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="DI"/>
<wire x1="20.32" y1="68.58" x2="12.7" y2="68.58" width="0.1524" layer="91"/>
<label x="12.7" y="68.58" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP1" gate="A" pin="2"/>
<wire x1="35.56" y1="91.44" x2="22.86" y2="91.44" width="0.1524" layer="91"/>
<label x="22.86" y="91.44" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
