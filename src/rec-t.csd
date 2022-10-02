<CsoundSynthesizer>
<CsOptions>
</CsOptions>
<CsInstruments>

sr= %s
ksmps = 64
nchnls = 2
0dbfs  = 1

gacmb	init 0
garvb	init 0

		instr 1 
    	irvbsnd=  p4 
    	icmbsnd=  p5

		ain1 inch 1
		fout "%s", 14, ain1
   		out ain1

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
f4 0 0 1 "%s" 0 4 1
f5 0 0 1 "%s" 0 4 2
t  0 80

;ins	strt	dur 	rvbtim	hfroll	
i199	0		34		2.6		.1		

;ins	strt	dur 	time	loop	
i198	0		34		10		.25		

i 1   0  34 0.01 0.01
i 106 0  16 4 1 0 
i 106 0  16 5 1 1
i 106 16 16 4 1 0
i 106 16 16 5 1 1
e

</CsScore>
</CsoundSynthesizer>
