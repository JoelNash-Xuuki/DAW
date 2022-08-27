sr 		= 		44100
kr 		= 		4410
ksmps 	= 		10
nchnls 	= 		2

		instr 	105
		ilookup tableng p10

		iamp= p4
		ipch= (44100 / ilookup) * p5	
		idens= p6
		iampdev= p7
		ipchdev= p8
		igdur= p9
		ifile= p10
		ienv= p11
		igrnd= p12
		
a1 		grain 	iamp, ipch, idens, iampdev, ipchdev, igdur, ifile, ienv, igrnd, 1 ; asynchronous granular synthesis
		outs 	a1, a1
		endin
