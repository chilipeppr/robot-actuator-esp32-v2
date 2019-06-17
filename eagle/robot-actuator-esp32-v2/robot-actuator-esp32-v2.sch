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
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
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
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="ttgo-micro32-v2" urn="urn:adsk.eagle:library:11701504">
<packages>
<package name="TTG0-MICRO32-V2" urn="urn:adsk.eagle:footprint:11701505/2" library_version="2">
<description>https://github.com/LilyGO/TTGO-micro32-V2.0

&lt;img src="https://user-images.githubusercontent.com/3680955/44953881-4627a500-ae9a-11e8-8a5f-1edf618ab2ba.jpg" width="500"&gt;</description>
<wire x1="-3.8" y1="7.5549" x2="-3.8" y2="8" width="0.12" layer="21"/>
<wire x1="-3.8" y1="8" x2="3.8" y2="8" width="0.12" layer="21"/>
<wire x1="3.8" y1="8" x2="3.8" y2="7.5549" width="0.12" layer="21"/>
<wire x1="-3.8" y1="-7.5549" x2="-3.8" y2="-8" width="0.12" layer="21"/>
<wire x1="-3.8" y1="-8" x2="3.8" y2="-8" width="0.12" layer="21"/>
<wire x1="3.8" y1="-8" x2="3.8" y2="-7.5549" width="0.12" layer="21"/>
<wire x1="6.5" y1="-7" x2="-6.5" y2="-7" width="0.12" layer="51"/>
<wire x1="-6.5" y1="-7" x2="-6.5" y2="7" width="0.12" layer="51"/>
<wire x1="-6.5" y1="7" x2="6.5" y2="7" width="0.12" layer="51"/>
<wire x1="6.5" y1="7" x2="6.5" y2="-7" width="0.12" layer="51"/>
<wire x1="-6.5" y1="7.7" x2="-6.5" y2="10.6" width="0.1524" layer="21"/>
<wire x1="-6.5" y1="10.6" x2="6.5" y2="10.6" width="0.1524" layer="21"/>
<wire x1="6.5" y1="10.6" x2="6.5" y2="7.6" width="0.1524" layer="21"/>
<wire x1="6.5" y1="7.6" x2="-6.5" y2="7.6" width="0.1524" layer="21"/>
<smd name="1" x="-6.4554" y="7" dx="1.901" dy="0.6019" layer="1" roundness="100"/>
<smd name="2" x="-6.4554" y="6" dx="1.901" dy="0.6019" layer="1" roundness="100"/>
<smd name="3" x="-6.4554" y="5" dx="1.901" dy="0.6019" layer="1" roundness="100"/>
<smd name="4" x="-6.4554" y="4" dx="1.901" dy="0.6019" layer="1" roundness="100"/>
<smd name="5" x="-6.4554" y="3" dx="1.901" dy="0.6019" layer="1" roundness="100"/>
<smd name="6" x="-6.4554" y="2" dx="1.901" dy="0.6019" layer="1" roundness="100"/>
<smd name="7" x="-6.4554" y="1" dx="1.901" dy="0.6019" layer="1" roundness="100"/>
<smd name="8" x="-6.4554" y="0" dx="1.901" dy="0.6019" layer="1" roundness="100"/>
<smd name="9" x="-6.4554" y="-1" dx="1.901" dy="0.6019" layer="1" roundness="100"/>
<smd name="10" x="-6.4554" y="-2" dx="1.901" dy="0.6019" layer="1" roundness="100"/>
<smd name="11" x="-6.4554" y="-3" dx="1.901" dy="0.6019" layer="1" roundness="100"/>
<smd name="12" x="-6.4554" y="-4" dx="1.901" dy="0.6019" layer="1" roundness="100"/>
<smd name="13" x="-6.4554" y="-5" dx="1.901" dy="0.6019" layer="1" roundness="100"/>
<smd name="14" x="-6.4554" y="-6" dx="1.901" dy="0.6019" layer="1" roundness="100"/>
<smd name="15" x="-6.4554" y="-7" dx="1.901" dy="0.6019" layer="1" roundness="100"/>
<smd name="16" x="6.4554" y="-7" dx="1.901" dy="0.6019" layer="1" roundness="100"/>
<smd name="17" x="6.4554" y="-6" dx="1.901" dy="0.6019" layer="1" roundness="100"/>
<smd name="18" x="6.4554" y="-5" dx="1.901" dy="0.6019" layer="1" roundness="100"/>
<smd name="19" x="6.4554" y="-4" dx="1.901" dy="0.6019" layer="1" roundness="100"/>
<smd name="20" x="6.4554" y="-3" dx="1.901" dy="0.6019" layer="1" roundness="100"/>
<smd name="21" x="6.4554" y="-2" dx="1.901" dy="0.6019" layer="1" roundness="100"/>
<smd name="22" x="6.4554" y="-1" dx="1.901" dy="0.6019" layer="1" roundness="100"/>
<smd name="23" x="6.4554" y="0" dx="1.901" dy="0.6019" layer="1" roundness="100"/>
<smd name="24" x="6.4554" y="1" dx="1.901" dy="0.6019" layer="1" roundness="100"/>
<smd name="25" x="6.4554" y="2" dx="1.901" dy="0.6019" layer="1" roundness="100"/>
<smd name="26" x="6.4554" y="3" dx="1.901" dy="0.6019" layer="1" roundness="100"/>
<smd name="27" x="6.4554" y="4" dx="1.901" dy="0.6019" layer="1" roundness="100"/>
<smd name="28" x="6.4554" y="5" dx="1.901" dy="0.6019" layer="1" roundness="100"/>
<smd name="29" x="6.4554" y="6" dx="1.901" dy="0.6019" layer="1" roundness="100"/>
<smd name="30" x="6.4554" y="7" dx="1.901" dy="0.6019" layer="1" roundness="100"/>
<smd name="31" x="-3.498" y="-8.3724" dx="1.901" dy="0.6019" layer="1" roundness="100" rot="R90"/>
<smd name="32" x="-2.498" y="-8.3724" dx="1.901" dy="0.6019" layer="1" roundness="100" rot="R90"/>
<smd name="33" x="-1.498" y="-8.3724" dx="1.901" dy="0.6019" layer="1" roundness="100" rot="R90"/>
<smd name="34" x="-0.498" y="-8.3724" dx="1.901" dy="0.6019" layer="1" roundness="100" rot="R90"/>
<smd name="35" x="0.502" y="-8.3724" dx="1.901" dy="0.6019" layer="1" roundness="100" rot="R90"/>
<smd name="36" x="1.502" y="-8.3724" dx="1.901" dy="0.6019" layer="1" roundness="100" rot="R90"/>
<smd name="37" x="2.502" y="-8.3724" dx="1.901" dy="0.6019" layer="1" roundness="100" rot="R90"/>
<smd name="38" x="3.502" y="-8.3724" dx="1.901" dy="0.6019" layer="1" roundness="100" rot="R90"/>
<text x="0" y="8.6899" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-8.635" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="TTG0-MICRO32-V2" urn="urn:adsk.eagle:package:11701507/3" type="model" library_version="2">
<description>https://github.com/LilyGO/TTGO-micro32-V2.0

