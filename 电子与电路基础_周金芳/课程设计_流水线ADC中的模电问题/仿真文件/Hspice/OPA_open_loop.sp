.title OPA_open_loop

.include 'OPA.cdl'

x1 1 2 3 4 5 OPAMP
* 1 vip
* 2 vin
* 3 vout
* 4 VDD
* 5 VSS
VDD 4 0 DC  2.5
VSS 0 5 DC  2.5
vvip 1 0 DC 0 AC 1.0
vvin 2 0 DC 0
CL 3 0 10P

.op											  
.tf v(3) vvip		    		 
.dc vvip -0.005 0.005 100U 
.probe dc v(3)				

.ac dec 10 1 1g
.print ac vdb(3) vp(3)

.temp 27								   
.option post accurate probe

.end