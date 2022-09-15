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

			instr 106	
		iamp= p4
		ispd= p6
		ipan= p7
		ipch=  261.6256
a1		loscil iamp, ipch*ispd, p5, ipch, 0
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
f 4 0 0 1 "%s" 0 4 0
f 5 0 0 1 "%s" 0 4 1 ;left
f 6 0 0 1 "%s" 0 4 2

t 0 80

;ins	strt	dur 	rvbtim	hfroll	
;===================================================================
i199	0		34		2.6		.1		

;ins	strt	dur 	time	loop	
;===================================================================
i198	0		34		10		.25		
;
i 106 0 34 0.5 4 1 0.5 
;i 106 0 16 0.85 5 1 0
;i 106 0 16 0.85 6 1 1
;i 106 16 16 0.85 5 1 0
;i 106 16 16 0.85 6 1 1
e
</CsScore>
</CsoundSynthesizer>






























;        instr 1
;
;iamp    = 100 ;ampdb(1)
;
;kLchn = p5
;;kRchn  = p6
;
;phaseSet = p4
;
;ilookup tableng p6
;kindex  = (ilookup/sr) * p7
;aindex  phasor 1/kindex
;;
;;kindex  = kindex + phaseSet
;;kindex  = kindex * ilookup
;
;kenv    linseg 0, 0.05, iamp, p3, iamp, .2, 0
;asigL   tablekt aindex, kLchn, 0, 0, 1
;    outs asigL*kenv
;    endin     