&lt;img src="https://user-images.githubusercontent.com/3680955/44953881-4627a500-ae9a-11e8-8a5f-1edf618ab2ba.jpg" width="500"&gt;</description>
<packageinstances>
<packageinstance name="TTG0-MICRO32-V2"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="TTGO-MICRO32" urn="urn:adsk.eagle:symbol:11701506/1" library_version="2">
<pin name="GND@1" x="20.32" y="17.78" length="middle"/>
<pin name="IO23" x="20.32" y="15.24" length="middle"/>
<pin name="IO22" x="20.32" y="12.7" length="middle"/>
<pin name="TXD" x="20.32" y="10.16" length="middle"/>
<pin name="RXD" x="20.32" y="7.62" length="middle"/>
<pin name="IO21" x="20.32" y="5.08" length="middle"/>
<pin name="NC" x="20.32" y="2.54" length="middle"/>
<pin name="IO19" x="20.32" y="0" length="middle"/>
<pin name="IO18" x="20.32" y="-2.54" length="middle"/>
<pin name="IO5" x="20.32" y="-5.08" length="middle"/>
<pin name="IO17" x="20.32" y="-7.62" length="middle"/>
<pin name="IO16" x="20.32" y="-10.16" length="middle"/>
<pin name="IO4" x="20.32" y="-12.7" length="middle"/>
<pin name="IO0" x="20.32" y="-15.24" length="middle"/>
<pin name="IO2" x="20.32" y="-17.78" length="middle"/>
<pin name="IO15" x="12.7" y="-22.86" length="middle" rot="R270"/>
<pin name="SD1" x="10.16" y="-22.86" length="middle" rot="R270"/>
<pin name="SD3" x="7.62" y="-22.86" length="middle" rot="R270"/>
<pin name="CLK" x="5.08" y="-22.86" length="middle" rot="R270"/>
<pin name="SD2" x="2.54" y="-22.86" length="middle" rot="R270"/>
<pin name="IO10" x="0" y="-22.86" length="middle" rot="R270"/>
<pin name="IO9" x="-2.54" y="-22.86" length="middle" rot="R270"/>
<pin name="IO13" x="-5.08" y="-22.86" length="middle" rot="R270"/>
<pin name="GND@2" x="-12.7" y="-17.78" length="middle" rot="R180"/>
<pin name="IO12" x="-12.7" y="-15.24" length="middle" rot="R180"/>
<pin name="IO14" x="-12.7" y="-12.7" length="middle" rot="R180"/>
<pin name="IO27" x="-12.7" y="-10.16" length="middle" rot="R180"/>
<pin name="IO26" x="-12.7" y="-7.62" length="middle" rot="R180"/>
<pin name="IO25" x="-12.7" y="-5.08" length="middle" rot="R180"/>
<pin name="IO33" x="-12.7" y="-2.54" length="middle" rot="R180"/>
<pin name="IO32" x="-12.7" y="0" length="middle" rot="R180"/>
<pin name="IO35" x="-12.7" y="2.54" length="middle" rot="R180"/>
<pin name="IO34" x="-12.7" y="5.08" length="middle" rot="R180"/>
<pin name="VN" x="-12.7" y="7.62" length="middle" rot="R180"/>
<pin name="VP" x="-12.7" y="10.16" length="middle" rot="R180"/>
<pin name="EN" x="-12.7" y="12.7" length="middle" rot="R180"/>
<pin name="3V3" x="-12.7" y="15.24" length="middle" rot="R180"/>
<pin name="GND@3" x="-12.7" y="17.78" length="middle" rot="R180"/>
<wire x1="-10.16" y1="-20.32" x2="17.78" y2="-20.32" width="0.1524" layer="94"/>
<wire x1="17.78" y1="-20.32" x2="17.78" y2="20.32" width="0.1524" layer="94"/>
<wire x1="17.78" y1="20.32" x2="-10.16" y2="20.32" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="20.32" x2="-10.16" y2="-20.32" width="0.1524" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="TTGO-MICRO32" urn="urn:adsk.eagle:component:11701508/2" library_version="2">
<gates>
<gate name="G$1" symbol="TTGO-MICRO32" x="-5.08" y="5.08"/>
</gates>
<devices>
<device name="" package="TTG0-MICRO32-V2">
<connects>
<connect gate="G$1" pin="3V3" pad="37"/>
<connect gate="G$1" pin="CLK" pad="19"/>
<connect gate="G$1" pin="EN" pad="36"/>
<connect gate="G$1" pin="GND@1" pad="1"/>
<connect gate="G$1" pin="GND@2" pad="24"/>
<connect gate="G$1" pin="GND@3" pad="38"/>
<connect gate="G$1" pin="IO0" pad="14"/>
<connect gate="G$1" pin="IO10" pad="21"/>
<connect gate="G$1" pin="IO12" pad="25"/>
<connect gate="G$1" pin="IO13" pad="23"/>
<connect gate="G$1" pin="IO14" pad="26"/>
<connect gate="G$1" pin="IO15" pad="16"/>
<connect gate="G$1" pin="IO16" pad="12"/>
<connect gate="G$1" pin="IO17" pad="11"/>
<connect gate="G$1" pin="IO18" pad="9"/>
<connect gate="G$1" pin="IO19" pad="8"/>
<connect gate="G$1" pin="IO2" pad="15"/>
<connect gate="G$1" pin="IO21" pad="6"/>
<connect gate="G$1" pin="IO22" pad="3"/>
<connect gate="G$1" pin="IO23" pad="2"/>
<connect gate="G$1" pin="IO25" pad="29"/>
<connect gate="G$1" pin="IO26" pad="28"/>
<connect gate="G$1" pin="IO27" pad="27"/>
<connect gate="G$1" pin="IO32" pad="31"/>
<connect gate="G$1" pin="IO33" pad="30"/>
<connect gate="G$1" pin="IO34" pad="33"/>
<connect gate="G$1" pin="IO35" pad="32"/>
<connect gate="G$1" pin="IO4" pad="13"/>
<connect gate="G$1" pin="IO5" pad="10"/>
<connect gate="G$1" pin="IO9" pad="22"/>
<connect gate="G$1" pin="NC" pad="7"/>
<connect gate="G$1" pin="RXD" pad="5"/>
<connect gate="G$1" pin="SD1" pad="17"/>
<connect gate="G$1" pin="SD2" pad="20"/>
<connect gate="G$1" pin="SD3" pad="18"/>
<connect gate="G$1" pin="TXD" pad="4"/>
<connect gate="G$1" pin="VN" pad="34"/>
<connect gate="G$1" pin="VP" pad="35"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:11701507/3"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="hdr1pt27mm" urn="urn:adsk.eagle:library:11701678">
<packages>
<package name="HDRV18W40P127_1X18_2257X208X508C" urn="urn:adsk.eagle:footprint:11701577/4" library_version="3">
<description>Single-row, 18-pin Pin Header (Male) Straight, 1.27 mm (0.05 in) col pitch, 2.54 mm mating length, 22.58 X 2.08 X 5.08 mm body
&lt;p&gt;Single-row (1X18), 18-pin Pin Header (Male) Straight package with 1.27 mm (0.05 in) col pitch, 0.40 mm lead width, 2.54 mm tail length and 2.54 mm mating length with overall size 22.58 X 2.08 X 5.08 mm, pin pattern - clockwise from top left&lt;/p&gt;</description>
<circle x="0" y="1.544" radius="0.25" width="0" layer="21"/>
<wire x1="22.4518" y1="-1.04" x2="-0.8618" y2="-1.04" width="0.12" layer="21"/>
<wire x1="-0.8618" y1="-1.04" x2="-0.8618" y2="1.04" width="0.12" layer="21"/>
<wire x1="-0.8618" y1="1.04" x2="22.4518" y2="1.04" width="0.12" layer="21"/>
<wire x1="22.4518" y1="1.04" x2="22.4518" y2="-1.04" width="0.12" layer="21"/>
<wire x1="22.083" y1="-1.04" x2="-0.493" y2="-1.04" width="0.12" layer="51"/>
<wire x1="-0.493" y1="-1.04" x2="-0.493" y2="1.04" width="0.12" layer="51"/>
<wire x1="-0.493" y1="1.04" x2="22.083" y2="1.04" width="0.12" layer="51"/>
<wire x1="22.083" y1="1.04" x2="22.083" y2="-1.04" width="0.12" layer="51"/>
<pad name="1" x="0" y="0" drill="0.66" diameter="1.016" shape="offset" rot="R90"/>
<pad name="2" x="1.27" y="0" drill="0.66" diameter="1.016" shape="offset" rot="R90"/>
<pad name="3" x="2.54" y="0" drill="0.66" diameter="1.016" shape="offset" rot="R90"/>
<pad name="4" x="3.81" y="0" drill="0.66" diameter="1.016" shape="offset" rot="R90"/>
<pad name="5" x="5.08" y="0" drill="0.66" diameter="1.016" shape="offset" rot="R90"/>
<pad name="6" x="6.35" y="0" drill="0.66" diameter="1.016" shape="offset" rot="R90"/>
<pad name="7" x="7.62" y="0" drill="0.66" diameter="1.016" shape="offset" rot="R90"/>
<pad name="8" x="8.89" y="0" drill="0.66" diameter="1.016" shape="offset" rot="R90"/>
<pad name="9" x="10.16" y="0" drill="0.66" diameter="1.016" shape="offset" rot="R90"/>
<pad name="10" x="11.43" y="0" drill="0.66" diameter="1.016" shape="offset" rot="R90"/>
<pad name="11" x="12.7" y="0" drill="0.66" diameter="1.016" shape="offset" rot="R90"/>
<pad name="12" x="13.97" y="0" drill="0.66" diameter="1.016" shape="offset" rot="R90"/>
<pad name="13" x="15.24" y="0" drill="0.66" diameter="1.016" shape="offset" rot="R90"/>
<pad name="14" x="16.51" y="0" drill="0.66" diameter="1.016" shape="offset" rot="R90"/>
<pad name="15" x="17.78" y="0" drill="0.66" diameter="1.016" shape="offset" rot="R90"/>
<pad name="16" x="19.05" y="0" drill="0.66" diameter="1.016" shape="offset" rot="R90"/>
<pad name="17" x="20.32" y="0" drill="0.66" diameter="1.016" shape="offset" rot="R90"/>
<pad name="18" x="21.59" y="0" drill="0.66" diameter="1.016" shape="offset" rot="R90"/>
<text x="0" y="2.429" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.675" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="HDRV18W40P127_1X18_2257X208X508C" urn="urn:adsk.eagle:package:11701575/5" type="model" library_version="3">
<description>Single-row, 18-pin Pin Header (Male) Straight, 1.27 mm (0.05 in) col pitch, 2.54 mm mating length, 22.58 X 2.08 X 5.08 mm body
&lt;p&gt;Single-row (1X18), 18-pin Pin Header (Male) Straight package with 1.27 mm (0.05 in) col pitch, 0.40 mm lead width, 2.54 mm tail length and 2.54 mm mating length with overall size 22.58 X 2.08 X 5.08 mm, pin pattern - clockwise from top left&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="HDRV18W40P127_1X18_2257X208X508C"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="18PINHDR" urn="urn:adsk.eagle:symbol:11701679/1" library_version="1">
<pin name="P$1" x="0" y="22.86" length="middle"/>
<pin name="P$2" x="0" y="20.32" length="middle"/>
<pin name="P$3" x="0" y="17.78" length="middle"/>
<pin name="P$4" x="0" y="15.24" length="middle"/>
<pin name="P$5" x="0" y="12.7" length="middle"/>
<pin name="P$6" x="0" y="10.16" length="middle"/>
<pin name="P$7" x="0" y="7.62" length="middle"/>
<pin name="P$8" x="0" y="5.08" length="middle"/>
<pin name="P$9" x="0" y="2.54" length="middle"/>
<pin name="P$10" x="0" y="0" length="middle"/>
<pin name="P$11" x="0" y="-2.54" length="middle"/>
<pin name="P$12" x="0" y="-5.08" length="middle"/>
<pin name="P$13" x="0" y="-7.62" length="middle"/>
<pin name="P$14" x="0" y="-10.16" length="middle"/>
<pin name="P$15" x="0" y="-12.7" length="middle"/>
<pin name="P$16" x="0" y="-15.24" length="middle"/>
<pin name="P$17" x="0" y="-17.78" length="middle"/>
<pin name="P$18" x="0" y="-20.32" length="middle"/>
<wire x1="-2.54" y1="-22.86" x2="0" y2="-22.86" width="0.1524" layer="94"/>
<wire x1="0" y1="-22.86" x2="0" y2="25.4" width="0.1524" layer="94"/>
<wire x1="0" y1="25.4" x2="-2.54" y2="25.4" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="25.4" x2="-2.54" y2="-22.86" width="0.1524" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="1.27MMHDR18PIN" urn="urn:adsk.eagle:component:11701680/3" library_version="3">
<gates>
<gate name="G$1" symbol="18PINHDR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="HDRV18W40P127_1X18_2257X208X508C">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$10" pad="10"/>
<connect gate="G$1" pin="P$11" pad="11"/>
<connect gate="G$1" pin="P$12" pad="12"/>
<connect gate="G$1" pin="P$13" pad="13"/>
<connect gate="G$1" pin="P$14" pad="14"/>
<connect gate="G$1" pin="P$15" pad="15"/>
<connect gate="G$1" pin="P$16" pad="16"/>
<connect gate="G$1" pin="P$17" pad="17"/>
<connect gate="G$1" pin="P$18" pad="18"/>
<connect gate="G$1" pin="P$2" pad="2"/>
<connect gate="G$1" pin="P$3" pad="3"/>
<connect gate="G$1" pin="P$4" pad="4"/>
<connect gate="G$1" pin="P$5" pad="5"/>
<connect gate="G$1" pin="P$6" pad="6"/>
<connect gate="G$1" pin="P$7" pad="7"/>
<connect gate="G$1" pin="P$8" pad="8"/>
<connect gate="G$1" pin="P$9" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:11701575/5"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ESP32-WROOM-32D" urn="urn:adsk.eagle:library:9204057">
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
</packages>
<packages3d>
<package3d name="MODULE_ESP32-WROOM-32D" urn="urn:adsk.eagle:package:9204060/1" type="box" library_version="1">
<packageinstances>
<packageinstance name="MODULE_ESP32-WROOM-32D"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="ESP32-WROOM-32D" urn="urn:adsk.eagle:symbol:9204059/1" library_version="1">
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
</symbols>
<devicesets>
<deviceset name="ESP32-WROOM-32D" urn="urn:adsk.eagle:component:9204061/1" prefix="U" library_version="1">
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
<package3dinstance package3d_urn="urn:adsk.eagle:package:9204060/1"/>
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
<part name="U$1" library="ttgo-micro32-v2" library_urn="urn:adsk.eagle:library:11701504" deviceset="TTGO-MICRO32" device="" package3d_urn="urn:adsk.eagle:package:11701507/3"/>
<part name="U$2" library="hdr1pt27mm" library_urn="urn:adsk.eagle:library:11701678" deviceset="1.27MMHDR18PIN" device="" package3d_urn="urn:adsk.eagle:package:11701575/5"/>
<part name="U$3" library="hdr1pt27mm" library_urn="urn:adsk.eagle:library:11701678" deviceset="1.27MMHDR18PIN" device="" package3d_urn="urn:adsk.eagle:package:11701575/5"/>
<part name="U1" library="ESP32-WROOM-32D" library_urn="urn:adsk.eagle:library:9204057" deviceset="ESP32-WROOM-32D" device="" package3d_urn="urn:adsk.eagle:package:9204060/1"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="40.64" y="58.42" smashed="yes"/>
<instance part="U$2" gate="G$1" x="101.6" y="55.88" smashed="yes"/>
<instance part="U$3" gate="G$1" x="-5.08" y="55.88" smashed="yes"/>
<instance part="U1" gate="G$1" x="144.78" y="38.1" smashed="yes">
<attribute name="NAME" x="129.7441" y="74.7745" size="1.783840625" layer="95"/>
<attribute name="VALUE" x="129.4933" y="-0.1081" size="1.78345" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
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
