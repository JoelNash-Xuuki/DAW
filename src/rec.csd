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

	instr 1 
    irvbsnd=  p4 
    icmbsnd=  p5

	ain1 inch 1
	fout "/home/pi/audio/SMILE-22092022154025-vocal-11.wav", 14, ain1
   	outs ain1*3.5, ain1*3.5

	garvb	=		garvb+(ain1*irvbsnd)
	gacmb	=		gacmb+(ain1*icmbsnd)
	endin

		instr 106	
		ispd= p5
		ipan= p6
		ipch=  261.6256
a1		loscil 0.5, ipch*ispd, p4, ipch, 0
		outs     a1*ipan, a1*(1-ipan)
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

t 0 84

f 4 0 0 1 "/home/pi/audio/SMILE-22092022154025-trim.wav" 0 4 1
f 5 0 0 1 "/home/pi/audio/SMILE-22092022154025-trim.wav" 0 4 2

;f 10 0 0 1 "/home/pi/audio/OYM-16092022115610-guitar-1.wav" 12 4 1 ; mark

;ins	strt	dur 	rvbtim	hfroll	
;===================================================================
i199	0		34		2.6		.1		

;ins	strt	dur 	time	loop	
;===================================================================
i198	0		34		10		.25		

i 1 0 100  0.01 0.01

i 106 0 100 4 1 0 
i 106 0 100 5 1 1
s

</CsScore>
</CsoundSynthesizer>
