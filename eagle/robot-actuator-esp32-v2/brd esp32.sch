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
<package name="MODULE_ESP32-WROOM-32D" urn="urn:adsk.eagle:footprint:9204058/1" library_version="1">
<text x="-8.2833" y="13.8419" size="1.27341875" layer="25">&gt;NAME</text>
<text x="-8.966959375" y="-15.6155" size="1.2738" layer="27">&gt;VALUE</text>
<text x="-5.72471875" y="8.65068125" size="1.78101875" layer="51">ANTENNA</text>
<circle x="-10.777" y="5.238" radius="0.1" width="0.3" layer="21"/>
<circle x="-8.277" y="5.238" radius="0.1" width="0.3" layer="51"/>
<wire x1="-9" y1="12.75" x2="9" y2="12.75" width="0.127" layer="51"/>
<wire x1="9" y1="12.75" x2="9" y2="-12.75" width="0.127" layer="51"/>
<wire x1="9" y1="-12.75" x2="-9" y2="-12.75" width="0.127" layer="51"/>
<wire x1="-9" y1="-12.75" x2="-9" y2="12.75" width="0.127" layer="51"/>
<wire x1="-8.96" y1="6.45" x2="8.96" y2="6.45" width="0.127" layer="51"/>
<wire x1="-9" y1="6" x2="-9" y2="12.75" width="0.127" layer="21"/>
<wire x1="-9" y1="12.75" x2="9" y2="12.75" width="0.127" layer="21"/>
<wire x1="9" y1="12.75" x2="9" y2="6" width="0.127" layer="21"/>
<wire x1="-9" y1="-12" x2="-9" y2="-12.75" width="0.127" layer="21"/>
<wire x1="-9" y1="-12.75" x2="-6.5" y2="-12.75" width="0.127" layer="21"/>
<wire x1="6.5" y1="-12.75" x2="9" y2="-12.75" width="0.127" layer="21"/>
<wire x1="9" y1="-12" x2="9" y2="-12.75" width="0.127" layer="21"/>
<wire x1="-8.96" y1="6.45" x2="8.96" y2="6.45" width="0.127" layer="21"/>
<wire x1="-9.25" y1="13" x2="9.25" y2="13" width="0.05" layer="39"/>
<wire x1="9.25" y1="13" x2="9.25" y2="6" width="0.05" layer="39"/>
<wire x1="9.25" y1="6" x2="9.75" y2="6" width="0.05" layer="39"/>
<wire x1="9.75" y1="6" x2="9.75" y2="-13.5" width="0.05" layer="39"/>
<wire x1="9.75" y1="-13.5" x2="-9.75" y2="-13.5" width="0.05" layer="39"/>
<wire x1="-9.75" y1="-13.5" x2="-9.75" y2="6" width="0.05" layer="39"/>
<wire x1="-9.75" y1="6" x2="-9.25" y2="6" width="0.05" layer="39"/>
<wire x1="-9.25" y1="6" x2="-9.25" y2="13" width="0.05" layer="39"/>
<rectangle x1="-2.58366875" y1="-3.824909375" x2="0.5811" y2="-0.6589" layer="31"/>
<smd name="39" x="-1" y="-2.24" dx="5" dy="5" layer="1" cream="no"/>
<smd name="1" x="-8.5" y="5.26" dx="2" dy="0.9" layer="1"/>
<smd name="2" x="-8.5" y="3.99" dx="2" dy="0.9" layer="1"/>
<smd name="3" x="-8.5" y="2.72" dx="2" dy="0.9" layer="1"/>
<smd name="4" x="-8.5" y="1.45" dx="2" dy="0.9" layer="1"/>
<smd name="5" x="-8.5" y="0.18" dx="2" dy="0.9" layer="1"/>
<smd name="6" x="-8.5" y="-1.09" dx="2" dy="0.9" layer="1"/>
<smd name="7" x="-8.5" y="-2.36" dx="2" dy="0.9" layer="1"/>
<smd name="8" x="-8.5" y="-3.63" dx="2" dy="0.9" layer="1"/>
<smd name="9" x="-8.5" y="-4.9" dx="2" dy="0.9" layer="1"/>
<smd name="10" x="-8.5" y="-6.17" dx="2" dy="0.9" layer="1"/>
<smd name="11" x="-8.5" y="-7.44" dx="2" dy="0.9" layer="1"/>
<smd name="12" x="-8.5" y="-8.71" dx="2" dy="0.9" layer="1"/>
<smd name="13" x="-8.5" y="-9.98" dx="2" dy="0.9" layer="1"/>
<smd name="14" x="-8.5" y="-11.25" dx="2" dy="0.9" layer="1"/>
<smd name="15" x="-5.715" y="-12.25" dx="2" dy="0.9" layer="1" rot="R90"/>
<smd name="16" x="-4.445" y="-12.25" dx="2" dy="0.9" layer="1" rot="R90"/>
<smd name="17" x="-3.175" y="-12.25" dx="2" dy="0.9" layer="1" rot="R90"/>
<smd name="18" x="-1.905" y="-12.25" dx="2" dy="0.9" layer="1" rot="R90"/>
<smd name="19" x="-0.635" y="-12.25" dx="2" dy="0.9" layer="1" rot="R90"/>
<smd name="20" x="0.635" y="-12.25" dx="2" dy="0.9" layer="1" rot="R90"/>
<smd name="21" x="1.905" y="-12.25" dx="2" dy="0.9" layer="1" rot="R90"/>
<smd name="22" x="3.175" y="-12.25" dx="2" dy="0.9" layer="1" rot="R90"/>
<smd name="23" x="4.445" y="-12.25" dx="2" dy="0.9" layer="1" rot="R90"/>
<smd name="24" x="5.715" y="-12.25" dx="2" dy="0.9" layer="1" rot="R90"/>
<smd name="25" x="8.5" y="-11.25" dx="2" dy="0.9" layer="1" rot="R180"/>
<smd name="26" x="8.5" y="-9.98" dx="2" dy="0.9" layer="1" rot="R180"/>
<smd name="27" x="8.5" y="-8.71" dx="2" dy="0.9" layer="1" rot="R180"/>
<smd name="28" x="8.5" y="-7.44" dx="2" dy="0.9" layer="1" rot="R180"/>
<smd name="29" x="8.5" y="-6.17" dx="2" dy="0.9" layer="1" rot="R180"/>
<smd name="30" x="8.5" y="-4.9" dx="2" dy="0.9" layer="1" rot="R180"/>
<smd name="31" x="8.5" y="-3.63" dx="2" dy="0.9" layer="1" rot="R180"/>
<smd name="32" x="8.5" y="-2.36" dx="2" dy="0.9" layer="1" rot="R180"/>
<smd name="33" x="8.5" y="-1.09" dx="2" dy="0.9" layer="1" rot="R180"/>
<smd name="34" x="8.5" y="0.18" dx="2" dy="0.9" layer="1" rot="R180"/>
<smd name="35" x="8.5" y="1.45" dx="2" dy="0.9" layer="1" rot="R180"/>
<smd name="36" x="8.5" y="2.72" dx="2" dy="0.9" layer="1" rot="R180"/>
<smd name="37" x="8.5" y="3.99" dx="2" dy="0.9" layer="1" rot="R180"/>
<smd name="38" x="8.5" y="5.26" dx="2" dy="0.9" layer="1" rot="R180"/>
</package>
<package name="PIN1X3-2MM" urn="urn:adsk.eagle:footprint:11740456/1">
<pad name="1" x="-2" y="0" drill="0.8" shape="square"/>
<pad name="2" x="0" y="0" drill="0.8"/>
<pad name="3" x="2" y="0" drill="0.8"/>
<wire x1="-3" y1="1" x2="-3" y2="-1" width="0.127" layer="51"/>
<wire x1="-3" y1="-1" x2="3" y2="-1" width="0.127" layer="51"/>
<wire x1="3" y1="-1" x2="3" y2="1" width="0.127" layer="51"/>
<wire x1="3" y1="1" x2="-3" y2="1" width="0.127" layer="51"/>
<wire x1="-3" y1="1" x2="-3" y2="-1" width="0.127" layer="21"/>
<wire x1="-3" y1="-1" x2="3" y2="-1" width="0.127" layer="21"/>
<wire x1="3" y1="-1" x2="3" y2="1" width="0.127" layer="21"/>
<wire x1="3" y1="1" x2="-3" y2="1" width="0.127" layer="21"/>
<wire x1="-3.25" y1="1.25" x2="3.25" y2="1.25" width="0.05" layer="39"/>
<wire x1="3.25" y1="1.25" x2="3.25" y2="-1.25" width="0.05" layer="39"/>
<wire x1="3.25" y1="-1.25" x2="-3.25" y2="-1.25" width="0.05" layer="39"/>
<wire x1="-3.25" y1="-1.25" x2="-3.25" y2="1.25" width="0.05" layer="39"/>
<circle x="-2" y="-1.746" radius="0.1" width="0.2" layer="21"/>
<text x="-3.302" y="1.651" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.302" y="-3.302" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="SAMTEC-TSM-108-01-X-SH" urn="urn:adsk.eagle:footprint:9198497/1">
<description>translated Allegro footprint</description>
<wire x1="-10.861" y1="1.27" x2="-17.084" y2="1.27" width="0" layer="150"/>
<wire x1="-10.861" y1="-1.27" x2="-17.084" y2="-1.27" width="0" layer="150"/>
<wire x1="-16.383" y1="-0.318" x2="-16.383" y2="-1.27" width="0" layer="150"/>
<wire x1="-16.542" y1="-0.635" x2="-16.383" y2="-1.27" width="0" layer="150"/>
<wire x1="-16.383" y1="-1.27" x2="-16.224" y2="-0.635" width="0" layer="150"/>
<wire x1="-16.224" y1="-0.635" x2="-16.383" y2="-0.762" width="0" layer="150"/>
<wire x1="-16.383" y1="-0.762" x2="-16.542" y2="-0.635" width="0" layer="150"/>
<wire x1="-16.383" y1="-1.27" x2="-16.304" y2="-0.698" width="0" layer="150"/>
<wire x1="-16.304" y1="-0.698" x2="-16.383" y2="-0.762" width="0" layer="150"/>
<wire x1="-16.383" y1="-0.762" x2="-16.383" y2="-1.27" width="0" layer="150"/>
<wire x1="-16.383" y1="-1.27" x2="-16.462" y2="-0.698" width="0" layer="150"/>
<wire x1="-16.462" y1="-0.698" x2="-16.542" y2="-0.635" width="0" layer="150"/>
<wire x1="-16.383" y1="0.318" x2="-16.383" y2="1.27" width="0" layer="150"/>
<wire x1="-16.224" y1="0.635" x2="-16.383" y2="1.27" width="0" layer="150"/>
<wire x1="-16.383" y1="1.27" x2="-16.542" y2="0.635" width="0" layer="150"/>
<wire x1="-16.542" y1="0.635" x2="-16.383" y2="0.762" width="0" layer="150"/>
<wire x1="-16.383" y1="0.762" x2="-16.224" y2="0.635" width="0" layer="150"/>
<wire x1="-16.383" y1="1.27" x2="-16.462" y2="0.698" width="0" layer="150"/>
<wire x1="-16.462" y1="0.698" x2="-16.383" y2="0.762" width="0" layer="150"/>
<wire x1="-16.383" y1="0.762" x2="-16.383" y2="1.27" width="0" layer="150"/>
<wire x1="-16.383" y1="1.27" x2="-16.304" y2="0.698" width="0" layer="150"/>
<wire x1="-16.304" y1="0.698" x2="-16.224" y2="0.635" width="0" layer="150"/>
<wire x1="-10.61" y1="7.565" x2="-10.61" y2="-7.324" width="0.2" layer="21"/>
<wire x1="-10.61" y1="-7.324" x2="10.61" y2="-7.324" width="0.2" layer="21"/>
<wire x1="10.61" y1="-7.324" x2="10.61" y2="7.565" width="0.2" layer="21"/>
<wire x1="10.61" y1="7.565" x2="-10.61" y2="7.565" width="0.2" layer="21"/>
<wire x1="-9.023" y1="-5.842" x2="-9.208" y2="-5.334" width="0.1" layer="51"/>
<wire x1="-9.208" y1="-5.334" x2="-9.208" y2="-1.27" width="0.1" layer="51"/>
<wire x1="-9.208" y1="-3.81" x2="-8.572" y2="-3.81" width="0.1" layer="51"/>
<wire x1="-10.16" y1="0.569" x2="-10.16" y2="-4.194" width="0" layer="150"/>
<wire x1="-0.991" y1="-3.492" x2="-10.16" y2="-3.492" width="0" layer="150"/>
<wire x1="-9.525" y1="-3.334" x2="-10.16" y2="-3.492" width="0" layer="150"/>
<wire x1="-10.16" y1="-3.492" x2="-9.525" y2="-3.651" width="0" layer="150"/>
<wire x1="-9.525" y1="-3.651" x2="-9.652" y2="-3.492" width="0" layer="150"/>
<wire x1="-9.652" y1="-3.492" x2="-9.525" y2="-3.334" width="0" layer="150"/>
<wire x1="-10.16" y1="-3.492" x2="-9.588" y2="-3.572" width="0" layer="150"/>
<wire x1="-9.588" y1="-3.572" x2="-9.652" y2="-3.492" width="0" layer="150"/>
<wire x1="-9.652" y1="-3.492" x2="-10.16" y2="-3.492" width="0" layer="150"/>
<wire x1="-10.16" y1="-3.492" x2="-9.588" y2="-3.413" width="0" layer="150"/>
<wire x1="-9.588" y1="-3.413" x2="-9.525" y2="-3.334" width="0" layer="150"/>
<wire x1="-10.16" y1="-1.27" x2="-8.001" y2="-1.27" width="0.1" layer="51"/>
<wire x1="-10.16" y1="1.27" x2="-8.001" y2="1.27" width="0.1" layer="51"/>
<wire x1="-10.16" y1="1.27" x2="-10.16" y2="-1.27" width="0.1" layer="51"/>
<wire x1="-9.208" y1="1.27" x2="-9.208" y2="6.604" width="0.1" layer="51"/>
<wire x1="-9.023" y1="7.112" x2="-9.208" y2="6.604" width="0.1" layer="51"/>
<wire x1="-8.89" y1="-5.984" x2="-8.89" y2="-10.417" width="0" layer="150"/>
<wire x1="-8.89" y1="-5.984" x2="-8.89" y2="-8.893" width="0" layer="150"/>
<wire x1="-6.35" y1="-5.984" x2="-6.35" y2="-8.893" width="0" layer="150"/>
<wire x1="-8.471" y1="-8.192" x2="-8.89" y2="-8.192" width="0" layer="150"/>
<wire x1="-8.255" y1="-8.033" x2="-8.89" y2="-8.192" width="0" layer="150"/>
<wire x1="-8.89" y1="-8.192" x2="-8.255" y2="-8.35" width="0" layer="150"/>
<wire x1="-8.255" y1="-8.35" x2="-8.382" y2="-8.192" width="0" layer="150"/>
<wire x1="-8.382" y1="-8.192" x2="-8.255" y2="-8.033" width="0" layer="150"/>
<wire x1="-8.89" y1="-8.192" x2="-8.318" y2="-8.271" width="0" layer="150"/>
<wire x1="-8.318" y1="-8.271" x2="-8.382" y2="-8.192" width="0" layer="150"/>
<wire x1="-8.382" y1="-8.192" x2="-8.89" y2="-8.192" width="0" layer="150"/>
<wire x1="-8.89" y1="-8.192" x2="-8.318" y2="-8.112" width="0" layer="150"/>
<wire x1="-8.318" y1="-8.112" x2="-8.255" y2="-8.033" width="0" layer="150"/>
<wire x1="-6.769" y1="-8.192" x2="-6.35" y2="-8.192" width="0" layer="150"/>
<wire x1="-6.985" y1="-8.35" x2="-6.35" y2="-8.192" width="0" layer="150"/>
<wire x1="-6.35" y1="-8.192" x2="-6.985" y2="-8.033" width="0" layer="150"/>
<wire x1="-6.985" y1="-8.033" x2="-6.858" y2="-8.192" width="0" layer="150"/>
<wire x1="-6.858" y1="-8.192" x2="-6.985" y2="-8.35" width="0" layer="150"/>
<wire x1="-6.35" y1="-8.192" x2="-6.922" y2="-8.112" width="0" layer="150"/>
<wire x1="-6.922" y1="-8.112" x2="-6.858" y2="-8.192" width="0" layer="150"/>
<wire x1="-6.858" y1="-8.192" x2="-6.35" y2="-8.192" width="0" layer="150"/>
<wire x1="-6.35" y1="-8.192" x2="-6.922" y2="-8.271" width="0" layer="150"/>
<wire x1="-6.922" y1="-8.271" x2="-6.985" y2="-8.35" width="0" layer="150"/>
<wire x1="-0.991" y1="-9.716" x2="-8.89" y2="-9.716" width="0" layer="150"/>
<wire x1="-8.255" y1="-9.557" x2="-8.89" y2="-9.716" width="0" layer="150"/>
<wire x1="-8.89" y1="-9.716" x2="-8.255" y2="-9.874" width="0" layer="150"/>
<wire x1="-8.255" y1="-9.874" x2="-8.382" y2="-9.716" width="0" layer="150"/>
<wire x1="-8.382" y1="-9.716" x2="-8.255" y2="-9.557" width="0" layer="150"/>
<wire x1="-8.89" y1="-9.716" x2="-8.318" y2="-9.795" width="0" layer="150"/>
<wire x1="-8.318" y1="-9.795" x2="-8.382" y2="-9.716" width="0" layer="150"/>
<wire x1="-8.382" y1="-9.716" x2="-8.89" y2="-9.716" width="0" layer="150"/>
<wire x1="-8.89" y1="-9.716" x2="-8.318" y2="-9.636" width="0" layer="150"/>
<wire x1="-8.318" y1="-9.636" x2="-8.255" y2="-9.557" width="0" layer="150"/>
<wire x1="-8.757" y1="-5.842" x2="-8.572" y2="-5.334" width="0.1" layer="51"/>
<wire x1="-9.023" y1="-5.842" x2="-8.757" y2="-5.842" width="0.1" layer="51"/>
<wire x1="-8.572" y1="-5.334" x2="-8.572" y2="-1.27" width="0.1" layer="51"/>
<wire x1="-6.217" y1="-5.842" x2="-6.032" y2="-5.334" width="0.1" layer="51"/>
<wire x1="-6.483" y1="-5.842" x2="-6.668" y2="-5.334" width="0.1" layer="51"/>
<wire x1="-6.483" y1="-5.842" x2="-6.217" y2="-5.842" width="0.1" layer="51"/>
<wire x1="-6.668" y1="-1.27" x2="-6.668" y2="-5.334" width="0.1" layer="51"/>
<wire x1="-6.032" y1="-5.334" x2="-6.032" y2="-1.27" width="0.1" layer="51"/>
<wire x1="-6.668" y1="-3.81" x2="-6.032" y2="-3.81" width="0.1" layer="51"/>
<wire x1="-7.62" y1="1.143" x2="-8.001" y2="1.143" width="0.1" layer="51"/>
<wire x1="-8.001" y1="-1.143" x2="-7.62" y2="-1.143" width="0.1" layer="51"/>
<wire x1="-8.001" y1="1.27" x2="-8.001" y2="-1.27" width="0.1" layer="51"/>
<wire x1="-8.572" y1="1.27" x2="-8.572" y2="6.604" width="0.1" layer="51"/>
<wire x1="-7.239" y1="1.27" x2="-5.461" y2="1.27" width="0.1" layer="51"/>
<wire x1="-7.239" y1="-1.27" x2="-7.239" y2="1.27" width="0.1" layer="51"/>
<wire x1="-7.239" y1="-1.27" x2="-5.461" y2="-1.27" width="0.1" layer="51"/>
<wire x1="-5.461" y1="1.27" x2="-5.461" y2="-1.27" width="0.1" layer="51"/>
<wire x1="-7.239" y1="1.143" x2="-7.62" y2="1.143" width="0.1" layer="51"/>
<wire x1="-7.62" y1="-1.143" x2="-7.239" y2="-1.143" width="0.1" layer="51"/>
<wire x1="-5.08" y1="1.143" x2="-5.461" y2="1.143" width="0.1" layer="51"/>
<wire x1="-5.461" y1="-1.143" x2="-5.08" y2="-1.143" width="0.1" layer="51"/>
<wire x1="-6.032" y1="1.27" x2="-6.032" y2="6.604" width="0.1" layer="51"/>
<wire x1="-6.668" y1="6.604" x2="-6.668" y2="1.27" width="0.1" layer="51"/>
<wire x1="-9.023" y1="7.112" x2="-8.757" y2="7.112" width="0.1" layer="51"/>
<wire x1="-8.757" y1="7.112" x2="-8.572" y2="6.604" width="0.1" layer="51"/>
<wire x1="-6.483" y1="7.112" x2="-6.668" y2="6.604" width="0.1" layer="51"/>
<wire x1="-6.217" y1="7.112" x2="-6.032" y2="6.604" width="0.1" layer="51"/>
<wire x1="-6.483" y1="7.112" x2="-6.217" y2="7.112" width="0.1" layer="51"/>
<wire x1="-3.677" y1="-5.842" x2="-3.492" y2="-5.334" width="0.1" layer="51"/>
<wire x1="-3.943" y1="-5.842" x2="-4.128" y2="-5.334" width="0.1" layer="51"/>
<wire x1="-3.943" y1="-5.842" x2="-3.677" y2="-5.842" width="0.1" layer="51"/>
<wire x1="-4.128" y1="-1.27" x2="-4.128" y2="-5.334" width="0.1" layer="51"/>
<wire x1="-3.492" y1="-5.334" x2="-3.492" y2="-1.27" width="0.1" layer="51"/>
<wire x1="-4.128" y1="-3.81" x2="-3.492" y2="-3.81" width="0.1" layer="51"/>
<wire x1="-1.403" y1="-5.842" x2="-1.588" y2="-5.334" width="0.1" layer="51"/>
<wire x1="-1.588" y1="-1.27" x2="-1.588" y2="-5.334" width="0.1" layer="51"/>
<wire x1="-1.588" y1="-3.81" x2="-0.952" y2="-3.81" width="0.1" layer="51"/>
<wire x1="-4.699" y1="1.27" x2="-2.921" y2="1.27" width="0.1" layer="51"/>
<wire x1="-4.699" y1="-1.27" x2="-4.699" y2="1.27" width="0.1" layer="51"/>
<wire x1="-4.699" y1="-1.27" x2="-2.921" y2="-1.27" width="0.1" layer="51"/>
<wire x1="-2.921" y1="1.27" x2="-2.921" y2="-1.27" width="0.1" layer="51"/>
<wire x1="-4.699" y1="1.143" x2="-5.08" y2="1.143" width="0.1" layer="51"/>
<wire x1="-5.08" y1="-1.143" x2="-4.699" y2="-1.143" width="0.1" layer="51"/>
<wire x1="-2.54" y1="1.143" x2="-2.921" y2="1.143" width="0.1" layer="51"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1" layer="51"/>
<wire x1="-3.492" y1="1.27" x2="-3.492" y2="6.604" width="0.1" layer="51"/>
<wire x1="-4.128" y1="6.604" x2="-4.128" y2="1.27" width="0.1" layer="51"/>
<wire x1="-2.159" y1="1.27" x2="-0.381" y2="1.27" width="0.1" layer="51"/>
<wire x1="-2.159" y1="-1.27" x2="-2.159" y2="1.27" width="0.1" layer="51"/>
<wire x1="-2.159" y1="-1.27" x2="-0.381" y2="-1.27" width="0.1" layer="51"/>
<wire x1="-2.159" y1="1.143" x2="-2.54" y2="1.143" width="0.1" layer="51"/>
<wire x1="-2.54" y1="-1.143" x2="-2.159" y2="-1.143" width="0.1" layer="51"/>
<wire x1="-1.588" y1="6.604" x2="-1.588" y2="1.27" width="0.1" layer="51"/>
<wire x1="-3.943" y1="7.112" x2="-4.128" y2="6.604" width="0.1" layer="51"/>
<wire x1="-3.677" y1="7.112" x2="-3.492" y2="6.604" width="0.1" layer="51"/>
<wire x1="-3.943" y1="7.112" x2="-3.677" y2="7.112" width="0.1" layer="51"/>
<wire x1="-1.403" y1="7.112" x2="-1.588" y2="6.604" width="0.1" layer="51"/>
<wire x1="0.991" y1="-9.716" x2="8.89" y2="-9.716" width="0" layer="150"/>
<wire x1="-1.137" y1="-5.842" x2="-0.952" y2="-5.334" width="0.1" layer="51"/>
<wire x1="-1.403" y1="-5.842" x2="-1.137" y2="-5.842" width="0.1" layer="51"/>
<wire x1="-0.952" y1="-5.334" x2="-0.952" y2="-1.27" width="0.1" layer="51"/>
<wire x1="1.403" y1="-5.842" x2="1.588" y2="-5.334" width="0.1" layer="51"/>
<wire x1="1.137" y1="-5.842" x2="0.952" y2="-5.334" width="0.1" layer="51"/>
<wire x1="1.137" y1="-5.842" x2="1.403" y2="-5.842" width="0.1" layer="51"/>
<wire x1="0.952" y1="-1.27" x2="0.952" y2="-5.334" width="0.1" layer="51"/>
<wire x1="1.588" y1="-5.334" x2="1.588" y2="-1.27" width="0.1" layer="51"/>
<wire x1="0.952" y1="-3.81" x2="1.588" y2="-3.81" width="0.1" layer="51"/>
<wire x1="0.991" y1="-3.492" x2="10.16" y2="-3.492" width="0" layer="150"/>
<wire x1="-0.381" y1="1.27" x2="-0.381" y2="-1.27" width="0.1" layer="51"/>
<wire x1="0" y1="1.143" x2="-0.381" y2="1.143" width="0.1" layer="51"/>
<wire x1="-0.381" y1="-1.143" x2="0" y2="-1.143" width="0.1" layer="51"/>
<wire x1="-0.952" y1="1.27" x2="-0.952" y2="6.604" width="0.1" layer="51"/>
<wire x1="0.381" y1="1.27" x2="2.159" y2="1.27" width="0.1" layer="51"/>
<wire x1="0.381" y1="-1.27" x2="0.381" y2="1.27" width="0.1" layer="51"/>
<wire x1="0.381" y1="-1.27" x2="2.159" y2="-1.27" width="0.1" layer="51"/>
<wire x1="2.159" y1="1.27" x2="2.159" y2="-1.27" width="0.1" layer="51"/>
<wire x1="0.381" y1="1.143" x2="0" y2="1.143" width="0.1" layer="51"/>
<wire x1="0" y1="-1.143" x2="0.381" y2="-1.143" width="0.1" layer="51"/>
<wire x1="2.54" y1="1.143" x2="2.159" y2="1.143" width="0.1" layer="51"/>
<wire x1="2.159" y1="-1.143" x2="2.54" y2="-1.143" width="0.1" layer="51"/>
<wire x1="1.588" y1="1.27" x2="1.588" y2="6.604" width="0.1" layer="51"/>
<wire x1="0.952" y1="6.604" x2="0.952" y2="1.27" width="0.1" layer="51"/>
<wire x1="-1.137" y1="7.112" x2="-0.952" y2="6.604" width="0.1" layer="51"/>
<wire x1="-1.403" y1="7.112" x2="-1.137" y2="7.112" width="0.1" layer="51"/>
<wire x1="1.137" y1="7.112" x2="0.952" y2="6.604" width="0.1" layer="51"/>
<wire x1="1.403" y1="7.112" x2="1.588" y2="6.604" width="0.1" layer="51"/>
<wire x1="1.137" y1="7.112" x2="1.403" y2="7.112" width="0.1" layer="51"/>
<wire x1="3.943" y1="-5.842" x2="4.128" y2="-5.334" width="0.1" layer="51"/>
<wire x1="3.677" y1="-5.842" x2="3.492" y2="-5.334" width="0.1" layer="51"/>
<wire x1="3.677" y1="-5.842" x2="3.943" y2="-5.842" width="0.1" layer="51"/>
<wire x1="3.492" y1="-1.27" x2="3.492" y2="-5.334" width="0.1" layer="51"/>
<wire x1="4.128" y1="-5.334" x2="4.128" y2="-1.27" width="0.1" layer="51"/>
<wire x1="3.492" y1="-3.81" x2="4.128" y2="-3.81" width="0.1" layer="51"/>
<wire x1="6.217" y1="-5.842" x2="6.032" y2="-5.334" width="0.1" layer="51"/>
<wire x1="6.032" y1="-1.27" x2="6.032" y2="-5.334" width="0.1" layer="51"/>
<wire x1="6.032" y1="-3.81" x2="6.668" y2="-3.81" width="0.1" layer="51"/>
<wire x1="2.921" y1="1.27" x2="4.699" y2="1.27" width="0.1" layer="51"/>
<wire x1="2.921" y1="-1.27" x2="2.921" y2="1.27" width="0.1" layer="51"/>
<wire x1="2.921" y1="-1.27" x2="4.699" y2="-1.27" width="0.1" layer="51"/>
<wire x1="4.699" y1="1.27" x2="4.699" y2="-1.27" width="0.1" layer="51"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1" layer="51"/>
<wire x1="2.54" y1="-1.143" x2="2.921" y2="-1.143" width="0.1" layer="51"/>
<wire x1="5.08" y1="1.143" x2="4.699" y2="1.143" width="0.1" layer="51"/>
<wire x1="4.699" y1="-1.143" x2="5.08" y2="-1.143" width="0.1" layer="51"/>
<wire x1="4.128" y1="1.27" x2="4.128" y2="6.604" width="0.1" layer="51"/>
<wire x1="3.492" y1="6.604" x2="3.492" y2="1.27" width="0.1" layer="51"/>
<wire x1="5.461" y1="1.27" x2="7.239" y2="1.27" width="0.1" layer="51"/>
<wire x1="5.461" y1="-1.27" x2="5.461" y2="1.27" width="0.1" layer="51"/>
<wire x1="5.461" y1="-1.27" x2="7.239" y2="-1.27" width="0.1" layer="51"/>
<wire x1="5.461" y1="1.143" x2="5.08" y2="1.143" width="0.1" layer="51"/>
<wire x1="5.08" y1="-1.143" x2="5.461" y2="-1.143" width="0.1" layer="51"/>
<wire x1="6.032" y1="6.604" x2="6.032" y2="1.27" width="0.1" layer="51"/>
<wire x1="3.677" y1="7.112" x2="3.492" y2="6.604" width="0.1" layer="51"/>
<wire x1="3.943" y1="7.112" x2="4.128" y2="6.604" width="0.1" layer="51"/>
<wire x1="3.677" y1="7.112" x2="3.943" y2="7.112" width="0.1" layer="51"/>
<wire x1="6.217" y1="7.112" x2="6.032" y2="6.604" width="0.1" layer="51"/>
<wire x1="8.89" y1="-5.984" x2="8.89" y2="-10.417" width="0" layer="150"/>
<wire x1="8.255" y1="-9.874" x2="8.89" y2="-9.716" width="0" layer="150"/>
<wire x1="8.89" y1="-9.716" x2="8.255" y2="-9.557" width="0" layer="150"/>
<wire x1="8.255" y1="-9.557" x2="8.382" y2="-9.716" width="0" layer="150"/>
<wire x1="8.382" y1="-9.716" x2="8.255" y2="-9.874" width="0" layer="150"/>
<wire x1="8.89" y1="-9.716" x2="8.318" y2="-9.636" width="0" layer="150"/>
<wire x1="8.318" y1="-9.636" x2="8.382" y2="-9.716" width="0" layer="150"/>
<wire x1="8.382" y1="-9.716" x2="8.89" y2="-9.716" width="0" layer="150"/>
<wire x1="8.89" y1="-9.716" x2="8.318" y2="-9.795" width="0" layer="150"/>
<wire x1="8.318" y1="-9.795" x2="8.255" y2="-9.874" width="0" layer="150"/>
<wire x1="6.483" y1="-5.842" x2="6.668" y2="-5.334" width="0.1" layer="51"/>
<wire x1="6.217" y1="-5.842" x2="6.483" y2="-5.842" width="0.1" layer="51"/>
<wire x1="6.668" y1="-5.334" x2="6.668" y2="-1.27" width="0.1" layer="51"/>
<wire x1="8.757" y1="-5.839" x2="9.023" y2="-5.839" width="0.1" layer="51"/>
<wire x1="8.757" y1="-5.839" x2="8.572" y2="-5.331" width="0.1" layer="51"/>
<wire x1="9.023" y1="-5.839" x2="9.208" y2="-5.331" width="0.1" layer="51"/>
<wire x1="9.208" y1="-5.331" x2="9.208" y2="-1.267" width="0.1" layer="51"/>
<wire x1="8.572" y1="-1.267" x2="8.572" y2="-5.331" width="0.1" layer="51"/>
<wire x1="8.572" y1="-3.807" x2="9.208" y2="-3.807" width="0.1" layer="51"/>
<wire x1="8.255" y1="-3.299" x2="8.255" y2="-2.347" width="0" layer="150"/>
<wire x1="9.525" y1="-3.299" x2="9.525" y2="-2.347" width="0" layer="150"/>
<wire x1="6.985" y1="-3.048" x2="8.255" y2="-3.048" width="0" layer="150"/>
<wire x1="7.62" y1="-3.207" x2="8.255" y2="-3.048" width="0" layer="150"/>
<wire x1="8.255" y1="-3.048" x2="7.62" y2="-2.889" width="0" layer="150"/>
<wire x1="7.62" y1="-2.889" x2="7.747" y2="-3.048" width="0" layer="150"/>
<wire x1="7.747" y1="-3.048" x2="7.62" y2="-3.207" width="0" layer="150"/>
<wire x1="8.255" y1="-3.048" x2="7.684" y2="-2.969" width="0" layer="150"/>
<wire x1="7.684" y1="-2.969" x2="7.747" y2="-3.048" width="0" layer="150"/>
<wire x1="7.747" y1="-3.048" x2="8.255" y2="-3.048" width="0" layer="150"/>
<wire x1="8.255" y1="-3.048" x2="7.684" y2="-3.127" width="0" layer="150"/>
<wire x1="7.684" y1="-3.127" x2="7.62" y2="-3.207" width="0" layer="150"/>
<wire x1="10.706" y1="-3.048" x2="9.525" y2="-3.048" width="0" layer="150"/>
<wire x1="10.16" y1="-2.889" x2="9.525" y2="-3.048" width="0" layer="150"/>
<wire x1="9.525" y1="-3.048" x2="10.16" y2="-3.207" width="0" layer="150"/>
<wire x1="10.16" y1="-3.207" x2="10.033" y2="-3.048" width="0" layer="150"/>
<wire x1="10.033" y1="-3.048" x2="10.16" y2="-2.889" width="0" layer="150"/>
<wire x1="9.525" y1="-3.048" x2="10.096" y2="-3.127" width="0" layer="150"/>
<wire x1="10.096" y1="-3.127" x2="10.033" y2="-3.048" width="0" layer="150"/>
<wire x1="10.033" y1="-3.048" x2="9.525" y2="-3.048" width="0" layer="150"/>
<wire x1="9.525" y1="-3.048" x2="10.096" y2="-2.969" width="0" layer="150"/>
<wire x1="10.096" y1="-2.969" x2="10.16" y2="-2.889" width="0" layer="150"/>
<wire x1="9.525" y1="-3.651" x2="10.16" y2="-3.492" width="0" layer="150"/>
<wire x1="10.16" y1="-3.492" x2="9.525" y2="-3.334" width="0" layer="150"/>
<wire x1="9.525" y1="-3.334" x2="9.652" y2="-3.492" width="0" layer="150"/>
<wire x1="9.652" y1="-3.492" x2="9.525" y2="-3.651" width="0" layer="150"/>
<wire x1="10.16" y1="-3.492" x2="9.588" y2="-3.413" width="0" layer="150"/>
<wire x1="9.588" y1="-3.413" x2="9.652" y2="-3.492" width="0" layer="150"/>
<wire x1="9.652" y1="-3.492" x2="10.16" y2="-3.492" width="0" layer="150"/>
<wire x1="10.16" y1="-3.492" x2="9.588" y2="-3.572" width="0" layer="150"/>
<wire x1="9.588" y1="-3.572" x2="9.525" y2="-3.651" width="0" layer="150"/>
<wire x1="7.239" y1="1.27" x2="7.239" y2="-1.27" width="0.1" layer="51"/>
<wire x1="7.62" y1="1.143" x2="7.239" y2="1.143" width="0.1" layer="51"/>
<wire x1="7.239" y1="-1.143" x2="7.62" y2="-1.143" width="0.1" layer="51"/>
<wire x1="6.668" y1="1.27" x2="6.668" y2="6.604" width="0.1" layer="51"/>
<wire x1="8.001" y1="1.146" x2="7.62" y2="1.146" width="0.1" layer="51"/>
<wire x1="7.62" y1="-1.14" x2="8.001" y2="-1.14" width="0.1" layer="51"/>
<wire x1="8.001" y1="1.273" x2="10.16" y2="1.273" width="0.1" layer="51"/>
<wire x1="8.001" y1="-1.267" x2="10.16" y2="-1.267" width="0.1" layer="51"/>
<wire x1="8.001" y1="-1.267" x2="8.001" y2="1.273" width="0.1" layer="51"/>
<wire x1="8.572" y1="6.607" x2="8.572" y2="1.273" width="0.1" layer="51"/>
<wire x1="9.208" y1="1.273" x2="9.208" y2="6.607" width="0.1" layer="51"/>
<wire x1="6.483" y1="7.112" x2="6.668" y2="6.604" width="0.1" layer="51"/>
<wire x1="6.217" y1="7.112" x2="6.483" y2="7.112" width="0.1" layer="51"/>
<wire x1="8.757" y1="7.115" x2="8.572" y2="6.607" width="0.1" layer="51"/>
<wire x1="8.757" y1="7.115" x2="9.023" y2="7.115" width="0.1" layer="51"/>
<wire x1="9.023" y1="7.115" x2="9.208" y2="6.607" width="0.1" layer="51"/>
<wire x1="10.607" y1="-6.858" x2="11.623" y2="-6.858" width="0" layer="150"/>
<wire x1="10.922" y1="-5.588" x2="10.922" y2="-6.858" width="0" layer="150"/>
<wire x1="10.763" y1="-6.223" x2="10.922" y2="-6.858" width="0" layer="150"/>
<wire x1="10.922" y1="-6.858" x2="11.081" y2="-6.223" width="0" layer="150"/>
<wire x1="11.081" y1="-6.223" x2="10.922" y2="-6.35" width="0" layer="150"/>
<wire x1="10.922" y1="-6.35" x2="10.763" y2="-6.223" width="0" layer="150"/>
<wire x1="10.922" y1="-6.858" x2="11.001" y2="-6.286" width="0" layer="150"/>
<wire x1="11.001" y1="-6.286" x2="10.922" y2="-6.35" width="0" layer="150"/>
<wire x1="10.922" y1="-6.35" x2="10.922" y2="-6.858" width="0" layer="150"/>
<wire x1="10.922" y1="-6.858" x2="10.843" y2="-6.286" width="0" layer="150"/>
<wire x1="10.843" y1="-6.286" x2="10.763" y2="-6.223" width="0" layer="150"/>
<wire x1="10.607" y1="-3.683" x2="11.623" y2="-3.683" width="0" layer="150"/>
<wire x1="10.922" y1="-4.953" x2="10.922" y2="-3.683" width="0" layer="150"/>
<wire x1="11.081" y1="-4.318" x2="10.922" y2="-3.683" width="0" layer="150"/>
<wire x1="10.922" y1="-3.683" x2="10.763" y2="-4.318" width="0" layer="150"/>
<wire x1="10.763" y1="-4.318" x2="10.922" y2="-4.191" width="0" layer="150"/>
<wire x1="10.922" y1="-4.191" x2="11.081" y2="-4.318" width="0" layer="150"/>
<wire x1="10.922" y1="-3.683" x2="10.843" y2="-4.254" width="0" layer="150"/>
<wire x1="10.843" y1="-4.254" x2="10.922" y2="-4.191" width="0" layer="150"/>
<wire x1="10.922" y1="-4.191" x2="10.922" y2="-3.683" width="0" layer="150"/>
<wire x1="10.922" y1="-3.683" x2="11.001" y2="-4.254" width="0" layer="150"/>
<wire x1="11.001" y1="-4.254" x2="11.081" y2="-4.318" width="0" layer="150"/>
<wire x1="10.16" y1="0.569" x2="10.16" y2="-4.194" width="0" layer="150"/>
<wire x1="10.16" y1="1.273" x2="10.16" y2="-1.267" width="0.1" layer="51"/>
<polygon width="0" layer="39">
<vertex x="-10.21" y="-6.924"/>
<vertex x="-10.21" y="7.165"/>
<vertex x="10.21" y="7.165"/>
<vertex x="10.21" y="-6.924"/>
</polygon>
<text x="-17.0431" y="-0.127" size="0.254003125" layer="150">2.540</text>
<text x="-11.8689" y="-5.293190625" size="1.27245" layer="21">1</text>
<text x="-11.8489" y="-5.28428125" size="1.270309375" layer="51">1</text>
<text x="-8.281159375" y="-8.319159375" size="0.2540375" layer="150">2.540</text>
<text x="-0.801115625" y="-9.855740625" size="0.25435625" layer="150">17.780</text>
<text x="-0.80158125" y="-3.62715" size="0.254503125" layer="150">20.320</text>
<text x="11.0923" y="-5.285509375" size="1.2706" layer="21">8</text>
<text x="11.1058" y="-5.29198125" size="1.272159375" layer="51">8</text>
<text x="10.912" y="-3.17938125" size="0.25435" layer="150">1.270</text>
<text x="10.2713" y="-5.402890625" size="0.25423125" layer="150">3.175</text>
<text x="-10.8484" y="-8.804959375" size="1.90541875" layer="25" align="bottom-right">&gt;NAME</text>
<text x="0" y="-5.986509375" size="0.635371875" layer="27" align="bottom-center">&gt;VALUE</text>
<rectangle x1="-9.582740625" y1="-6.92886875" x2="-8.204" y2="-3.642" layer="29"/>
<rectangle x1="-9.539259375" y1="-6.883290625" x2="-8.255" y2="-3.693" layer="31"/>
<rectangle x1="-7.045059375" y1="-6.932909375" x2="-5.664" y2="-3.642" layer="29"/>
<rectangle x1="-6.99596875" y1="-6.8838" x2="-5.715" y2="-3.693" layer="31"/>
<rectangle x1="-4.50353125" y1="-6.9356" x2="-3.124" y2="-3.642" layer="29"/>
<rectangle x1="-4.44698125" y1="-6.876059375" x2="-3.175" y2="-3.693" layer="31"/>
<rectangle x1="-1.9569" y1="-6.92716875" x2="-0.584" y2="-3.642" layer="29"/>
<rectangle x1="-1.9074" y1="-6.881659375" x2="-0.635" y2="-3.693" layer="31"/>
<rectangle x1="0.58426875" y1="-6.92718125" x2="1.956" y2="-3.642" layer="29"/>
<rectangle x1="0.635859375" y1="-6.882309375" x2="1.905" y2="-3.693" layer="31"/>
<rectangle x1="3.13005" y1="-6.93741875" x2="4.496" y2="-3.642" layer="29"/>
<rectangle x1="3.178659375" y1="-6.88091875" x2="4.445" y2="-3.693" layer="31"/>
<rectangle x1="5.673509375" y1="-6.93563125" x2="7.036" y2="-3.642" layer="29"/>
<rectangle x1="5.721559375" y1="-6.88088125" x2="6.985" y2="-3.693" layer="31"/>
<rectangle x1="8.21251875" y1="-6.931190625" x2="9.576" y2="-3.642" layer="29"/>
<rectangle x1="8.268090625" y1="-6.8839" x2="9.525" y2="-3.693" layer="31"/>
<smd name="1" x="-8.89" y="-5.283" dx="1.27" dy="3.18" layer="1" stop="no"/>
<smd name="2" x="-6.35" y="-5.283" dx="1.27" dy="3.18" layer="1" stop="no"/>
<smd name="3" x="-3.81" y="-5.283" dx="1.27" dy="3.18" layer="1" stop="no"/>
<smd name="4" x="-1.27" y="-5.283" dx="1.27" dy="3.18" layer="1" stop="no"/>
<smd name="5" x="1.27" y="-5.283" dx="1.27" dy="3.18" layer="1" stop="no"/>
<smd name="6" x="3.81" y="-5.283" dx="1.27" dy="3.18" layer="1" stop="no"/>
<smd name="7" x="6.35" y="-5.283" dx="1.27" dy="3.18" layer="1" stop="no"/>
<smd name="8" x="8.89" y="-5.283" dx="1.27" dy="3.18" layer="1" stop="no"/>
</package>
<package name="SOT-223" urn="urn:adsk.eagle:footprint:10905992/1">
<smd name="4" x="0" y="3.375" dx="1.26" dy="3.19" layer="1" rot="R90"/>
<smd name="1" x="-2.3" y="-3.375" dx="1.26" dy="0.96" layer="1" rot="R270"/>
<smd name="2" x="0" y="-3.375" dx="1.26" dy="0.96" layer="1" rot="R270"/>
<smd name="3" x="2.3" y="-3.375" dx="1.26" dy="0.96" layer="1" rot="R270"/>
<wire x1="-3.35" y1="1.85" x2="3.35" y2="1.85" width="0.127" layer="51"/>
<wire x1="3.35" y1="1.85" x2="3.35" y2="-1.85" width="0.127" layer="51"/>
<wire x1="3.35" y1="-1.85" x2="-3.35" y2="-1.85" width="0.127" layer="51"/>
<wire x1="-3.35" y1="-1.85" x2="-3.35" y2="1.85" width="0.127" layer="51"/>
<wire x1="-3.35" y1="1.85" x2="3.35" y2="1.85" width="0.127" layer="21"/>
<wire x1="3.35" y1="1.85" x2="3.35" y2="-1.85" width="0.127" layer="21"/>
<wire x1="3.35" y1="-1.85" x2="-3.35" y2="-1.85" width="0.127" layer="21"/>
<wire x1="-3.35" y1="-1.85" x2="-3.35" y2="1.85" width="0.127" layer="21"/>
<wire x1="-1.85" y1="2.1" x2="-1.85" y2="4.26" width="0.05" layer="39"/>
<wire x1="-1.85" y1="4.26" x2="1.85" y2="4.26" width="0.05" layer="39"/>
<wire x1="1.85" y1="4.26" x2="1.85" y2="2.1" width="0.05" layer="39"/>
<wire x1="1.85" y1="2.1" x2="3.6" y2="2.1" width="0.05" layer="39"/>
<wire x1="3.6" y1="2.1" x2="3.6" y2="-2.1" width="0.05" layer="39"/>
<wire x1="3.6" y1="-2.1" x2="3.03" y2="-2.1" width="0.05" layer="39"/>
<wire x1="3.03" y1="-2.1" x2="3.03" y2="-4.26" width="0.05" layer="39"/>
<wire x1="3.03" y1="-4.26" x2="-3.03" y2="-4.26" width="0.05" layer="39"/>
<wire x1="-3.03" y1="-4.26" x2="-3.03" y2="-2.1" width="0.05" layer="39"/>
<wire x1="-3.03" y1="-2.1" x2="-3.6" y2="-2.1" width="0.05" layer="39"/>
<wire x1="-3.6" y1="-2.1" x2="-3.6" y2="2.1" width="0.05" layer="39"/>
<wire x1="-3.6" y1="2.1" x2="-1.85" y2="2.1" width="0.05" layer="39"/>
<circle x="-2.25" y="-4.5" radius="0.1" width="0.2" layer="21"/>
<text x="-3.5" y="4.5" size="0.8128" layer="25">&gt;NAME</text>
<text x="-3.25" y="-5.5" size="0.8128" layer="27">&gt;VALUE</text>
</package>
<package name="CAP_0805" urn="urn:adsk.eagle:footprint:10872887/1">
<description>Resistor, Chip; 2.00 mm L X 1.25 mm W X 0.85 mm H body&lt;p&gt;&lt;i&gt;PCB Libraries Packages&lt;/i&gt;</description>
<smd name="1" x="-0.84" y="0" dx="1.05" dy="1.38" layer="1" roundness="48" rot="R180" stop="no" cream="no"/>
<smd name="2" x="0.84" y="0" dx="1.05" dy="1.38" layer="1" roundness="48" stop="no" cream="no"/>
<polygon width="0.01" layer="29">
<vertex x="-0.84" y="0.69"/>
<vertex x="-0.565" y="0.69"/>
<vertex x="-0.5259" y="0.6869"/>
<vertex x="-0.4877" y="0.6778"/>
<vertex x="-0.4515" y="0.6628"/>
<vertex x="-0.4181" y="0.6423"/>
<vertex x="-0.3882" y="0.6168"/>
<vertex x="-0.3627" y="0.5869"/>
<vertex x="-0.3422" y="0.5535"/>
<vertex x="-0.3272" y="0.5173"/>
<vertex x="-0.3181" y="0.4791"/>
<vertex x="-0.315" y="-0.44"/>
<vertex x="-0.3181" y="-0.4791"/>
<vertex x="-0.3272" y="-0.5173"/>
<vertex x="-0.3422" y="-0.5535"/>
<vertex x="-0.3627" y="-0.5869"/>
<vertex x="-0.3882" y="-0.6168"/>
<vertex x="-0.4181" y="-0.6423"/>
<vertex x="-0.4515" y="-0.6628"/>
<vertex x="-0.4877" y="-0.6778"/>
<vertex x="-0.5259" y="-0.6869"/>
<vertex x="-0.565" y="-0.69"/>
<vertex x="-1.115" y="-0.69"/>
<vertex x="-1.1541" y="-0.6869"/>
<vertex x="-1.1923" y="-0.6778"/>
<vertex x="-1.2285" y="-0.6628"/>
<vertex x="-1.2619" y="-0.6423"/>
<vertex x="-1.2918" y="-0.6168"/>
<vertex x="-1.3173" y="-0.5869"/>
<vertex x="-1.3378" y="-0.5535"/>
<vertex x="-1.3528" y="-0.5173"/>
<vertex x="-1.3619" y="-0.4791"/>
<vertex x="-1.365" y="0.44"/>
<vertex x="-1.3619" y="0.4791"/>
<vertex x="-1.3528" y="0.5173"/>
<vertex x="-1.3378" y="0.5535"/>
<vertex x="-1.3173" y="0.5869"/>
<vertex x="-1.2918" y="0.6168"/>
<vertex x="-1.2619" y="0.6423"/>
<vertex x="-1.2285" y="0.6628"/>
<vertex x="-1.1923" y="0.6778"/>
<vertex x="-1.1541" y="0.6869"/>
<vertex x="-1.115" y="0.69"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="-0.84" y="0.69"/>
<vertex x="-0.565" y="0.69"/>
<vertex x="-0.5259" y="0.6869"/>
<vertex x="-0.4877" y="0.6778"/>
<vertex x="-0.4515" y="0.6628"/>
<vertex x="-0.4181" y="0.6423"/>
<vertex x="-0.3882" y="0.6168"/>
<vertex x="-0.3627" y="0.5869"/>
<vertex x="-0.3422" y="0.5535"/>
<vertex x="-0.3272" y="0.5173"/>
<vertex x="-0.3181" y="0.4791"/>
<vertex x="-0.315" y="-0.44"/>
<vertex x="-0.3181" y="-0.4791"/>
<vertex x="-0.3272" y="-0.5173"/>
<vertex x="-0.3422" y="-0.5535"/>
<vertex x="-0.3627" y="-0.5869"/>
<vertex x="-0.3882" y="-0.6168"/>
<vertex x="-0.4181" y="-0.6423"/>
<vertex x="-0.4515" y="-0.6628"/>
<vertex x="-0.4877" y="-0.6778"/>
<vertex x="-0.5259" y="-0.6869"/>
<vertex x="-0.565" y="-0.69"/>
<vertex x="-1.115" y="-0.69"/>
<vertex x="-1.1541" y="-0.6869"/>
<vertex x="-1.1923" y="-0.6778"/>
<vertex x="-1.2285" y="-0.6628"/>
<vertex x="-1.2619" y="-0.6423"/>
<vertex x="-1.2918" y="-0.6168"/>
<vertex x="-1.3173" y="-0.5869"/>
<vertex x="-1.3378" y="-0.5535"/>
<vertex x="-1.3528" y="-0.5173"/>
<vertex x="-1.3619" y="-0.4791"/>
<vertex x="-1.365" y="0.44"/>
<vertex x="-1.3619" y="0.4791"/>
<vertex x="-1.3528" y="0.5173"/>
<vertex x="-1.3378" y="0.5535"/>
<vertex x="-1.3173" y="0.5869"/>
<vertex x="-1.2918" y="0.6168"/>
<vertex x="-1.2619" y="0.6423"/>
<vertex x="-1.2285" y="0.6628"/>
<vertex x="-1.1923" y="0.6778"/>
<vertex x="-1.1541" y="0.6869"/>
<vertex x="-1.115" y="0.69"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="0.84" y="-0.69"/>
<vertex x="0.565" y="-0.69"/>
<vertex x="0.5259" y="-0.6869"/>
<vertex x="0.4877" y="-0.6778"/>
<vertex x="0.4515" y="-0.6628"/>
<vertex x="0.4181" y="-0.6423"/>
<vertex x="0.3882" y="-0.6168"/>
<vertex x="0.3627" y="-0.5869"/>
<vertex x="0.3422" y="-0.5535"/>
<vertex x="0.3272" y="-0.5173"/>
<vertex x="0.3181" y="-0.4791"/>
<vertex x="0.315" y="0.44"/>
<vertex x="0.3181" y="0.4791"/>
<vertex x="0.3272" y="0.5173"/>
<vertex x="0.3422" y="0.5535"/>
<vertex x="0.3627" y="0.5869"/>
<vertex x="0.3882" y="0.6168"/>
<vertex x="0.4181" y="0.6423"/>
<vertex x="0.4515" y="0.6628"/>
<vertex x="0.4877" y="0.6778"/>
<vertex x="0.5259" y="0.6869"/>
<vertex x="0.565" y="0.69"/>
<vertex x="1.115" y="0.69"/>
<vertex x="1.1541" y="0.6869"/>
<vertex x="1.1923" y="0.6778"/>
<vertex x="1.2285" y="0.6628"/>
<vertex x="1.2619" y="0.6423"/>
<vertex x="1.2918" y="0.6168"/>
<vertex x="1.3173" y="0.5869"/>
<vertex x="1.3378" y="0.5535"/>
<vertex x="1.3528" y="0.5173"/>
<vertex x="1.3619" y="0.4791"/>
<vertex x="1.365" y="-0.44"/>
<vertex x="1.3619" y="-0.4791"/>
<vertex x="1.3528" y="-0.5173"/>
<vertex x="1.3378" y="-0.5535"/>
<vertex x="1.3173" y="-0.5869"/>
<vertex x="1.2918" y="-0.6168"/>
<vertex x="1.2619" y="-0.6423"/>
<vertex x="1.2285" y="-0.6628"/>
<vertex x="1.1923" y="-0.6778"/>
<vertex x="1.1541" y="-0.6869"/>
<vertex x="1.115" y="-0.69"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="0.84" y="-0.69"/>
<vertex x="0.565" y="-0.69"/>
<vertex x="0.5259" y="-0.6869"/>
<vertex x="0.4877" y="-0.6778"/>
<vertex x="0.4515" y="-0.6628"/>
<vertex x="0.4181" y="-0.6423"/>
<vertex x="0.3882" y="-0.6168"/>
<vertex x="0.3627" y="-0.5869"/>
<vertex x="0.3422" y="-0.5535"/>
<vertex x="0.3272" y="-0.5173"/>
<vertex x="0.3181" y="-0.4791"/>
<vertex x="0.315" y="0.44"/>
<vertex x="0.3181" y="0.4791"/>
<vertex x="0.3272" y="0.5173"/>
<vertex x="0.3422" y="0.5535"/>
<vertex x="0.3627" y="0.5869"/>
<vertex x="0.3882" y="0.6168"/>
<vertex x="0.4181" y="0.6423"/>
<vertex x="0.4515" y="0.6628"/>
<vertex x="0.4877" y="0.6778"/>
<vertex x="0.5259" y="0.6869"/>
<vertex x="0.565" y="0.69"/>
<vertex x="1.115" y="0.69"/>
<vertex x="1.1541" y="0.6869"/>
<vertex x="1.1923" y="0.6778"/>
<vertex x="1.2285" y="0.6628"/>
<vertex x="1.2619" y="0.6423"/>
<vertex x="1.2918" y="0.6168"/>
<vertex x="1.3173" y="0.5869"/>
<vertex x="1.3378" y="0.5535"/>
<vertex x="1.3528" y="0.5173"/>
<vertex x="1.3619" y="0.4791"/>
<vertex x="1.365" y="-0.44"/>
<vertex x="1.3619" y="-0.4791"/>
<vertex x="1.3528" y="-0.5173"/>
<vertex x="1.3378" y="-0.5535"/>
<vertex x="1.3173" y="-0.5869"/>
<vertex x="1.2918" y="-0.6168"/>
<vertex x="1.2619" y="-0.6423"/>
<vertex x="1.2285" y="-0.6628"/>
<vertex x="1.1923" y="-0.6778"/>
<vertex x="1.1541" y="-0.6869"/>
<vertex x="1.115" y="-0.69"/>
</polygon>
<wire x1="-0.5" y1="0.625" x2="-0.5" y2="-0.625" width="0.025" layer="51"/>
<wire x1="-0.5" y1="-0.625" x2="-1" y2="-0.625" width="0.025" layer="51"/>
<wire x1="-1" y1="-0.625" x2="-1" y2="0.625" width="0.025" layer="51"/>
<wire x1="-1" y1="0.625" x2="-0.5" y2="0.625" width="0.025" layer="51"/>
<wire x1="0.5" y1="-0.625" x2="0.5" y2="0.625" width="0.025" layer="51"/>
<wire x1="0.5" y1="0.625" x2="1" y2="0.625" width="0.025" layer="51"/>
<wire x1="1" y1="0.625" x2="1" y2="-0.625" width="0.025" layer="51"/>
<wire x1="1" y1="-0.625" x2="0.5" y2="-0.625" width="0.025" layer="51"/>
<wire x1="-1" y1="-0.625" x2="-1" y2="0.625" width="0.025" layer="51"/>
<wire x1="-1" y1="0.625" x2="1" y2="0.625" width="0.025" layer="51"/>
<wire x1="1" y1="0.625" x2="1" y2="-0.625" width="0.025" layer="51"/>
<wire x1="1" y1="-0.625" x2="-1" y2="-0.625" width="0.025" layer="51"/>
<wire x1="-1.05" y1="-0.68" x2="-1.05" y2="0.68" width="0.12" layer="51"/>
<wire x1="-1.05" y1="0.68" x2="1.05" y2="0.68" width="0.12" layer="51"/>
<wire x1="1.05" y1="0.68" x2="1.05" y2="-0.68" width="0.12" layer="51"/>
<wire x1="1.05" y1="-0.68" x2="-1.05" y2="-0.68" width="0.12" layer="51"/>
<wire x1="-0.135" y1="0.68" x2="0.135" y2="0.68" width="0.12" layer="21"/>
<wire x1="-0.135" y1="-0.68" x2="0.135" y2="-0.68" width="0.12" layer="21"/>
<wire x1="-1.57" y1="-0.89" x2="-1.57" y2="0.89" width="0.05" layer="39"/>
<wire x1="-1.57" y1="0.89" x2="1.57" y2="0.89" width="0.05" layer="39"/>
<wire x1="1.57" y1="0.89" x2="1.57" y2="-0.89" width="0.05" layer="39"/>
<wire x1="1.57" y1="-0.89" x2="-1.57" y2="-0.89" width="0.05" layer="39"/>
<wire x1="0.35" y1="0" x2="-0.35" y2="0" width="0.05" layer="39"/>
<wire x1="0" y1="0.35" x2="0" y2="-0.35" width="0.05" layer="39"/>
<circle x="0" y="0" radius="0.25" width="0.05" layer="39"/>
<text x="-1.524" y="-1.778" size="0.6096" layer="27" ratio="10">&gt;VALUE</text>
<text x="-1.778" y="1.27" size="0.6096" layer="25" ratio="10">&gt;NAME</text>
</package>
<package name="RES_0402" urn="urn:adsk.eagle:footprint:10872880/1">
<description>Resistor, Chip; 1.00 mm L X 0.50 mm W X 0.35 mm H body&lt;p&gt;&lt;i&gt;PCB Libraries Packages&lt;/i&gt;</description>
<smd name="1" x="-0.46" y="0" dx="0.58" dy="0.58" layer="1" roundness="52" rot="R180"/>
<smd name="2" x="0.46" y="0" dx="0.58" dy="0.58" layer="1" roundness="52"/>
<wire x1="-0.25" y1="0.25" x2="-0.25" y2="-0.25" width="0.025" layer="51"/>
<wire x1="-0.25" y1="-0.25" x2="-0.5" y2="-0.25" width="0.025" layer="51"/>
<wire x1="-0.5" y1="-0.25" x2="-0.5" y2="0.25" width="0.025" layer="51"/>
<wire x1="-0.5" y1="0.25" x2="-0.25" y2="0.25" width="0.025" layer="51"/>
<wire x1="0.25" y1="-0.25" x2="0.25" y2="0.25" width="0.025" layer="51"/>
<wire x1="0.25" y1="0.25" x2="0.5" y2="0.25" width="0.025" layer="51"/>
<wire x1="0.5" y1="0.25" x2="0.5" y2="-0.25" width="0.025" layer="51"/>
<wire x1="0.5" y1="-0.25" x2="0.25" y2="-0.25" width="0.025" layer="51"/>
<wire x1="-0.5" y1="-0.25" x2="-0.5" y2="0.25" width="0.025" layer="51"/>
<wire x1="-0.5" y1="0.25" x2="0.5" y2="0.25" width="0.025" layer="51"/>
<wire x1="0.5" y1="0.25" x2="0.5" y2="-0.25" width="0.025" layer="51"/>
<wire x1="0.5" y1="-0.25" x2="-0.5" y2="-0.25" width="0.025" layer="51"/>
<wire x1="-0.53" y1="-0.28" x2="-0.53" y2="0.28" width="0.12" layer="51"/>
<wire x1="-0.53" y1="0.28" x2="0.53" y2="0.28" width="0.12" layer="51"/>
<wire x1="0.53" y1="0.28" x2="0.53" y2="-0.28" width="0.12" layer="51"/>
<wire x1="0.53" y1="-0.28" x2="-0.53" y2="-0.28" width="0.12" layer="51"/>
<wire x1="-0.9" y1="-0.44" x2="-0.9" y2="0.44" width="0.05" layer="39"/>
<wire x1="-0.9" y1="0.44" x2="0.9" y2="0.44" width="0.05" layer="39"/>
<wire x1="0.9" y1="0.44" x2="0.9" y2="-0.44" width="0.05" layer="39"/>
<wire x1="0.9" y1="-0.44" x2="-0.9" y2="-0.44" width="0.05" layer="39"/>
<wire x1="0.22" y1="0" x2="-0.22" y2="0" width="0.05" layer="39"/>
<wire x1="0" y1="0.22" x2="0" y2="-0.22" width="0.05" layer="39"/>
<wire x1="-0.11" y1="0.28" x2="0.09" y2="0.28" width="0.127" layer="21"/>
<wire x1="-0.1" y1="-0.28" x2="0.1" y2="-0.28" width="0.127" layer="21"/>
<circle x="0" y="0" radius="0.165" width="0.05" layer="39"/>
<text x="-1.27" y="-1.016" size="0.5" layer="27" ratio="10">&gt;VALUE</text>
<text x="-1.27" y="0.508" size="0.5" layer="25" ratio="10">&gt;NAME</text>
</package>
<package name="LED-0603" urn="urn:adsk.eagle:footprint:10893497/1">
<description>LED, Chip; 1.60 mm L X 0.80 mm W X 0.80 mm H body&lt;p&gt;&lt;i&gt;PCB Libraries Packages&lt;/i&gt;</description>
<smd name="C" x="-0.735" y="0" dx="0.86" dy="0.93" layer="1" roundness="51" rot="R180" stop="no" cream="no"/>
<smd name="A" x="0.735" y="0" dx="0.86" dy="0.93" layer="1" roundness="51" stop="no" cream="no"/>
<polygon width="0.01" layer="29">
<vertex x="-0.735" y="0.465"/>
<vertex x="-0.525" y="0.465"/>
<vertex x="-0.4906" y="0.4623"/>
<vertex x="-0.457" y="0.4542"/>
<vertex x="-0.4251" y="0.441"/>
<vertex x="-0.3957" y="0.423"/>
<vertex x="-0.3694" y="0.4006"/>
<vertex x="-0.347" y="0.3743"/>
<vertex x="-0.329" y="0.3449"/>
<vertex x="-0.3158" y="0.313"/>
<vertex x="-0.3077" y="0.2794"/>
<vertex x="-0.305" y="-0.245"/>
<vertex x="-0.3077" y="-0.2794"/>
<vertex x="-0.3158" y="-0.313"/>
<vertex x="-0.329" y="-0.3449"/>
<vertex x="-0.347" y="-0.3743"/>
<vertex x="-0.3694" y="-0.4006"/>
<vertex x="-0.3957" y="-0.423"/>
<vertex x="-0.4251" y="-0.441"/>
<vertex x="-0.457" y="-0.4542"/>
<vertex x="-0.4906" y="-0.4623"/>
<vertex x="-0.525" y="-0.465"/>
<vertex x="-0.945" y="-0.465"/>
<vertex x="-0.9794" y="-0.4623"/>
<vertex x="-1.013" y="-0.4542"/>
<vertex x="-1.0449" y="-0.441"/>
<vertex x="-1.0743" y="-0.423"/>
<vertex x="-1.1006" y="-0.4006"/>
<vertex x="-1.123" y="-0.3743"/>
<vertex x="-1.141" y="-0.3449"/>
<vertex x="-1.1542" y="-0.313"/>
<vertex x="-1.1623" y="-0.2794"/>
<vertex x="-1.165" y="0.245"/>
<vertex x="-1.1623" y="0.2794"/>
<vertex x="-1.1542" y="0.313"/>
<vertex x="-1.141" y="0.3449"/>
<vertex x="-1.123" y="0.3743"/>
<vertex x="-1.1006" y="0.4006"/>
<vertex x="-1.0743" y="0.423"/>
<vertex x="-1.0449" y="0.441"/>
<vertex x="-1.013" y="0.4542"/>
<vertex x="-0.9794" y="0.4623"/>
<vertex x="-0.945" y="0.465"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="-0.735" y="0.465"/>
<vertex x="-0.525" y="0.465"/>
<vertex x="-0.4906" y="0.4623"/>
<vertex x="-0.457" y="0.4542"/>
<vertex x="-0.4251" y="0.441"/>
<vertex x="-0.3957" y="0.423"/>
<vertex x="-0.3694" y="0.4006"/>
<vertex x="-0.347" y="0.3743"/>
<vertex x="-0.329" y="0.3449"/>
<vertex x="-0.3158" y="0.313"/>
<vertex x="-0.3077" y="0.2794"/>
<vertex x="-0.305" y="-0.245"/>
<vertex x="-0.3077" y="-0.2794"/>
<vertex x="-0.3158" y="-0.313"/>
<vertex x="-0.329" y="-0.3449"/>
<vertex x="-0.347" y="-0.3743"/>
<vertex x="-0.3694" y="-0.4006"/>
<vertex x="-0.3957" y="-0.423"/>
<vertex x="-0.4251" y="-0.441"/>
<vertex x="-0.457" y="-0.4542"/>
<vertex x="-0.4906" y="-0.4623"/>
<vertex x="-0.525" y="-0.465"/>
<vertex x="-0.945" y="-0.465"/>
<vertex x="-0.9794" y="-0.4623"/>
<vertex x="-1.013" y="-0.4542"/>
<vertex x="-1.0449" y="-0.441"/>
<vertex x="-1.0743" y="-0.423"/>
<vertex x="-1.1006" y="-0.4006"/>
<vertex x="-1.123" y="-0.3743"/>
<vertex x="-1.141" y="-0.3449"/>
<vertex x="-1.1542" y="-0.313"/>
<vertex x="-1.1623" y="-0.2794"/>
<vertex x="-1.165" y="0.245"/>
<vertex x="-1.1623" y="0.2794"/>
<vertex x="-1.1542" y="0.313"/>
<vertex x="-1.141" y="0.3449"/>
<vertex x="-1.123" y="0.3743"/>
<vertex x="-1.1006" y="0.4006"/>
<vertex x="-1.0743" y="0.423"/>
<vertex x="-1.0449" y="0.441"/>
<vertex x="-1.013" y="0.4542"/>
<vertex x="-0.9794" y="0.4623"/>
<vertex x="-0.945" y="0.465"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="0.735" y="-0.465"/>
<vertex x="0.525" y="-0.465"/>
<vertex x="0.4906" y="-0.4623"/>
<vertex x="0.457" y="-0.4542"/>
<vertex x="0.4251" y="-0.441"/>
<vertex x="0.3957" y="-0.423"/>
<vertex x="0.3694" y="-0.4006"/>
<vertex x="0.347" y="-0.3743"/>
<vertex x="0.329" y="-0.3449"/>
<vertex x="0.3158" y="-0.313"/>
<vertex x="0.3077" y="-0.2794"/>
<vertex x="0.305" y="0.245"/>
<vertex x="0.3077" y="0.2794"/>
<vertex x="0.3158" y="0.313"/>
<vertex x="0.329" y="0.3449"/>
<vertex x="0.347" y="0.3743"/>
<vertex x="0.3694" y="0.4006"/>
<vertex x="0.3957" y="0.423"/>
<vertex x="0.4251" y="0.441"/>
<vertex x="0.457" y="0.4542"/>
<vertex x="0.4906" y="0.4623"/>
<vertex x="0.525" y="0.465"/>
<vertex x="0.945" y="0.465"/>
<vertex x="0.9794" y="0.4623"/>
<vertex x="1.013" y="0.4542"/>
<vertex x="1.0449" y="0.441"/>
<vertex x="1.0743" y="0.423"/>
<vertex x="1.1006" y="0.4006"/>
<vertex x="1.123" y="0.3743"/>
<vertex x="1.141" y="0.3449"/>
<vertex x="1.1542" y="0.313"/>
<vertex x="1.1623" y="0.2794"/>
<vertex x="1.165" y="-0.245"/>
<vertex x="1.1623" y="-0.2794"/>
<vertex x="1.1542" y="-0.313"/>
<vertex x="1.141" y="-0.3449"/>
<vertex x="1.123" y="-0.3743"/>
<vertex x="1.1006" y="-0.4006"/>
<vertex x="1.0743" y="-0.423"/>
<vertex x="1.0449" y="-0.441"/>
<vertex x="1.013" y="-0.4542"/>
<vertex x="0.9794" y="-0.4623"/>
<vertex x="0.945" y="-0.465"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="0.735" y="-0.465"/>
<vertex x="0.525" y="-0.465"/>
<vertex x="0.4906" y="-0.4623"/>
<vertex x="0.457" y="-0.4542"/>
<vertex x="0.4251" y="-0.441"/>
<vertex x="0.3957" y="-0.423"/>
<vertex x="0.3694" y="-0.4006"/>
<vertex x="0.347" y="-0.3743"/>
<vertex x="0.329" y="-0.3449"/>
<vertex x="0.3158" y="-0.313"/>
<vertex x="0.3077" y="-0.2794"/>
<vertex x="0.305" y="0.245"/>
<vertex x="0.3077" y="0.2794"/>
<vertex x="0.3158" y="0.313"/>
<vertex x="0.329" y="0.3449"/>
<vertex x="0.347" y="0.3743"/>
<vertex x="0.3694" y="0.4006"/>
<vertex x="0.3957" y="0.423"/>
<vertex x="0.4251" y="0.441"/>
<vertex x="0.457" y="0.4542"/>
<vertex x="0.4906" y="0.4623"/>
<vertex x="0.525" y="0.465"/>
<vertex x="0.945" y="0.465"/>
<vertex x="0.9794" y="0.4623"/>
<vertex x="1.013" y="0.4542"/>
<vertex x="1.0449" y="0.441"/>
<vertex x="1.0743" y="0.423"/>
<vertex x="1.1006" y="0.4006"/>
<vertex x="1.123" y="0.3743"/>
<vertex x="1.141" y="0.3449"/>
<vertex x="1.1542" y="0.313"/>
<vertex x="1.1623" y="0.2794"/>
<vertex x="1.165" y="-0.245"/>
<vertex x="1.1623" y="-0.2794"/>
<vertex x="1.1542" y="-0.313"/>
<vertex x="1.141" y="-0.3449"/>
<vertex x="1.123" y="-0.3743"/>
<vertex x="1.1006" y="-0.4006"/>
<vertex x="1.0743" y="-0.423"/>
<vertex x="1.0449" y="-0.441"/>
<vertex x="1.013" y="-0.4542"/>
<vertex x="0.9794" y="-0.4623"/>
<vertex x="0.945" y="-0.465"/>
</polygon>
<wire x1="-0.4" y1="0.4" x2="-0.4" y2="-0.4" width="0.025" layer="51"/>
<wire x1="-0.4" y1="-0.4" x2="-0.8" y2="-0.4" width="0.025" layer="51"/>
<wire x1="-0.8" y1="0.4" x2="-0.4" y2="0.4" width="0.025" layer="51"/>
<wire x1="0.4" y1="-0.4" x2="0.4" y2="0.4" width="0.025" layer="51"/>
<wire x1="0.4" y1="0.4" x2="0.8" y2="0.4" width="0.025" layer="51"/>
<wire x1="0.8" y1="-0.4" x2="0.4" y2="-0.4" width="0.025" layer="51"/>
<wire x1="-0.8" y1="-0.4" x2="-0.8" y2="0.4" width="0.025" layer="51"/>
<wire x1="-0.4" y1="0.4" x2="0.4" y2="0.4" width="0.025" layer="51"/>
<wire x1="0.8" y1="0.4" x2="0.8" y2="-0.4" width="0.025" layer="51"/>
<wire x1="0.4" y1="-0.4" x2="-0.4" y2="-0.4" width="0.025" layer="51"/>
<wire x1="-0.85" y1="-0.45" x2="-0.85" y2="0.45" width="0.12" layer="51"/>
<wire x1="-0.85" y1="0.45" x2="0.85" y2="0.45" width="0.12" layer="51"/>
<wire x1="0.85" y1="0.45" x2="0.85" y2="-0.45" width="0.12" layer="51"/>
<wire x1="0.85" y1="-0.45" x2="-0.85" y2="-0.45" width="0.12" layer="51"/>
<wire x1="-0.125" y1="0.45" x2="0.125" y2="0.45" width="0.12" layer="21"/>
<wire x1="-0.125" y1="-0.45" x2="0.125" y2="-0.45" width="0.12" layer="21"/>
<wire x1="-1.37" y1="-0.67" x2="-1.37" y2="0.67" width="0.05" layer="39"/>
<wire x1="-1.37" y1="0.67" x2="1.37" y2="0.67" width="0.05" layer="39"/>
<wire x1="1.37" y1="0.67" x2="1.37" y2="-0.67" width="0.05" layer="39"/>
<wire x1="1.37" y1="-0.67" x2="-1.37" y2="-0.67" width="0.05" layer="39"/>
<wire x1="0.335" y1="0" x2="-0.335" y2="0" width="0.05" layer="39"/>
<wire x1="0" y1="0.335" x2="0" y2="-0.335" width="0.05" layer="39"/>
<circle x="0" y="0" radius="0.25" width="0.05" layer="39"/>
<text x="-1.27" y="-1.27" size="0.5" layer="27" ratio="10">&gt;VALUE</text>
<text x="-1.27" y="0.762" size="0.5" layer="25" ratio="10">&gt;NAME</text>
<rectangle x1="-0.25" y1="-0.5" x2="0" y2="0.5" layer="21"/>
</package>
<package name="CON10_2X5_TU_SSQ" urn="urn:adsk.eagle:footprint:9232465/2">
<pad name="1" x="5.08" y="-1.27" drill="1.016" rot="R270"/>
<pad name="2" x="5.08" y="1.27" drill="1.016" rot="R270"/>
<pad name="3" x="2.54" y="-1.27" drill="1.016" rot="R270"/>
<pad name="4" x="2.54" y="1.27" drill="1.016" rot="R270"/>
<pad name="5" x="0" y="-1.27" drill="1.016" rot="R270"/>
<pad name="6" x="0" y="1.27" drill="1.016" rot="R270"/>
<pad name="7" x="-2.54" y="-1.27" drill="1.016" rot="R270"/>
<pad name="8" x="-2.54" y="1.27" drill="1.016" rot="R270"/>
<pad name="9" x="-5.08" y="-1.27" drill="1.016" rot="R270"/>
<pad name="10" x="-5.08" y="1.27" drill="1.016" rot="R270"/>
<wire x1="6.858" y1="2.7432" x2="6.35" y2="2.7432" width="0.1524" layer="51"/>
<wire x1="6.35" y1="2.7432" x2="6.35" y2="2.5908" width="0.1524" layer="51"/>
<wire x1="6.35" y1="2.5908" x2="-6.35" y2="2.5908" width="0.1524" layer="51"/>
<wire x1="-6.35" y1="2.5908" x2="-6.35" y2="2.7432" width="0.1524" layer="51"/>
<wire x1="-6.35" y1="2.7432" x2="-6.858" y2="2.7432" width="0.1524" layer="51"/>
<wire x1="-6.858" y1="2.7432" x2="-6.858" y2="-2.7178" width="0.1524" layer="51"/>
<wire x1="-6.858" y1="-2.7178" x2="-6.35" y2="-2.7178" width="0.1524" layer="51"/>
<wire x1="-6.35" y1="-2.7178" x2="-6.35" y2="-2.5908" width="0.1524" layer="51"/>
<wire x1="-6.35" y1="-2.5908" x2="6.35" y2="-2.5908" width="0.1524" layer="51"/>
<wire x1="6.35" y1="-2.5908" x2="6.35" y2="-2.7178" width="0.1524" layer="51"/>
<wire x1="6.35" y1="-2.7178" x2="6.858" y2="-2.7178" width="0.1524" layer="51"/>
<wire x1="6.858" y1="-2.7178" x2="6.858" y2="2.7432" width="0.1524" layer="51"/>
<wire x1="-6.731" y1="-2.5908" x2="6.731" y2="-2.5908" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.5908" x2="6.731" y2="2.6162" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.6162" x2="-6.731" y2="2.6162" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="2.6162" x2="-6.731" y2="-2.5908" width="0.1524" layer="21"/>
<wire x1="5.461" y1="-3.175" x2="4.699" y2="-3.175" width="0.508" layer="21" curve="-180"/>
<wire x1="4.699" y1="-3.175" x2="5.461" y2="-3.175" width="0.508" layer="21" curve="-180"/>
<wire x1="-6.604" y1="-2.4638" x2="6.604" y2="-2.4638" width="0.1524" layer="51"/>
<wire x1="6.604" y1="-2.4638" x2="6.604" y2="2.4892" width="0.1524" layer="51"/>
<wire x1="6.604" y1="2.4892" x2="-6.604" y2="2.4892" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="2.4892" x2="-6.604" y2="-2.4638" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-1.27" x2="4.826" y2="-1.27" width="0" layer="51" curve="-180"/>
<wire x1="4.826" y1="-1.27" x2="5.334" y2="-1.27" width="0" layer="51" curve="-180"/>
<wire x1="-0.254" y1="0" x2="0.254" y2="0" width="0.1524" layer="23"/>
<wire x1="0" y1="-0.254" x2="0" y2="0.254" width="0.1524" layer="23"/>
<wire x1="5.461" y1="-3.175" x2="4.699" y2="-3.175" width="0.508" layer="22" curve="-180"/>
<wire x1="4.699" y1="-3.175" x2="5.461" y2="-3.175" width="0.508" layer="22" curve="-180"/>
<polygon width="0.1524" layer="51">
<vertex x="6.35" y="2.7432"/>
<vertex x="6.35" y="2.5908"/>
<vertex x="-6.35" y="2.5908"/>
<vertex x="-6.35" y="2.7432"/>
<vertex x="-6.858" y="2.7432"/>
<vertex x="-6.858" y="-2.7178"/>
<vertex x="-6.35" y="-2.7178"/>
<vertex x="-6.35" y="-2.5908"/>
<vertex x="6.35" y="-2.5908"/>
<vertex x="6.35" y="-2.7178"/>
<vertex x="6.858" y="-2.7178"/>
<vertex x="6.858" y="2.7432"/>
</polygon>
<text x="-3.2766" y="-0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
</package>
<package name="1X02" urn="urn:adsk.eagle:footprint:11740455/1">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="1.016" rot="R90"/>
<pad name="2" x="1.27" y="0" drill="1.016" rot="R90"/>
<text x="-2.6162" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="TO127P419X483X533-3P" urn="urn:adsk.eagle:footprint:9214947/2">
<wire x1="0" y1="2.605" x2="0.4" y2="2.605" width="0.2" layer="21"/>
<wire x1="0.4" y1="2.605" x2="2.92" y2="0" width="0.2" layer="21" curve="-90"/>
<wire x1="2.92" y1="0" x2="0.6" y2="-2.605" width="0.2" layer="21" curve="-90"/>
<wire x1="0.6" y1="-2.605" x2="0" y2="-2.605" width="0.2" layer="21"/>
<wire x1="0" y1="-2.605" x2="-1.27" y2="-2" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-2" x2="-1.27" y2="2" width="0.2" layer="21"/>
<wire x1="-1.27" y1="2" x2="0" y2="2.605" width="0.2" layer="21"/>
<wire x1="-1.55" y1="2.9" x2="3.2" y2="2.9" width="0.05" layer="39"/>
<wire x1="3.2" y1="2.9" x2="3.2" y2="-2.9" width="0.05" layer="39"/>
<wire x1="3.2" y1="-2.9" x2="-1.55" y2="-2.9" width="0.05" layer="39"/>
<wire x1="-1.55" y1="-2.9" x2="-1.55" y2="2.9" width="0.05" layer="39"/>
<text x="-1.351640625" y="3.103759375" size="1.271540625" layer="25">&gt;NAME</text>
<text x="-1.352009375" y="-4.80715" size="1.271890625" layer="27">&gt;VALUE</text>
<circle x="0.05" y="2.15" radius="0.111803125" width="0.2" layer="21"/>
<pad name="1" x="0" y="1.27" drill="0.65" diameter="1.016" shape="square"/>
<pad name="2" x="0" y="0" drill="0.65" diameter="1.016"/>
<pad name="3" x="0" y="-1.27" drill="0.65" diameter="1.016"/>
</package>
<package name="PIN1X5-1.27MM-SMD" urn="urn:adsk.eagle:footprint:11763797/1">
<smd name="P$11" x="-2.54" y="1.27" dx="2.6" dy="0.74" layer="1" rot="R90"/>
<smd name="P$12" x="-1.27" y="-1.27" dx="2.6" dy="0.74" layer="1" rot="R90"/>
<smd name="P$13" x="0" y="1.27" dx="2.6" dy="0.74" layer="1" rot="R90"/>
<smd name="P$14" x="1.27" y="-1.27" dx="2.6" dy="0.74" layer="1" rot="R90"/>
<smd name="P$15" x="2.54" y="1.27" dx="2.6" dy="0.74" layer="1" rot="R90"/>
</package>
<package name="CAP_0402" urn="urn:adsk.eagle:footprint:10872889/1">
<description>Resistor, Chip; 1.00 mm L X 0.50 mm W X 0.50 mm H body&lt;p&gt;&lt;i&gt;PCB Libraries Packages&lt;/i&gt;</description>
<smd name="1" x="-0.475" y="0" dx="0.55" dy="0.58" layer="1" roundness="51" rot="R180" stop="no" cream="no"/>
<smd name="2" x="0.475" y="0" dx="0.55" dy="0.58" layer="1" roundness="51" stop="no" cream="no"/>
<polygon width="0.01" layer="29">
<vertex x="-0.475" y="0.29"/>
<vertex x="-0.34" y="0.29"/>
<vertex x="-0.3181" y="0.2883"/>
<vertex x="-0.2967" y="0.2831"/>
<vertex x="-0.2764" y="0.2747"/>
<vertex x="-0.2577" y="0.2633"/>
<vertex x="-0.241" y="0.249"/>
<vertex x="-0.2267" y="0.2323"/>
<vertex x="-0.2153" y="0.2136"/>
<vertex x="-0.2069" y="0.1933"/>
<vertex x="-0.2017" y="0.1719"/>
<vertex x="-0.2" y="-0.15"/>
<vertex x="-0.2017" y="-0.1719"/>
<vertex x="-0.2069" y="-0.1933"/>
<vertex x="-0.2153" y="-0.2136"/>
<vertex x="-0.2267" y="-0.2323"/>
<vertex x="-0.241" y="-0.249"/>
<vertex x="-0.2577" y="-0.2633"/>
<vertex x="-0.2764" y="-0.2747"/>
<vertex x="-0.2967" y="-0.2831"/>
<vertex x="-0.3181" y="-0.2883"/>
<vertex x="-0.34" y="-0.29"/>
<vertex x="-0.61" y="-0.29"/>
<vertex x="-0.6319" y="-0.2883"/>
<vertex x="-0.6533" y="-0.2831"/>
<vertex x="-0.6736" y="-0.2747"/>
<vertex x="-0.6923" y="-0.2633"/>
<vertex x="-0.709" y="-0.249"/>
<vertex x="-0.7233" y="-0.2323"/>
<vertex x="-0.7347" y="-0.2136"/>
<vertex x="-0.7431" y="-0.1933"/>
<vertex x="-0.7483" y="-0.1719"/>
<vertex x="-0.75" y="0.15"/>
<vertex x="-0.7483" y="0.1719"/>
<vertex x="-0.7431" y="0.1933"/>
<vertex x="-0.7347" y="0.2136"/>
<vertex x="-0.7233" y="0.2323"/>
<vertex x="-0.709" y="0.249"/>
<vertex x="-0.6923" y="0.2633"/>
<vertex x="-0.6736" y="0.2747"/>
<vertex x="-0.6533" y="0.2831"/>
<vertex x="-0.6319" y="0.2883"/>
<vertex x="-0.61" y="0.29"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="-0.475" y="0.29"/>
<vertex x="-0.34" y="0.29"/>
<vertex x="-0.3181" y="0.2883"/>
<vertex x="-0.2967" y="0.2831"/>
<vertex x="-0.2764" y="0.2747"/>
<vertex x="-0.2577" y="0.2633"/>
<vertex x="-0.241" y="0.249"/>
<vertex x="-0.2267" y="0.2323"/>
<vertex x="-0.2153" y="0.2136"/>
<vertex x="-0.2069" y="0.1933"/>
<vertex x="-0.2017" y="0.1719"/>
<vertex x="-0.2" y="-0.15"/>
<vertex x="-0.2017" y="-0.1719"/>
<vertex x="-0.2069" y="-0.1933"/>
<vertex x="-0.2153" y="-0.2136"/>
<vertex x="-0.2267" y="-0.2323"/>
<vertex x="-0.241" y="-0.249"/>
<vertex x="-0.2577" y="-0.2633"/>
<vertex x="-0.2764" y="-0.2747"/>
<vertex x="-0.2967" y="-0.2831"/>
<vertex x="-0.3181" y="-0.2883"/>
<vertex x="-0.34" y="-0.29"/>
<vertex x="-0.61" y="-0.29"/>
<vertex x="-0.6319" y="-0.2883"/>
<vertex x="-0.6533" y="-0.2831"/>
<vertex x="-0.6736" y="-0.2747"/>
<vertex x="-0.6923" y="-0.2633"/>
<vertex x="-0.709" y="-0.249"/>
<vertex x="-0.7233" y="-0.2323"/>
<vertex x="-0.7347" y="-0.2136"/>
<vertex x="-0.7431" y="-0.1933"/>
<vertex x="-0.7483" y="-0.1719"/>
<vertex x="-0.75" y="0.15"/>
<vertex x="-0.7483" y="0.1719"/>
<vertex x="-0.7431" y="0.1933"/>
<vertex x="-0.7347" y="0.2136"/>
<vertex x="-0.7233" y="0.2323"/>
<vertex x="-0.709" y="0.249"/>
<vertex x="-0.6923" y="0.2633"/>
<vertex x="-0.6736" y="0.2747"/>
<vertex x="-0.6533" y="0.2831"/>
<vertex x="-0.6319" y="0.2883"/>
<vertex x="-0.61" y="0.29"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="0.475" y="-0.29"/>
<vertex x="0.34" y="-0.29"/>
<vertex x="0.3181" y="-0.2883"/>
<vertex x="0.2967" y="-0.2831"/>
<vertex x="0.2764" y="-0.2747"/>
<vertex x="0.2577" y="-0.2633"/>
<vertex x="0.241" y="-0.249"/>
<vertex x="0.2267" y="-0.2323"/>
<vertex x="0.2153" y="-0.2136"/>
<vertex x="0.2069" y="-0.1933"/>
<vertex x="0.2017" y="-0.1719"/>
<vertex x="0.2" y="0.15"/>
<vertex x="0.2017" y="0.1719"/>
<vertex x="0.2069" y="0.1933"/>
<vertex x="0.2153" y="0.2136"/>
<vertex x="0.2267" y="0.2323"/>
<vertex x="0.241" y="0.249"/>
<vertex x="0.2577" y="0.2633"/>
<vertex x="0.2764" y="0.2747"/>
<vertex x="0.2967" y="0.2831"/>
<vertex x="0.3181" y="0.2883"/>
<vertex x="0.34" y="0.29"/>
<vertex x="0.61" y="0.29"/>
<vertex x="0.6319" y="0.2883"/>
<vertex x="0.6533" y="0.2831"/>
<vertex x="0.6736" y="0.2747"/>
<vertex x="0.6923" y="0.2633"/>
<vertex x="0.709" y="0.249"/>
<vertex x="0.7233" y="0.2323"/>
<vertex x="0.7347" y="0.2136"/>
<vertex x="0.7431" y="0.1933"/>
<vertex x="0.7483" y="0.1719"/>
<vertex x="0.75" y="-0.15"/>
<vertex x="0.7483" y="-0.1719"/>
<vertex x="0.7431" y="-0.1933"/>
<vertex x="0.7347" y="-0.2136"/>
<vertex x="0.7233" y="-0.2323"/>
<vertex x="0.709" y="-0.249"/>
<vertex x="0.6923" y="-0.2633"/>
<vertex x="0.6736" y="-0.2747"/>
<vertex x="0.6533" y="-0.2831"/>
<vertex x="0.6319" y="-0.2883"/>
<vertex x="0.61" y="-0.29"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="0.475" y="-0.29"/>
<vertex x="0.34" y="-0.29"/>
<vertex x="0.3181" y="-0.2883"/>
<vertex x="0.2967" y="-0.2831"/>
<vertex x="0.2764" y="-0.2747"/>
<vertex x="0.2577" y="-0.2633"/>
<vertex x="0.241" y="-0.249"/>
<vertex x="0.2267" y="-0.2323"/>
<vertex x="0.2153" y="-0.2136"/>
<vertex x="0.2069" y="-0.1933"/>
<vertex x="0.2017" y="-0.1719"/>
<vertex x="0.2" y="0.15"/>
<vertex x="0.2017" y="0.1719"/>
<vertex x="0.2069" y="0.1933"/>
<vertex x="0.2153" y="0.2136"/>
<vertex x="0.2267" y="0.2323"/>
<vertex x="0.241" y="0.249"/>
<vertex x="0.2577" y="0.2633"/>
<vertex x="0.2764" y="0.2747"/>
<vertex x="0.2967" y="0.2831"/>
<vertex x="0.3181" y="0.2883"/>
<vertex x="0.34" y="0.29"/>
<vertex x="0.61" y="0.29"/>
<vertex x="0.6319" y="0.2883"/>
<vertex x="0.6533" y="0.2831"/>
<vertex x="0.6736" y="0.2747"/>
<vertex x="0.6923" y="0.2633"/>
<vertex x="0.709" y="0.249"/>
<vertex x="0.7233" y="0.2323"/>
<vertex x="0.7347" y="0.2136"/>
<vertex x="0.7431" y="0.1933"/>
<vertex x="0.7483" y="0.1719"/>
<vertex x="0.75" y="-0.15"/>
<vertex x="0.7483" y="-0.1719"/>
<vertex x="0.7431" y="-0.1933"/>
<vertex x="0.7347" y="-0.2136"/>
<vertex x="0.7233" y="-0.2323"/>
<vertex x="0.709" y="-0.249"/>
<vertex x="0.6923" y="-0.2633"/>
<vertex x="0.6736" y="-0.2747"/>
<vertex x="0.6533" y="-0.2831"/>
<vertex x="0.6319" y="-0.2883"/>
<vertex x="0.61" y="-0.29"/>
</polygon>
<wire x1="-0.25" y1="0.25" x2="-0.25" y2="-0.25" width="0.025" layer="51"/>
<wire x1="-0.25" y1="-0.25" x2="-0.5" y2="-0.25" width="0.025" layer="51"/>
<wire x1="-0.5" y1="-0.25" x2="-0.5" y2="0.25" width="0.025" layer="51"/>
<wire x1="-0.5" y1="0.25" x2="-0.25" y2="0.25" width="0.025" layer="51"/>
<wire x1="0.25" y1="-0.25" x2="0.25" y2="0.25" width="0.025" layer="51"/>
<wire x1="0.25" y1="0.25" x2="0.5" y2="0.25" width="0.025" layer="51"/>
<wire x1="0.5" y1="0.25" x2="0.5" y2="-0.25" width="0.025" layer="51"/>
<wire x1="0.5" y1="-0.25" x2="0.25" y2="-0.25" width="0.025" layer="51"/>
<wire x1="-0.5" y1="-0.25" x2="-0.5" y2="0.25" width="0.025" layer="51"/>
<wire x1="-0.5" y1="0.25" x2="0.5" y2="0.25" width="0.025" layer="51"/>
<wire x1="0.5" y1="0.25" x2="0.5" y2="-0.25" width="0.025" layer="51"/>
<wire x1="0.5" y1="-0.25" x2="-0.5" y2="-0.25" width="0.025" layer="51"/>
<wire x1="-0.53" y1="-0.28" x2="-0.53" y2="0.28" width="0.12" layer="51"/>
<wire x1="-0.53" y1="0.28" x2="0.53" y2="0.28" width="0.12" layer="51"/>
<wire x1="0.53" y1="0.28" x2="0.53" y2="-0.28" width="0.12" layer="51"/>
<wire x1="0.53" y1="-0.28" x2="-0.53" y2="-0.28" width="0.12" layer="51"/>
<wire x1="-0.9" y1="-0.44" x2="-0.9" y2="0.44" width="0.05" layer="39"/>
<wire x1="-0.9" y1="0.44" x2="0.9" y2="0.44" width="0.05" layer="39"/>
<wire x1="0.9" y1="0.44" x2="0.9" y2="-0.44" width="0.05" layer="39"/>
<wire x1="0.9" y1="-0.44" x2="-0.9" y2="-0.44" width="0.05" layer="39"/>
<wire x1="0.22" y1="0" x2="-0.22" y2="0" width="0.05" layer="39"/>
<wire x1="0" y1="0.22" x2="0" y2="-0.22" width="0.05" layer="39"/>
<wire x1="-0.17" y1="0.28" x2="0.17" y2="0.28" width="0.12" layer="21"/>
<wire x1="-0.17" y1="-0.28" x2="0.17" y2="-0.28" width="0.12" layer="21"/>
<circle x="0" y="0" radius="0.165" width="0.05" layer="39"/>
<text x="-1.09" y="-1.03" size="0.5" layer="27" ratio="10">&gt;VALUE</text>
<text x="-1.17" y="0.6" size="0.5" layer="25" ratio="10">&gt;NAME</text>
</package>
</packages>
<packages3d>
<package3d name="MODULE_ESP32-WROOM-32D" urn="urn:adsk.eagle:package:9204060/2" type="model">
<packageinstances>
<packageinstance name="MODULE_ESP32-WROOM-32D"/>
</packageinstances>
</package3d>
<package3d name="62000311121" urn="urn:adsk.eagle:package:11740458/1" type="model">
<packageinstances>
<packageinstance name="PIN1X3-2MM"/>
</packageinstances>
</package3d>
<package3d name="SAMTEC-TSM-108-01-X-SH" urn="urn:adsk.eagle:package:9198499/3" type="model">
<description>translated Allegro footprint</description>
<packageinstances>
<packageinstance name="SAMTEC-TSM-108-01-X-SH"/>
</packageinstances>
</package3d>
<package3d name="SOT-223" urn="urn:adsk.eagle:package:10906044/2" type="model">
<packageinstances>
<packageinstance name="SOT-223"/>
</packageinstances>
</package3d>
<package3d name="CAP_0805" urn="urn:adsk.eagle:package:10872908/3" type="model">
<description>Resistor, Chip; 2.00 mm L X 1.25 mm W X 0.85 mm H body&lt;p&gt;&lt;i&gt;PCB Libraries Packages&lt;/i&gt;</description>
<packageinstances>
<packageinstance name="CAP_0805"/>
</packageinstances>
</package3d>
<package3d name="RES_0402" urn="urn:adsk.eagle:package:10872901/3" type="model">
<description>Resistor, Chip; 1.00 mm L X 0.50 mm W X 0.35 mm H body&lt;p&gt;&lt;i&gt;PCB Libraries Packages&lt;/i&gt;</description>
<packageinstances>
<packageinstance name="RES_0402"/>
</packageinstances>
</package3d>
<package3d name="LED-0603" urn="urn:adsk.eagle:package:10893503/2" type="model">
<description>LED, Chip; 1.60 mm L X 0.80 mm W X 0.80 mm H body&lt;p&gt;&lt;i&gt;PCB Libraries Packages&lt;/i&gt;</description>
<packageinstances>
<packageinstance name="LED-0603"/>
</packageinstances>
</package3d>
<package3d name="CON10_2X5_TU_SSQ" urn="urn:adsk.eagle:package:9232469/3" type="model">
<packageinstances>
<packageinstance name="CON10_2X5_TU_SSQ"/>
</packageinstances>
</package3d>
<package3d name="1X02" urn="urn:adsk.eagle:package:11740457/1" type="model">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<packageinstances>
<packageinstance name="1X02"/>
</packageinstances>
</package3d>
<package3d name="TO127P419X483X533-3P" urn="urn:adsk.eagle:package:9214949/3" type="model">
<packageinstances>
<packageinstance name="TO127P419X483X533-3P"/>
</packageinstances>
</package3d>
<package3d name="PIN1X5-1.27MM-SMD" urn="urn:adsk.eagle:package:11763810/2" type="model">
<packageinstances>
<packageinstance name="PIN1X5-1.27MM-SMD"/>
</packageinstances>
</package3d>
<package3d name="CAP_0402" urn="urn:adsk.eagle:package:10872910/2" type="model">
<description>Resistor, Chip; 1.00 mm L X 0.50 mm W X 0.50 mm H body&lt;p&gt;&lt;i&gt;PCB Libraries Packages&lt;/i&gt;</description>
<packageinstances>
<packageinstance name="CAP_0402"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="ESP32-WROOM-32D" library_version="1">
<wire x1="-15.24" y1="35.56" x2="15.24" y2="35.56" width="0.254" layer="94"/>
<wire x1="15.24" y1="35.56" x2="15.24" y2="-35.56" width="0.254" layer="94"/>
<wire x1="15.24" y1="-35.56" x2="-15.24" y2="-35.56" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-35.56" x2="-15.24" y2="35.56" width="0.254" layer="94"/>
<text x="-15.0359" y="36.6745" size="1.783840625" layer="95">&gt;NAME</text>
<text x="-15.2867" y="-38.2081" size="1.78345" layer="96">&gt;VALUE</text>
<pin name="GND" x="17.78" y="-33.02" length="short" direction="pwr" rot="R180"/>
<pin name="3V3" x="17.78" y="33.02" length="short" direction="pwr" rot="R180"/>
<pin name="EN" x="-17.78" y="27.94" length="short" direction="in"/>
<pin name="SENSOR_VP" x="-17.78" y="20.32" length="short" direction="in"/>
<pin name="SENSOR_VN" x="-17.78" y="17.78" length="short" direction="in"/>
<pin name="IO34" x="17.78" y="-22.86" length="short" rot="R180"/>
<pin name="IO35" x="17.78" y="-25.4" length="short" rot="R180"/>
<pin name="IO33" x="17.78" y="-20.32" length="short" rot="R180"/>
<pin name="IO32" x="17.78" y="-17.78" length="short" rot="R180"/>
<pin name="IO25" x="17.78" y="-10.16" length="short" rot="R180"/>
<pin name="IO26" x="17.78" y="-12.7" length="short" rot="R180"/>
<pin name="IO27" x="17.78" y="-15.24" length="short" rot="R180"/>
<pin name="IO14" x="17.78" y="12.7" length="short" rot="R180"/>
<pin name="IO12" x="17.78" y="17.78" length="short" rot="R180"/>
<pin name="IO13" x="17.78" y="15.24" length="short" rot="R180"/>
<pin name="IO15" x="17.78" y="10.16" length="short" rot="R180"/>
<pin name="IO2" x="17.78" y="25.4" length="short" rot="R180"/>
<pin name="IO0" x="17.78" y="27.94" length="short" rot="R180"/>
<pin name="IO4" x="17.78" y="22.86" length="short" rot="R180"/>
<pin name="IO16" x="17.78" y="7.62" length="short" rot="R180"/>
<pin name="IO17" x="17.78" y="5.08" length="short" rot="R180"/>
<pin name="IO5" x="17.78" y="20.32" length="short" rot="R180"/>
<pin name="IO18" x="17.78" y="2.54" length="short" rot="R180"/>
<pin name="IO19" x="17.78" y="0" length="short" rot="R180"/>
<pin name="IO21" x="17.78" y="-2.54" length="short" rot="R180"/>
<pin name="IO22" x="17.78" y="-5.08" length="short" rot="R180"/>
<pin name="IO23" x="17.78" y="-7.62" length="short" rot="R180"/>
<pin name="RXD0" x="-17.78" y="7.62" length="short"/>
<pin name="TXD0" x="-17.78" y="10.16" length="short"/>
<pin name="SHD/SD2" x="-17.78" y="-15.24" length="short"/>
<pin name="SWP/SD3" x="-17.78" y="-17.78" length="short"/>
<pin name="SCS/CMD" x="-17.78" y="0" length="short"/>
<pin name="SCL/CLK" x="-17.78" y="-2.54" length="short" function="clk"/>
<pin name="SDO/SD0" x="-17.78" y="-5.08" length="short"/>
<pin name="SDI/SD1" x="-17.78" y="-7.62" length="short"/>
</symbol>
<symbol name="PIN1X3-2MM">
<pin name="1" x="5.08" y="2.54" visible="off" length="middle" direction="pas" rot="R180"/>
<pin name="2" x="5.08" y="0" visible="off" length="middle" direction="pas" rot="R180"/>
<pin name="3" x="5.08" y="-2.54" visible="off" length="middle" direction="pas" rot="R180"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="-5.08" x2="2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="5.08" x2="-2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="1.27" y1="2.54" x2="0" y2="2.54" width="0.8128" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.8128" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="0" y2="-2.54" width="0.8128" layer="94"/>
<text x="-2.286" y="5.588" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-7.366" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="SAMTEC-TSM-108-01-X-SHA">
<text x="0" y="5.087740625" size="2.54386875" layer="95">&gt;NAME</text>
<text x="0" y="-25.4192" size="2.28773125" layer="96">&gt;PARTNO</text>
<text x="0" y="-27.9939" size="2.290409375" layer="96">&gt;VALUE</text>
<text x="0" y="-30.4994" size="2.287459375" layer="94">SAMTEC-TSM-108-01-X-SH</text>
<wire x1="0" y1="5.08" x2="25.4" y2="5.08" width="0.254" layer="94"/>
<wire x1="25.4" y1="5.08" x2="25.4" y2="-22.86" width="0.254" layer="94"/>
<wire x1="25.4" y1="-22.86" x2="0" y2="-22.86" width="0.254" layer="94"/>
<wire x1="0" y1="-22.86" x2="0" y2="5.08" width="0.254" layer="94"/>
<pin name="1" x="-5.08" y="0" length="middle"/>
<pin name="2" x="-5.08" y="-2.54" length="middle"/>
<pin name="3" x="-5.08" y="-5.08" length="middle"/>
<pin name="4" x="-5.08" y="-7.62" length="middle"/>
<pin name="5" x="-5.08" y="-10.16" length="middle"/>
<pin name="6" x="-5.08" y="-12.7" length="middle"/>
<pin name="7" x="-5.08" y="-15.24" length="middle"/>
<pin name="8" x="-5.08" y="-17.78" length="middle"/>
</symbol>
<symbol name="3V3REGULATOR-AMS1117">
<wire x1="-10.16" y1="5.08" x2="-10.16" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-5.08" x2="10.16" y2="-5.08" width="0.254" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="10.16" y2="5.08" width="0.254" layer="94"/>
<wire x1="10.16" y1="5.08" x2="-10.16" y2="5.08" width="0.254" layer="94"/>
<pin name="IN" x="-15.24" y="0" length="middle" direction="in"/>
<pin name="ADJ/GND" x="0" y="-10.16" visible="off" length="middle" direction="pwr" rot="R90"/>
<pin name="OUT" x="15.24" y="0" length="middle" direction="out" rot="R180"/>
<pin name="4" x="15.24" y="0" visible="off" length="point" direction="pas" rot="R180"/>
<text x="-1.524" y="-3.81" size="1.4224" layer="95">GND</text>
<text x="-7.112" y="6.096" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-15.24" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="C-EU-2">
<wire x1="0" y1="0" x2="0" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-2.032" width="0.1524" layer="94"/>
<text x="-2.54" y="3.683" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.302" y="-8.001" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-2.032" x2="2.032" y2="-1.524" layer="94"/>
<rectangle x1="-2.032" y1="-1.016" x2="2.032" y2="-0.508" layer="94"/>
<pin name="1" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
<symbol name="R-US">
<wire x1="-2.54" y1="0" x2="-2.159" y2="1.016" width="0.2032" layer="94"/>
<wire x1="-2.159" y1="1.016" x2="-1.524" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="-1.524" y1="-1.016" x2="-0.889" y2="1.016" width="0.2032" layer="94"/>
<wire x1="-0.889" y1="1.016" x2="-0.254" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="-0.254" y1="-1.016" x2="0.381" y2="1.016" width="0.2032" layer="94"/>
<wire x1="0.381" y1="1.016" x2="1.016" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="1.016" y1="-1.016" x2="1.651" y2="1.016" width="0.2032" layer="94"/>
<wire x1="1.651" y1="1.016" x2="2.286" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="0" width="0.2032" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas"/>
</symbol>
<symbol name="LED">
<wire x1="1.27" y1="0" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-2.032" y1="-0.762" x2="-3.429" y2="-2.159" width="0.1524" layer="94"/>
<wire x1="-1.905" y1="-1.905" x2="-3.302" y2="-3.302" width="0.1524" layer="94"/>
<text x="2.286" y="5.08" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<text x="2.794" y="-5.969" size="1.778" layer="96" rot="R180">&gt;VALUE</text>
<pin name="C" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="A" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
<polygon width="0.1524" layer="94">
<vertex x="-3.429" y="-2.159"/>
<vertex x="-3.048" y="-1.27"/>
<vertex x="-2.54" y="-1.778"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="-3.302" y="-3.302"/>
<vertex x="-2.921" y="-2.413"/>
<vertex x="-2.413" y="-2.921"/>
</polygon>
</symbol>
<symbol name="CON10_2X5_TU_SSQ">
<pin name="1" x="0" y="0" visible="pad" length="middle" direction="pas"/>
<pin name="2" x="0" y="-2.54" visible="pad" length="middle" direction="pas"/>
<pin name="3" x="0" y="-5.08" visible="pad" length="middle" direction="pas"/>
<pin name="4" x="0" y="-7.62" visible="pad" length="middle" direction="pas"/>
<pin name="5" x="0" y="-10.16" visible="pad" length="middle" direction="pas"/>
<pin name="6" x="0" y="-12.7" visible="pad" length="middle" direction="pas"/>
<pin name="7" x="0" y="-15.24" visible="pad" length="middle" direction="pas"/>
<pin name="8" x="0" y="-17.78" visible="pad" length="middle" direction="pas"/>
<pin name="9" x="0" y="-20.32" visible="pad" length="middle" direction="pas"/>
<pin name="10" x="0" y="-22.86" visible="pad" length="middle" direction="pas"/>
<wire x1="10.16" y1="0" x2="5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="5.08" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="5.08" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="5.08" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-10.16" x2="5.08" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-12.7" x2="5.08" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-15.24" x2="5.08" y2="-15.24" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-17.78" x2="5.08" y2="-17.78" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-20.32" x2="5.08" y2="-20.32" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-22.86" x2="5.08" y2="-22.86" width="0.1524" layer="94"/>
<wire x1="10.16" y1="0" x2="8.89" y2="0.8382" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="8.89" y2="-1.7018" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="8.89" y2="-4.2418" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="8.89" y2="-6.7818" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-10.16" x2="8.89" y2="-9.3218" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-12.7" x2="8.89" y2="-11.8618" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-15.24" x2="8.89" y2="-14.4018" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-17.78" x2="8.89" y2="-16.9418" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-20.32" x2="8.89" y2="-19.4818" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-22.86" x2="8.89" y2="-22.0218" width="0.1524" layer="94"/>
<wire x1="10.16" y1="0" x2="8.89" y2="-0.8382" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="8.89" y2="-3.3782" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="8.89" y2="-5.9182" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="8.89" y2="-8.4582" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-10.16" x2="8.89" y2="-10.9982" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-12.7" x2="8.89" y2="-13.5382" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-15.24" x2="8.89" y2="-16.0782" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-17.78" x2="8.89" y2="-18.6182" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-20.32" x2="8.89" y2="-21.1582" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-22.86" x2="8.89" y2="-23.6982" width="0.1524" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-25.4" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-25.4" x2="12.7" y2="-25.4" width="0.1524" layer="94"/>
<wire x1="12.7" y1="-25.4" x2="12.7" y2="2.54" width="0.1524" layer="94"/>
<wire x1="12.7" y1="2.54" x2="5.08" y2="2.54" width="0.1524" layer="94"/>
<text x="4.1656" y="5.3086" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
</symbol>
<symbol name="GND">
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="-1.27" y2="0" width="0.254" layer="94"/>
<text x="-1.905" y="-3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="PINHD2">
<wire x1="-6.35" y1="-2.54" x2="1.27" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="-6.35" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="5.08" x2="-6.35" y2="-2.54" width="0.4064" layer="94"/>
<pin name="1" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<text x="-6.35" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="TMP36GT9Z">
<wire x1="-10.16" y1="5.08" x2="-10.16" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-5.08" x2="10.16" y2="-5.08" width="0.254" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="10.16" y2="5.08" width="0.254" layer="94"/>
<wire x1="10.16" y1="5.08" x2="-10.16" y2="5.08" width="0.254" layer="94"/>
<text x="-9.765759375" y="6.1036" size="1.27158125" layer="95">&gt;NAME</text>
<text x="-9.75868125" y="-7.319009375" size="1.270659375" layer="96">&gt;VALUE</text>
<pin name="+VS" x="15.24" y="2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="GND" x="15.24" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="VOUT" x="-15.24" y="0" length="middle" direction="out"/>
</symbol>
<symbol name="PIN1X5">
<text x="-2.286" y="10.668" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-7.366" size="1.778" layer="96">&gt;VALUE</text>
<pin name="P$1" x="2.54" y="7.62" length="middle"/>
<pin name="P$2" x="2.54" y="5.08" length="middle"/>
<pin name="P$3" x="2.54" y="2.54" length="middle"/>
<pin name="P$4" x="2.54" y="0" length="middle"/>
<pin name="P$5" x="2.54" y="-2.54" length="middle"/>
<wire x1="-2.54" y1="-5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="-5.08" x2="5.08" y2="10.16" width="0.254" layer="94"/>
<wire x1="5.08" y1="10.16" x2="-2.54" y2="10.16" width="0.254" layer="94"/>
<wire x1="-2.54" y1="10.16" x2="-2.54" y2="-5.08" width="0.254" layer="94"/>
</symbol>
<symbol name="C-EU-1">
<wire x1="0" y1="0" x2="0" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-2.032" width="0.1524" layer="94"/>
<text x="-2.54" y="3.683" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.302" y="-8.001" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-2.032" x2="2.032" y2="-1.524" layer="94"/>
<rectangle x1="-2.032" y1="-1.016" x2="2.032" y2="-0.508" layer="94"/>
<pin name="1" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ESP32-WROOM-32D" prefix="U" library_version="1">
<description>IC: SoC; GPIO, I2C, I2S, IR, SD, SDIO, SPI, UART; 2.7÷3.6VDC; 20dBm</description>
<gates>
<gate name="G$1" symbol="ESP32-WROOM-32D" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MODULE_ESP32-WROOM-32D">
<connects>
<connect gate="G$1" pin="3V3" pad="2"/>
<connect gate="G$1" pin="EN" pad="3"/>
<connect gate="G$1" pin="GND" pad="1 15 38 39"/>
<connect gate="G$1" pin="IO0" pad="25"/>
<connect gate="G$1" pin="IO12" pad="14"/>
<connect gate="G$1" pin="IO13" pad="16"/>
<connect gate="G$1" pin="IO14" pad="13"/>
<connect gate="G$1" pin="IO15" pad="23"/>
<connect gate="G$1" pin="IO16" pad="27"/>
<connect gate="G$1" pin="IO17" pad="28"/>
<connect gate="G$1" pin="IO18" pad="30"/>
<connect gate="G$1" pin="IO19" pad="31"/>
<connect gate="G$1" pin="IO2" pad="24"/>
<connect gate="G$1" pin="IO21" pad="33"/>
<connect gate="G$1" pin="IO22" pad="36"/>
<connect gate="G$1" pin="IO23" pad="37"/>
<connect gate="G$1" pin="IO25" pad="10"/>
<connect gate="G$1" pin="IO26" pad="11"/>
<connect gate="G$1" pin="IO27" pad="12"/>
<connect gate="G$1" pin="IO32" pad="8"/>
<connect gate="G$1" pin="IO33" pad="9"/>
<connect gate="G$1" pin="IO34" pad="6"/>
<connect gate="G$1" pin="IO35" pad="7"/>
<connect gate="G$1" pin="IO4" pad="26"/>
<connect gate="G$1" pin="IO5" pad="29"/>
<connect gate="G$1" pin="RXD0" pad="34"/>
<connect gate="G$1" pin="SCL/CLK" pad="20"/>
<connect gate="G$1" pin="SCS/CMD" pad="19"/>
<connect gate="G$1" pin="SDI/SD1" pad="22"/>
<connect gate="G$1" pin="SDO/SD0" pad="21"/>
<connect gate="G$1" pin="SENSOR_VN" pad="5"/>
<connect gate="G$1" pin="SENSOR_VP" pad="4"/>
<connect gate="G$1" pin="SHD/SD2" pad="17"/>
<connect gate="G$1" pin="SWP/SD3" pad="18"/>
<connect gate="G$1" pin="TXD0" pad="35"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:9204060/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value=" IC: SoC; GPIO, I2C, I2S, IR, SD, SDIO, SPI, UART; 2.7÷3.6VDC; 20dBm "/>
<attribute name="DIGI-KEY_PART_NUMBER" value="1904-1023-1-ND"/>
<attribute name="DIGI-KEY_PURCHASE_URL" value="https://www.digikey.es/product-detail/en/espressif-systems/ESP32-WROOM-32D/1904-1023-1-ND/9381732?utm_source=snapeda&amp;utm_medium=aggregator&amp;utm_campaign=symbol"/>
<attribute name="MF" value="Espressif Systems"/>
<attribute name="MP" value="ESP32-WROOM-32D"/>
<attribute name="PACKAGE" value="Module Espressif Systems"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PIN1X3-2MM" prefix="J">
<description>&lt;h3&gt; THT Vertical Pin Header WR-PHD, Pitch 2.00 mm, Single Row, 3 pins &lt;/h3&gt;
&lt;BR&gt;
&lt;a href="https://datasheet.octopart.com/62000311121-W%C3%BCrth-Elektronik-datasheet-117282002.pdf"&gt; Manufacturer's datasheet&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="PIN1X3-2MM" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PIN1X3-2MM">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:11740458/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="CREATED_BY" value="PCBLayout.com" constant="no"/>
<attribute name="MANUFACTURER" value=" Würth Elektronik " constant="no"/>
<attribute name="MPN" value="62000311121" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SAMTEC-TSM-108-01-X-SH">
<gates>
<gate name="A" symbol="SAMTEC-TSM-108-01-X-SHA" x="0" y="0"/>
</gates>
<devices>
<device name="J" package="SAMTEC-TSM-108-01-X-SH">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:9198499/3"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value=" Conn Unshrouded Header HDR 8 POS 2.54mm Solder RA SMD Automotive Tube "/>
<attribute name="DIGI-KEY_PART_NUMBER" value="SAM10294-ND"/>
<attribute name="DIGI-KEY_PURCHASE_URL" value="https://www.digikey.es/product-detail/en/samtec-inc/TSM-108-01-L-SH/SAM10294-ND/6679031?utm_source=snapeda&amp;utm_medium=aggregator&amp;utm_campaign=symbol"/>
<attribute name="MF" value="Samtec Inc."/>
<attribute name="MP" value="TSM-108-01-L-SH"/>
<attribute name="PACKAGE" value="None"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="3V3REGULATOR-AMS1117" prefix="U">
<description>&lt;h3&gt; IC REG LINEAR 3.3V 1A SOT223 &lt;/h3&gt;
&lt;BR&gt;
&lt;a href="https://www.onsemi.com/pub/Collateral/NCP1117-D.PDF"&gt; Manufacturer's datasheet&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="3V3REGULATOR-AMS1117" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT-223">
<connects>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="ADJ/GND" pad="1"/>
<connect gate="G$1" pin="IN" pad="3"/>
<connect gate="G$1" pin="OUT" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:10906044/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="CREATED_BY" value="PCBLayout.com" constant="no"/>
<attribute name="DIGIKEY_PART_NUMBER" value="NCP1117ST33T3GOSTR-ND" constant="no"/>
<attribute name="MANUFACTURER" value="ON Semiconductor" constant="no"/>
<attribute name="MPN" value="NCP1117ST33T3G" constant="no"/>
<attribute name="PACKAGE" value="SOT-223" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CAP-0805" prefix="C">
<description>&lt;h3&gt;CAP CER 0.1UF 50V X7R 0805 &lt;/h3&gt;
&lt;BR&gt;
&lt;a href="http://www.yageo.com/documents/recent/UPY-GPHC_X7R_6.3V-to-50V_18.pdf"&gt; Manufacturer's datasheet&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="C-EU-2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CAP_0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:10872908/3"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="CREATED_BY" value="PCBLayout.com" constant="no"/>
<attribute name="DIGIKEY_PART_NUMBER" value="311-1140-2-ND" constant="no"/>
<attribute name="MANUFACTURER" value="Yageo" constant="no"/>
<attribute name="MPN" value="CC0805KRX7R9BB104" constant="no"/>
<attribute name="PACKAGE" value="SMD 0805" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RES-0402" prefix="R">
<description>&lt;h3&gt; RES SMD 0402 &lt;/h3&gt;</description>
<gates>
<gate name="G$1" symbol="R-US" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RES_0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:10872901/3"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="CREATED_BY" value="ChiliPeppr" constant="no"/>
<attribute name="DIGIKEY_PART_NUMBER" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="PACKAGE" value="SMD 0402" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LED-RED-0603" prefix="D">
<description>&lt;h3&gt;Light Emitting Diodes (LED) Red 615~630nm 80~100mcd@20mA Top View 0603 RoHS
 &lt;/h3&gt;
