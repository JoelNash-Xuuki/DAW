<CsoundSynthesizer>
<CsOptions>
-F tmp/0612222101-smile.mid
</CsOptions>
<CsInstruments>

sr = 44100
ksmps = 16
nchnls = 4
0dbfs  = 1

massign 1, 1
massign 2, 2
massign 3, 3
massign 4, 4
massign 5, 5
massign 6, 6
massign 7, 7

		instr 1
idec 	= 1
iamp 	veloc 0,1 
kfrq 	cpsmidib 1
kenv 	expsegr 0.01, idec, 0.1, 0.5, 0.001

asig1 	oscili  kenv*iamp, kfrq, 1 
asig2	oscili  kenv*iamp, kfrq*1.005, 1
asig3	oscili  kenv*iamp, kfrq*.995, 1
amix	= asig1+(asig2*0.4)+(asig3*0.4)
		outch 1, amix
		outch 2, amix
		endin


		instr 2
idur 	= 0.01
iamp 	veloc 0, 1
ifrq 	cpsmidib 1

iatk	=		.01
irel	=		.02
icf1	=		500
icf2	=		500
ibw1	=		100
ibw2	=		100
ipan	=		0.5

kenv	expseg	.001, iatk, iamp, idur/6, iamp*.4, idur-(iatk+irel+idur/6), iamp*.6, irel,.01
asig	rand	ifrq
kcf		expon	icf1, idur, icf2
kbw		line	ibw1, idur, ibw2
afilt	reson	asig*0.01, kcf, kbw, 2

		outch 1, (afilt*kenv)*ipan
		outch 2, (afilt*kenv)*(1-ipan)
		endin

		instr 3
idur 	= 0.01
iamp 	veloc 0, 0.5
ifrq 	cpsmidib 1

iatk	=		.01
irel	=		.01
icf1	=		15000
icf2	=		15000
ibw1	=		800
ibw2	=		800
ipan	=		0.5

kenv	expseg	.001, iatk, iamp, idur/6, iamp*.4, idur-(iatk+irel+idur/6), iamp*.6, irel,.01
asig	rand	ifrq
kcf		expon	icf1, idur, icf2
kbw		line	ibw1, idur, ibw2
afilt	reson	asig*0.01, kcf, kbw, 2

	    outch 1, (afilt*kenv)*ipan
		outch 2, (afilt*kenv)*(1-ipan)
		endin

		instr 4
idur 	= 0.01
iamp 	veloc 0, 0.4
ifrq 	cpsmidib 1

iatk	=		.01
irel	=		.01
icf1	=		100
icf2	=		300
ibw1	=		200
ibw2	=		1000
ipan	=		0.5

kenv	expseg	.001, iatk, iamp, idur/6, iamp*.1, idur-(iatk+irel+idur/6), iamp*.1, irel,.01
asig	rand	ifrq
kcf		expon	icf1, idur, icf2
kbw		line	ibw1, idur, ibw2
afilt	reson	asig*0.001, kcf, kbw, 2

	    outch 1, (afilt*kenv)*ipan
		outch 2, (afilt*kenv)*(1-ipan)
		endin

		instr 5
idec 	= 1
iamp 	veloc 0, 1
ifrq 	cpsmidib 1
kenv 	expsegr 0.9, idec, 0.1, 0.5, 0.001
asig 	oscili  kenv*iamp, ifrq, 1 
	    outch 1, asig
		outch 2, asig
		endin

		instr 6
idec 	= 1
iamp 	veloc 0, 0.25
ifrq 	cpsmidib 1
kenv 	expsegr 0.9, idec, 0.1, 0.5, 0.001
asig 	oscili  kenv*iamp, ifrq, 1 
	    outch 1, asig
		outch 2, asig
		endin



		instr 7
idec 	= 0.25
iamp 	veloc 0, 1
ifrq 	cpsmidib 1
kenv 	expsegr 0.9, idec, 0.1, p3, 0.001
asig 	oscili  kenv*iamp, ifrq, 1 
	    outch 1, asig
		outch 2, asig
		endin

</CsInstruments>
<CsScore>

a0 0 0
f0 70
t 0 84
f1 0 16384 10 1

</CsScore>
</CsoundSynthesizer>
