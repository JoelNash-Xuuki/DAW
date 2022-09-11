<CsoundSynthesizer>
<CsOptions>
</CsOptions>
<CsInstruments>

sr= %s
ksmps = 16
nchnls = 2
0dbfs  = 1
;tuning = 400.9

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
f 4 0 0 1 "%s" 0 4 1
f 5 0 0 1 "%s" 0 4 2

t 0 80

;ins	strt	dur 	rvbtim	hfroll	
;===================================================================
i199	0		100		2.6		.1		

;ins	strt	dur 	time	loop	
;===================================================================
i198	0		100		10		.25		
;
i 1 0 17 0.1 0.1
i 106 0 16 4 1.2 0 
i 106 0 16 5 1.2 1
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