&lt;BR&gt;
&lt;a href="https://lcsc.com/product-detail/Light-Emitting-Diodes-LED_Red-LED-SMDLED-80-100mcd_C84263.html"&gt; LCSC Link&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="LED" x="0" y="2.54"/>
</gates>
<devices>
<device name="" package="LED-0603">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:10893503/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="CREATED_BY" value="ChiliPeppr" constant="no"/>
<attribute name="DIGIKEY_PART_NUMBER" value=" FC-DA1608HRK-620D" constant="no"/>
<attribute name="MANUFACTURER" value="Foshan NationStar Optoelectronics" constant="no"/>
<attribute name="MPN" value="FC-DA1608HRK-620D" constant="no"/>
<attribute name="PACKAGE" value="0603" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SSW-105-01-G-D" prefix="J">
<gates>
<gate name="A" symbol="CON10_2X5_TU_SSQ" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CON10_2X5_TU_SSQ">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:9232469/3"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="SSW10501GD" constant="no"/>
<attribute name="VENDOR" value="Samtec Inc" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" prefix="SUPPLY">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="GND" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PINHD-1X2" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="PINHD2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X02">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:11740457/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TMP36GT9Z" prefix="U">
<description>Low Voltage Temperature Sensors</description>
<gates>
<gate name="G$1" symbol="TMP36GT9Z" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TO127P419X483X533-3P">
<connects>
<connect gate="G$1" pin="+VS" pad="1"/>
<connect gate="G$1" pin="GND" pad="3"/>
<connect gate="G$1" pin="VOUT" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:9214949/3"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Unavailable"/>
<attribute name="DESCRIPTION" value=" Temp Sensor Analog_Voltage_ Serial _2-Wire_ 3-Pin TO-92 Tray "/>
<attribute name="MF" value="Analog Devices"/>
<attribute name="MP" value="TMP36GT9Z"/>
<attribute name="PACKAGE" value="TO-92 Analog Devices"/>
<attribute name="PRICE" value="None"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PIN1X5-1.27MM-SMD-MALE">
<description>&lt;a href="https://www.aliexpress.com/item/5pcs-1x40P-1-27mm-SMD-Pin-Header-0-05-SMT-Male-Pin-Surface-Mount-Type-Single/32891063757.html"&gt;Aliexpress&lt;/a&gt;

