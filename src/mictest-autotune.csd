<CsoundSynthesizer>
<CsOptions>
</CsOptions>
<CsInstruments>
sr= 48000
ksmps = 64
nchnls = 2
0dbfs  = 1

gacmb	init 0
garvb	init 0

		instr 106	
		irvbsnd=  p7 
    		icmbsnd=  p8
		ispd= p5
		ipan= p6
		ipch=  261.6256
a1		loscil p10, ipch*ispd, p4, ipch, 0
alp		butterlp a1, p9
		outs     alp*ipan, alp*(1-ipan)
		garvb	=		garvb+(alp*irvbsnd)
		gacmb	=		gacmb+(alp*icmbsnd)
		endin

		instr 107	
		irvbsnd=  p7 
    		icmbsnd=  p8

		ispd= p5
		ipan= p6
		ipch=  261.6256
a1		loscil 0.5, ipch*ispd, p4, ipch, 0
ahp		butterhp a1, 1000
		outs     ahp*ipan, ahp*(1-ipan)
		garvb	=		garvb+(ahp*irvbsnd)
		gacmb	=		gacmb+(ahp*icmbsnd)
		endin

		instr	198
idur	=		p3
itime 	= 		p4
iloop 	= 		p5
kenv	linen	1, .01, idur, .01
acomb 	comb	gacmb, itime, iloop, 0
		out		acomb*kenv
gacmb	=		0
		endin

		instr 	199
idur	=		p3					
irvbtim	=		p4
ihiatn	=		p5
arvb	reverb2	garvb, irvbtim, ihiatn
		out		arvb
garvb	=		0
		endin

</CsInstruments>
<CsScore>
;f 1 0 0 1 "/home/pi/audio/test.wav" 0 4 1
f 2 0 0 1 "/home/pi/audio/OYM-16092022115610-vocal-4.wav" 0 4 1
f 21 0 0 1 "/home/pi/audio/OYM-16092022115610-vocal-31.wav" 0 4 1 ; mark


f 1000 0 0 1 "/home/pi/audio/smile.wav" 0 4 1
f 1001 0 0 1 "/home/pi/audio/smile.wav" 0 4 2


t 0 80


f 2 0 0 1 "/home/pi/audio/OYM-16092022115610-vocal-4.wav" 0 4 1
f 31 0 0 1 "/home/pi/audio/OYM-16092022115610-vocal-31.wav" 0 4 1 ; mark
f 311 0 0 1 "/home/pi/audio/OYM-16092022115610-vocal-31.wav" 3 4 1 ; mark
f 32 0 0 1 "/home/pi/audio/OYM-16092022115610-vocal-32.wav" 0 4 1 ; mark

f 34 0 0 1 "/home/pi/audio/OYM-16092022115610-vocal-31.wav" [0.75*7] 4 1 ; mark
f 35 0 0 1 "/home/pi/audio/OYM-16092022115610-vocal-38.wav" 0 4 1 ; mark
f 36 0 0 1 "/home/pi/audio/OYM-16092022115610-vocal-35.wav" [0.75*9] 4 1 ; mark
f 366 0 0 1 "/home/pi/audio/OYM-16092022115610-vocal-34.wav" [0.75*12] 4 1 ; mark

f 37 0 0 1 "/home/pi/audio/OYM-16092022115610-vocal-34.wav" [0.75*14.5] 4 1 ; mark
f 377 0 0 1 "/home/pi/audio/OYM-16092022115610-vocal-31.wav" [0.75*18] 4 1 ; mark
f 3777 0 0 1 "/home/pi/audio/OYM-16092022115610-vocal-20.wav" [0.75*20] 4 1 ; mark
;f 38 0 0 1 "/home/pi/audio/OYM-16092022115610-vocal-40.wav" [0.75*25] 4 1 ; mark
f 38 0 0 1 "/home/pi/audio/OYM-16092022115610-vocal-45.wav" [0.75*25] 4 1 ; mark
f 39 0 0 1 "/home/pi/audio/OYM-16092022115610-vocal-48.wav" [0.75*25] 4 1 ; mark
f 40 0 0 1 "/home/pi/audio/OYM-16092022115610-vocal-48.wav" [0.75*31] 4 1 ; mark



;ins	strt	dur 	rvbtim	hfroll	
;===================================================================
i199	0		34		2.6		.1		

;ins	strt	dur 	time	loop	
;===================================================================
i198	0		34		10		.25		

i 106 0  1 31 0.5 0.1 0.1 0.1 1000 0.5
;i 106 0  6.5 31 1 0.4 0.01 0.01 1000
;i 106 0  34 32 1 0.5 0.01 0.01 1500


i 106 0  7 35 1.004 0.5 0.01 0.01 2500 0.5
i 106 7  2.2 34 0.996 0.5 0.01 0.02 2600 0.5
i 106 9  3.2 36 0.983 0.5 0.01 0.01 2500 0.5
i 106 12  3 366 0.99425 0.5 0.01 0.01 2500 0.5
i 106 14.5  3.5 37 0.98275 0.5 0.01 0.01 2500 0.5
i 106 18  2 377 0.979 0.5 0.01 0.01 2500 0.5
;i 106 20  4.5 3777 0.98 0.5 0.01 0.01 2500 0.5

;;i 106 25  8 38 0.980 0.5 0.01 0.01 1500 0.5
;i 106 25  7 39 0.980 0.5 0.01 0.01 1500 0.5
;i 106 31  1 40 0.775 0.5 0.01 0.01 1500 0.5












i 107 4  1 311 0.1 0.9 0.01 0.01

i 106 0  12 1000 1 0 0 0 10000 0.5 
i 106 0  12 1001 1 1 0 0 10000 0.5

i 106 12 12 1000 1 0 0 0 10000 0.5 
i 106 12 12 1001 1 1 0 0 10000 0.5
i 106 24 12 1000 1 0 0 0 10000 0.5
i 106 24 12 1001 1 1 0 0 10000 0.5
e

</CsScore>
</CsoundSynthesizer>
