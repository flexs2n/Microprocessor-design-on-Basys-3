
i
Command: %s
1870*	planAhead27
#open_checkpoint TopLevel_routed.dcp2default:defaultZ12-2866h px
c
-Analyzing %s Unisim elements for replacement
17*netlist2
782default:defaultZ29-17h px
g
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px
u
Netlist was created with %s %s291*project2
Vivado2default:default2
2015.22default:defaultZ1-479h px
S
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px
H
)Preparing netlist for logic optimization
349*projectZ1-570h px
�
Parsing XDC File [%s]
179*designutils2�
�C:/Digital System design 3/Mouse Driver/Mouse Driver/Mouse Driver.runs/impl_1/.Xil/Vivado-13580-LAPTOP-GPGQ1FDU/dcp/TopLevel.xdc2default:defaultZ20-179h px
�
Finished Parsing XDC File [%s]
178*designutils2�
�C:/Digital System design 3/Mouse Driver/Mouse Driver/Mouse Driver.runs/impl_1/.Xil/Vivado-13580-LAPTOP-GPGQ1FDU/dcp/TopLevel.xdc2default:defaultZ20-178h px
<
Reading XDEF placement.
206*designutilsZ20-206h px
A
Reading placer database...
1602*designutilsZ20-1892h px
:
Reading XDEF routing.
207*designutilsZ20-207h px
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
Read XDEF File: 2default:default2
00:00:002default:default2 
00:00:00.0812default:default2
453.1292default:default2
0.0002default:defaultZ17-268h px
�
7Restored from archive | CPU: %s secs | Memory: %s MB |
1612*designutils2
0.0000002default:default2
0.0000002default:defaultZ20-1924h px
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common20
Finished XDEF File Restore: 2default:default2
00:00:002default:default2 
00:00:00.0822default:default2
453.1292default:default2
0.0002default:defaultZ17-268h px
�
!Unisim Transformation Summary:
%s111*project2k
W  A total of 2 instances were transformed.
  IOBUF => IOBUF (IBUF, OBUFT): 2 instances
2default:defaultZ1-111h px
`
$Checkpoint was created with build %s293*project2
12668562default:defaultZ1-484h px
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-347h px
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-349h px
�
�The version limit for your license is '%s' and will expire in %s days. A version limit expiration means that, although you may be able to continue to use the current version of tools or IP with this license, you will not be eligible for any updates or new releases.
519*common2
2024.092default:default2
-1832default:defaultZ17-1223h px
u
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px
M
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px
�
Rule violation (%s) %s - %s
20*drc2
CFGBVS-12default:default2G
3Missing CFGBVS and CONFIG_VOLTAGE Design Properties2default:default2�
�Neither the CFGBVS nor CONFIG_VOLTAGE voltage property is set in the current_design.  Configuration bank voltage select (CFGBVS) must be set to VCCO or GND, and CONFIG_VOLTAGE must be set to the correct configuration voltage, in order to determine the I/O voltage support for the pins in bank 0.  It is suggested to specify these either using the 'Edit Device Properties' function in the GUI or directly in the XDC file using the following syntax:

 set_property CFGBVS value1 [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE value2 [current_design]
 #where value2 is the voltage provided to configuration bank 0

Refer to the device configuration user guide for more information.2default:defaultZ23-20h px
c
DRC finished with %s
1905*	planAhead2(
0 Errors, 1 Warnings2default:defaultZ12-3199h px
f
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px
<
Loading data files...
1271*designutilsZ12-1165h px
;
Loading site data...
1273*designutilsZ12-1167h px
<
Loading route data...
1272*designutilsZ12-1166h px
<
Processing options...
1362*designutilsZ12-1514h px
9
Creating bitmap...
1249*designutilsZ12-1141h px
4
Creating bitstream...
7*	bitstreamZ40-7h px
\
Writing bitstream %s...
11*	bitstream2"
./TopLevel.bit2default:defaultZ40-11h px
C
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px
W
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:122default:default2
00:00:122default:default2
795.4022default:default2
342.2732default:defaultZ17-268h px
b
Unable to parse hwdef file %s162*	vivadotcl2"
TopLevel.hwdef2default:defaultZ4-395h px


End Record