5pcs 1x40P 1.27mm SMD Pin Header,0.05" SMT Male Pin,Surface Mount Type, Single Row Golden-Plated Rohs</description>
<gates>
<gate name="G$1" symbol="PIN1X5" x="0" y="-2.54"/>
</gates>
<devices>
<device name="" package="PIN1X5-1.27MM-SMD">
<connects>
<connect gate="G$1" pin="P$1" pad="P$11"/>
<connect gate="G$1" pin="P$2" pad="P$12"/>
<connect gate="G$1" pin="P$3" pad="P$13"/>
<connect gate="G$1" pin="P$4" pad="P$14"/>
<connect gate="G$1" pin="P$5" pad="P$15"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:11763810/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CAP-0402-0.1UF-10V-MLCC" prefix="C">
<description>&lt;h3&gt; CAP MLCC 0.1uf 10V 0402 &lt;/h3&gt;

&lt;a href="https://lcsc.com/product-detail/Others_Vishay-Intertech_VJ0402G104KXQCW1BC_Vishay-Intertech-VJ0402G104KXQCW1BC_C169292.html"&gt;LCSC.com&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="C-EU-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CAP_0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:10872910/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="CREATED_BY" value="ChiliPeppr" constant="no"/>
<attribute name="DIGIKEY_PART_NUMBER" value="VJ0402G104KXQCW1BC" constant="no"/>
<attribute name="MANUFACTURER" value=" Vishay Intertech" constant="no"/>
<attribute name="MPN" value="VJ0402G104KXQCW1BC" constant="no"/>
<attribute name="PACKAGE" value="SMD 0402" constant="no"/>
</technology>
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
<part name="U1" library="robot actuator" deviceset="ESP32-WROOM-32D" device="" package3d_urn="urn:adsk.eagle:package:9204060/2"/>
<part name="WS2812LED" library="robot actuator" deviceset="PIN1X3-2MM" device="" package3d_urn="urn:adsk.eagle:package:11740458/1"/>
<part name="U$1" library="robot actuator" deviceset="SAMTEC-TSM-108-01-X-SH" device="J" package3d_urn="urn:adsk.eagle:package:9198499/3"/>
<part name="U2" library="robot actuator" deviceset="3V3REGULATOR-AMS1117" device="" package3d_urn="urn:adsk.eagle:package:10906044/2"/>
<part name="C1" library="robot actuator" deviceset="CAP-0805" device="" package3d_urn="urn:adsk.eagle:package:10872908/3"/>
<part name="C2" library="robot actuator" deviceset="CAP-0805" device="" package3d_urn="urn:adsk.eagle:package:10872908/3"/>
<part name="R1" library="robot actuator" deviceset="RES-0402" device="" package3d_urn="urn:adsk.eagle:package:10872901/3" value="260Ohm 5ma 0402"/>
<part name="D1" library="robot actuator" deviceset="LED-RED-0603" device="" package3d_urn="urn:adsk.eagle:package:10893503/2"/>
<part name="RAIL" library="robot actuator" deviceset="SSW-105-01-G-D" device="" package3d_urn="urn:adsk.eagle:package:9232469/3"/>
<part name="SUPPLY1" library="robot actuator" deviceset="GND" device=""/>
<part name="R2" library="robot actuator" deviceset="RES-0402" device="" package3d_urn="urn:adsk.eagle:package:10872901/3" value="10k 0402"/>
<part name="DIAG" library="robot actuator" deviceset="PINHD-1X2" device="" package3d_urn="urn:adsk.eagle:package:11740457/1"/>
<part name="U3" library="robot actuator" deviceset="TMP36GT9Z" device="" package3d_urn="urn:adsk.eagle:package:9214949/3"/>
<part name="PROGRAMMER" library="robot actuator" deviceset="PIN1X5-1.27MM-SMD-MALE" device="" package3d_urn="urn:adsk.eagle:package:11763810/2"/>
<part name="C3" library="robot actuator" deviceset="CAP-0402-0.1UF-10V-MLCC" device="" package3d_urn="urn:adsk.eagle:package:10872910/2"/>
<part name="C4" library="robot actuator" deviceset="CAP-0402-0.1UF-10V-MLCC" device="" package3d_urn="urn:adsk.eagle:package:10872910/2"/>
<part name="C5" library="robot actuator" deviceset="CAP-0402-0.1UF-10V-MLCC" device="" package3d_urn="urn:adsk.eagle:package:10872910/2"/>
<part name="SUPPLY2" library="robot actuator" deviceset="GND" device=""/>
<part name="SUPPLY3" library="robot actuator" deviceset="GND" device=""/>
<part name="SUPPLY4" library="robot actuator" deviceset="GND" device=""/>
<part name="SUPPLY6" library="robot actuator" deviceset="GND" device=""/>
<part name="SUPPLY7" library="robot actuator" deviceset="GND" device=""/>
<part name="SUPPLY8" library="robot actuator" deviceset="GND" device=""/>
<part name="SUPPLY5" library="robot actuator" deviceset="GND" device=""/>
<part name="SUPPLY9" library="robot actuator" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="G$1" x="43.18" y="53.34" smashed="yes">
<attribute name="NAME" x="28.1441" y="90.0145" size="1.783840625" layer="95"/>
<attribute name="VALUE" x="27.8933" y="15.1319" size="1.78345" layer="96"/>
</instance>
<instance part="WS2812LED" gate="G$1" x="-7.62" y="25.4" smashed="yes">
<attribute name="NAME" x="-9.906" y="30.988" size="1.778" layer="95"/>
<attribute name="VALUE" x="-10.16" y="18.034" size="1.778" layer="96"/>
</instance>
<instance part="U$1" gate="A" x="99.06" y="66.04" smashed="yes">
<attribute name="NAME" x="109.22" y="68.587740625" size="2.54386875" layer="95"/>
<attribute name="VALUE" x="99.06" y="38.0461" size="2.290409375" layer="96"/>
</instance>
<instance part="U2" gate="G$1" x="-63.5" y="106.68" smashed="yes">
<attribute name="NAME" x="-70.612" y="112.776" size="1.778" layer="95"/>
<attribute name="VALUE" x="-71.12" y="91.44" size="1.778" layer="96"/>
</instance>
<instance part="C1" gate="G$1" x="-78.74" y="96.52" smashed="yes">
<attribute name="NAME" x="-81.28" y="100.203" size="1.778" layer="95"/>
<attribute name="VALUE" x="-82.042" y="88.519" size="1.778" layer="96"/>
</instance>
<instance part="C2" gate="G$1" x="-48.26" y="96.52" smashed="yes">
<attribute name="NAME" x="-50.8" y="100.203" size="1.778" layer="95"/>
<attribute name="VALUE" x="-51.562" y="88.519" size="1.778" layer="96"/>
</instance>
<instance part="R1" gate="G$1" x="12.7" y="116.84" smashed="yes">
<attribute name="NAME" x="8.89" y="118.3386" size="1.778" layer="95"/>
<attribute name="VALUE" x="8.89" y="113.538" size="1.778" layer="96"/>
</instance>
<instance part="D1" gate="G$1" x="2.54" y="109.22" smashed="yes">
<attribute name="NAME" x="4.826" y="114.3" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="5.334" y="103.251" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="RAIL" gate="A" x="15.24" y="-5.08" smashed="yes">
<attribute name="NAME" x="19.4056" y="-2.3114" size="2.0828" layer="95" ratio="6" rot="SR0"/>
</instance>
<instance part="SUPPLY1" gate="GND" x="2.54" y="93.98" smashed="yes">
<attribute name="VALUE" x="0.635" y="90.805" size="1.778" layer="96"/>
</instance>
<instance part="R2" gate="G$1" x="40.64" y="116.84" smashed="yes">
<attribute name="NAME" x="36.83" y="118.3386" size="1.778" layer="95"/>
<attribute name="VALUE" x="36.83" y="113.538" size="1.778" layer="96"/>
</instance>
<instance part="DIAG" gate="G$1" x="35.56" y="-7.62" smashed="yes">
<attribute name="NAME" x="29.21" y="-1.905" size="1.778" layer="95"/>
<attribute name="VALUE" x="29.21" y="-12.7" size="1.778" layer="96"/>
</instance>
<instance part="U3" gate="G$1" x="86.36" y="2.54" smashed="yes">
<attribute name="NAME" x="76.594240625" y="8.6436" size="1.27158125" layer="95"/>
<attribute name="VALUE" x="76.60131875" y="-4.779009375" size="1.270659375" layer="96"/>
</instance>
<instance part="PROGRAMMER" gate="G$1" x="40.64" y="-45.72" smashed="yes">
<attribute name="NAME" x="38.354" y="-35.052" size="1.778" layer="95"/>
<attribute name="VALUE" x="38.1" y="-53.086" size="1.778" layer="96"/>
</instance>
<instance part="C3" gate="G$1" x="81.28" y="91.44" smashed="yes">
<attribute name="NAME" x="78.74" y="95.123" size="1.778" layer="95"/>
<attribute name="VALUE" x="77.978" y="83.439" size="1.778" layer="96"/>
</instance>
<instance part="C4" gate="G$1" x="116.84" y="12.7" smashed="yes">
<attribute name="NAME" x="114.3" y="16.383" size="1.778" layer="95"/>
<attribute name="VALUE" x="113.538" y="4.699" size="1.778" layer="96"/>
</instance>
<instance part="C5" gate="G$1" x="5.08" y="76.2" smashed="yes">
<attribute name="NAME" x="2.54" y="79.883" size="1.778" layer="95"/>
<attribute name="VALUE" x="1.778" y="68.199" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY2" gate="GND" x="81.28" y="81.28" smashed="yes">
<attribute name="VALUE" x="79.375" y="78.105" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY3" gate="GND" x="68.58" y="17.78" smashed="yes">
<attribute name="VALUE" x="66.675" y="14.605" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY4" gate="GND" x="101.6" y="-2.54" smashed="yes">
<attribute name="VALUE" x="99.695" y="-5.715" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY6" gate="GND" x="-48.26" y="86.36" smashed="yes">
<attribute name="VALUE" x="-50.165" y="83.185" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY7" gate="GND" x="-63.5" y="91.44" smashed="yes">
<attribute name="VALUE" x="-65.405" y="88.265" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY8" gate="GND" x="5.08" y="66.04" smashed="yes">
<attribute name="VALUE" x="3.175" y="62.865" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY5" gate="GND" x="-78.74" y="86.36" smashed="yes">
<attribute name="VALUE" x="-80.645" y="83.185" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY9" gate="GND" x="116.84" y="2.54" smashed="yes">
<attribute name="VALUE" x="114.935" y="-0.635" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<wire x1="2.54" y1="114.3" x2="2.54" y2="116.84" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="2.54" y1="116.84" x2="7.62" y2="116.84" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="C"/>
<wire x1="2.54" y1="104.14" x2="2.54" y2="96.52" width="0.1524" layer="91"/>
<pinref part="SUPPLY1" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="C3" gate="G$1" pin="2"/>
<wire x1="81.28" y1="86.36" x2="81.28" y2="83.82" width="0.1524" layer="91"/>
<pinref part="SUPPLY2" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="GND"/>
<wire x1="60.96" y1="20.32" x2="68.58" y2="20.32" width="0.1524" layer="91"/>
<pinref part="SUPPLY3" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="U3" gate="G$1" pin="GND"/>
<pinref part="SUPPLY4" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="C1" gate="G$1" pin="2"/>
<pinref part="SUPPLY5" gate="GND" pin="GND"/>
<wire x1="-78.74" y1="91.44" x2="-78.74" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="ADJ/GND"/>
<pinref part="SUPPLY7" gate="GND" pin="GND"/>
<wire x1="-63.5" y1="96.52" x2="-63.5" y2="93.98" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C2" gate="G$1" pin="2"/>
<pinref part="SUPPLY6" gate="GND" pin="GND"/>
<wire x1="-48.26" y1="91.44" x2="-48.26" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY9" gate="GND" pin="GND"/>
<pinref part="C4" gate="G$1" pin="2"/>
<wire x1="116.84" y1="5.08" x2="116.84" y2="7.62" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="PROGRAMMER" gate="G$1" pin="P$5"/>
<wire x1="43.18" y1="-48.26" x2="63.5" y2="-48.26" width="0.1524" layer="91"/>
<label x="58.42" y="-48.26" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="C5" gate="G$1" pin="2"/>
<pinref part="SUPPLY8" gate="GND" pin="GND"/>
<wire x1="5.08" y1="71.12" x2="5.08" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="3V3" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="17.78" y1="116.84" x2="27.94" y2="116.84" width="0.1524" layer="91"/>
<wire x1="27.94" y1="116.84" x2="27.94" y2="124.46" width="0.1524" layer="91"/>
<label x="27.94" y="124.46" size="1.778" layer="95"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="27.94" y1="116.84" x2="35.56" y2="116.84" width="0.1524" layer="91"/>
<junction x="27.94" y="116.84"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="3V3"/>
<wire x1="60.96" y1="86.36" x2="63.5" y2="86.36" width="0.1524" layer="91"/>
<wire x1="63.5" y1="86.36" x2="63.5" y2="93.98" width="0.1524" layer="91"/>
<pinref part="C3" gate="G$1" pin="1"/>
<wire x1="63.5" y1="93.98" x2="81.28" y2="93.98" width="0.1524" layer="91"/>
<label x="63.5" y="86.36" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="OUT"/>
<wire x1="-48.26" y1="106.68" x2="-35.56" y2="106.68" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="1"/>
<wire x1="-48.26" y1="99.06" x2="-48.26" y2="106.68" width="0.1524" layer="91"/>
<junction x="-48.26" y="106.68"/>
<pinref part="U2" gate="G$1" pin="4"/>
<label x="-40.64" y="106.68" size="1.778" layer="95"/>
</segment>
</net>
<net name="EN" class="0">
<segment>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="45.72" y1="116.84" x2="53.34" y2="116.84" width="0.1524" layer="91"/>
<wire x1="53.34" y1="116.84" x2="53.34" y2="109.22" width="0.1524" layer="91"/>
<label x="53.34" y="109.22" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="EN"/>
<wire x1="25.4" y1="81.28" x2="5.08" y2="81.28" width="0.1524" layer="91"/>
<label x="17.78" y="81.28" size="1.778" layer="95"/>
<pinref part="C5" gate="G$1" pin="1"/>
<wire x1="5.08" y1="81.28" x2="5.08" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="PROGRAMMER" gate="G$1" pin="P$1"/>
<wire x1="43.18" y1="-38.1" x2="63.5" y2="-38.1" width="0.1524" layer="91"/>
<label x="58.42" y="-38.1" size="1.778" layer="95"/>
</segment>
</net>
<net name="SVP" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="SENSOR_VP"/>
<wire x1="25.4" y1="73.66" x2="17.78" y2="73.66" width="0.1524" layer="91"/>
<label x="17.78" y="73.66" size="1.778" layer="95"/>
</segment>
</net>
<net name="SVN" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="SENSOR_VN"/>
<wire x1="25.4" y1="71.12" x2="17.78" y2="71.12" width="0.1524" layer="91"/>
<label x="17.78" y="71.12" size="1.778" layer="95"/>
</segment>
</net>
<net name="TX" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="TXD0"/>
<wire x1="25.4" y1="63.5" x2="17.78" y2="63.5" width="0.1524" layer="91"/>
<label x="17.78" y="63.5" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="PROGRAMMER" gate="G$1" pin="P$4"/>
<wire x1="43.18" y1="-45.72" x2="63.5" y2="-45.72" width="0.1524" layer="91"/>
<label x="58.42" y="-45.72" size="1.778" layer="95"/>
</segment>
</net>
<net name="RX" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="RXD0"/>
<wire x1="25.4" y1="60.96" x2="17.78" y2="60.96" width="0.1524" layer="91"/>
<label x="17.78" y="60.96" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="PROGRAMMER" gate="G$1" pin="P$3"/>
<wire x1="43.18" y1="-43.18" x2="63.5" y2="-43.18" width="0.1524" layer="91"/>
<label x="58.42" y="-43.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="SCS/CMD"/>
<wire x1="25.4" y1="53.34" x2="17.78" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="SCL/CLK"/>
<wire x1="25.4" y1="50.8" x2="17.78" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="SDO/SD0"/>
<wire x1="25.4" y1="48.26" x2="17.78" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="SDI/SD1"/>
<wire x1="25.4" y1="45.72" x2="17.78" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="SHD/SD2"/>
<wire x1="25.4" y1="38.1" x2="17.78" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="SWP/SD3"/>
<wire x1="25.4" y1="35.56" x2="17.78" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="IO2"/>
<wire x1="60.96" y1="78.74" x2="68.58" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="IO4"/>
<wire x1="60.96" y1="76.2" x2="68.58" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="IO5"/>
<wire x1="60.96" y1="73.66" x2="68.58" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="IO12"/>
<wire x1="60.96" y1="71.12" x2="68.58" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="IO13"/>
<wire x1="60.96" y1="68.58" x2="68.58" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="IO14"/>
<wire x1="60.96" y1="66.04" x2="68.58" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="IO15"/>
<wire x1="60.96" y1="63.5" x2="68.58" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="IO16"/>
<wire x1="60.96" y1="60.96" x2="68.58" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="IO17"/>
<wire x1="60.96" y1="58.42" x2="68.58" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="IO18"/>
<wire x1="60.96" y1="55.88" x2="68.58" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="IO19"/>
<wire x1="60.96" y1="53.34" x2="68.58" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="IO21"/>
<wire x1="60.96" y1="50.8" x2="68.58" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="IO22"/>
<wire x1="60.96" y1="48.26" x2="68.58" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="IO23"/>
<wire x1="60.96" y1="45.72" x2="68.58" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="IO25"/>
<wire x1="60.96" y1="43.18" x2="68.58" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="IO26"/>
<wire x1="60.96" y1="40.64" x2="68.58" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="IO27"/>
<wire x1="60.96" y1="38.1" x2="68.58" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="IO32"/>
<wire x1="60.96" y1="35.56" x2="68.58" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="IO33"/>
<wire x1="60.96" y1="33.02" x2="68.58" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="IO34"/>
<wire x1="60.96" y1="30.48" x2="68.58" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="IO35"/>
<wire x1="60.96" y1="27.94" x2="68.58" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="5V" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="IN"/>
<wire x1="-78.74" y1="106.68" x2="-88.9" y2="106.68" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="-78.74" y1="99.06" x2="-78.74" y2="106.68" width="0.1524" layer="91"/>
<label x="-88.9" y="106.68" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="+VS"/>
<wire x1="101.6" y1="5.08" x2="104.14" y2="5.08" width="0.1524" layer="91"/>
<wire x1="104.14" y1="5.08" x2="104.14" y2="15.24" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="1"/>
<wire x1="104.14" y1="15.24" x2="116.84" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="VOUT"/>
<wire x1="71.12" y1="2.54" x2="63.5" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="WS2812LED" gate="G$1" pin="1"/>
<wire x1="-2.54" y1="27.94" x2="5.08" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="WS2812LED" gate="G$1" pin="2"/>
<wire x1="-2.54" y1="25.4" x2="5.08" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="WS2812LED" gate="G$1" pin="3"/>
<wire x1="-2.54" y1="22.86" x2="5.08" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="IO0" class="0">
<segment>
<pinref part="PROGRAMMER" gate="G$1" pin="P$2"/>
<wire x1="43.18" y1="-40.64" x2="63.5" y2="-40.64" width="0.1524" layer="91"/>
<label x="58.42" y="-40.64" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="IO0"/>
<wire x1="60.96" y1="81.28" x2="68.58" y2="81.28" width="0.1524" layer="91"/>
<label x="66.04" y="81.28" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="RAIL" gate="A" pin="1"/>
<wire x1="15.24" y1="-5.08" x2="0" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="RAIL" gate="A" pin="2"/>
<wire x1="15.24" y1="-7.62" x2="0" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="RAIL" gate="A" pin="3"/>
<wire x1="15.24" y1="-10.16" x2="0" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="RAIL" gate="A" pin="4"/>
<wire x1="15.24" y1="-12.7" x2="0" y2="-12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<pinref part="RAIL" gate="A" pin="5"/>
<wire x1="15.24" y1="-15.24" x2="0" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="RAIL" gate="A" pin="6"/>
<wire x1="15.24" y1="-17.78" x2="0" y2="-17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$40" class="0">
<segment>
<pinref part="RAIL" gate="A" pin="7"/>
<wire x1="15.24" y1="-20.32" x2="0" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$41" class="0">
<segment>
<pinref part="RAIL" gate="A" pin="8"/>
<wire x1="15.24" y1="-22.86" x2="0" y2="-22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$42" class="0">
<segment>
<pinref part="RAIL" gate="A" pin="9"/>
<wire x1="15.24" y1="-25.4" x2="0" y2="-25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$43" class="0">
<segment>
<pinref part="RAIL" gate="A" pin="10"/>
<wire x1="15.24" y1="-27.94" x2="0" y2="-27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$44" class="0">
<segment>
<pinref part="DIAG" gate="G$1" pin="1"/>
<wire x1="33.02" y1="-5.08" x2="45.72" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$45" class="0">
<segment>
<pinref part="DIAG" gate="G$1" pin="2"/>
<wire x1="33.02" y1="-7.62" x2="45.72" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
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
