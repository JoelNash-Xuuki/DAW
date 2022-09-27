<CsoundSynthesizer>
<CsOptions>
</CsOptions>
<CsInstruments>
sr= 48000
ksmps = 64
nchnls = 2
0dbfs  = 1

gacmb		init 0
garvb		init 0

		instr 106	
		ispd= p5
		ipan= p6
		irvbsnd=  p7 
    		icmbsnd=  p8
		ipch=  261.6256
a1		loscil p10, ipch*ispd, p4, ipch, 0
a1hp		butterhp a1, p9
		outs     a1hp*ipan, a1hp*(1-ipan)
garvb		=		garvb+(a1hp*irvbsnd)
gacmb		=		gacmb+(a1hp*icmbsnd)

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

a 0 10 0

f 1001 0 0 1 "/home/pi/audio/SMILE-22092022154025-vocal-1.wav" 0 4 1
f 1002 0 0 1 "/home/pi/audio/SMILE-22092022154025-vocal-2.wav" 0 4 1
f 1003 0 0 1 "/home/pi/audio/SMILE-22092022154025-vocal-11.wav" 0 4 1

f 4 0 0 1 "/home/pi/audio/SMILE-22092022154025-trim.wav" 0 4 1
f 5 0 0 1 "/home/pi/audio/SMILE-22092022154025-trim.wav" 0 4 2

;ins	strt	dur 	rvbtim	hfroll	
;===================================================================
i199	0		100		2.6		.1		

;ins	strt	dur 	time	loop	
;===================================================================
i198	0		100		10		.25		


1 106 0.02   100 1003 1 0.1 0.01 0.01 400 0.1
i 106 0      100 1003 1 0.5 0.01 0.01 400 0.1
i 106 0.01   100 1003 1 0.9 0.01 0.01 400 0.1

i 106 0  100 4 1 0    0 0 0   0.4
i 106 0  100 5 1 1    0 0 0   0.4
s

</CsScore>
</CsoundSynthesizer>
