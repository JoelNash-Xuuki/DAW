<CsoundSynthesizer>
<CsOptions>
</CsOptions>
<CsInstruments>

sr    = 44100
ksmps = 16
nchnls = 2
0dbfs  = 1
tuning = 400.9

	instr	    6
iamp	    = 	ampdb(p4)
ifreq	    = 	p5
ifn		    = 	p6
;irvbsnd     = 	p7
;icmbsnd     =   p8
			a1	loscil	iamp, ifreq, ifn
;garvb		=		garvb+(a1*irvbsnd)
;gacmb		=		gacmb+(a1*icmbsnd)
	
	outs a1, a1
	endin

</CsInstruments>
<CsScore>
f1 0 0 1 "test.wav" 0 4 1
f2 0 0 1 "test.wav" 0 4 2
t 0 84
;a 0 
;i1 0 8 0 2 2 2
i6 0 48 0.5 260 1
i6 0 48 0.5 260 2 
f 0 4 
s
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
