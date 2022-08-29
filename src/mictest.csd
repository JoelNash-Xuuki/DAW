<CsoundSynthesizer>
<CsOptions>
</CsOptions>
<CsInstruments>

sr = 48000
ksmps = 64
nchnls = 2
0dbfs  = 1

gacmb	init 0
garvb	init 0

	instr 1 

	ain1 inch 1
	adel linseg 0, p3*.5, 2.02, p3*.5, 0	;max delay time = 20ms
	aout flanger ain1, adel, 0.7
;	fout "test.wav", 14, aout
   	out ain1

	garvb	=		garvb+(ain1*irvbsnd)
	gacmb	=		gacmb+(ain1*icmbsnd)
	endin

	instr 106	
a1	loscil 0.5, 440, p4
	out  a1
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
f 4 0 0 1 "29082022175244.wav" 0 4 1
f 5 0 0 1 "29082022175244.wav" 0 4 2

;ins	strt	dur 	rvbtim	hfroll	
;===================================================================
i199	0		100		2.6		.1		

;ins	strt	dur 	time	loop	
;===================================================================
i198	0		100		10		.25		
;

i 1 0 100
i 106 0 100 4
i 106 0 100 5
e

</CsScore>
</CsoundSynthesizer>
