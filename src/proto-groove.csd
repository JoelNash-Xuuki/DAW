<CsoundSynthesizer>
<CsOptions>
-F tmp/test-repeats.mid
</CsOptions>
<CsInstruments>

sr = 44100
ksmps = 16
nchnls = 2
0dbfs  = 1

massign 1, 1
massign 2, 2 ;Bass
;massign 3, 3
;massign 4, 4
;massign 5, 5
;massign 6, 6 
;massign 7, 7

gifn	ftgen	0,0, 257, 9, .5,1,270

#define Bass # instr 2 #

		instr 1
ivibdel= 0.1
idec 	= 2
iamp 	veloc 0,4 
kfrq 	cpsmidib 1

kenv 	expsegr 0.02, idec, 0.002, p3, 0.001
kvibenv	linseg 0, ivibdel, 1, p3-ivibdel, .3
klfo	oscil kvibenv*4, kfrq*0.3, 1
kindex  expon 0.8, 0.1, 0.8

asig1 	oscili  kenv*iamp, kfrq, 1 
asig2	oscili  kenv*iamp, kfrq*1.001, 1
asig3	oscili  kenv*iamp, kfrq*.999, 1
asig4	foscil  kenv, kfrq+klfo, 1, 2, kindex

amix	= (asig1+(asig2*0.1)+(asig3*0.2)+(asig4*0.0001))*6

anoise	rand kfrq

afilt	tone amix+(anoise*0.00001*klfo), 100

aout	distort	afilt,kvibenv*1, gifn


		outch 1, afilt+(aout*0.5)*kenv
		outch 2, afilt+(aout*0.5)*kenv
		endin

		$Bass 
idec 	= 0.4
iamp 	veloc 0, 1
ifrq 	cpsmidib 1
kenv 	expsegr 0.9, idec, 0.01, 0.05, 0.001
asig 	oscili  kenv*iamp, ifrq, 1 

afilt	tone asig, 100


	    outch 1, afilt
		outch 2, afilt
		endin

;instr 9
;idur 	= 0.005
;iamp 	veloc 0, 1
;ifrq 	cpsmidib 1
;
;iatk	=		.01
;irel	=		.01
;icf1	=		7500
;icf2	=		700
;ibw1	=		1000
;ibw2	=		10000
;ipan	=		0.5
;
;kenv	expseg	.001, iatk, iamp, idur/6, iamp*.4, idur-(iatk+irel+idur/6), iamp*.6, irel,.01
;asig	rand	ifrq
;kcf		expon	icf1, idur, icf2
;kbw		line	ibw1, idur, ibw2
;afilt	reson	asig*0.01, kcf, kbw, 2
;
;		outch 1, (afilt*kenv)*ipan
;		outch 2, (afilt*kenv)*(1-ipan)
;		endin
;
;		instr 3
;idur 	= 0.001
;iamp 	veloc 0, 0.2
;ifrq 	cpsmidib 1
;
;iatk	=		.01
;irel	=		.01
;icf1	=		15000
;icf2	=		000
;ibw1	=		10
;ibw2	=		1900
;ipan	=		0.5
;
;kenv	expseg	.001, iatk, iamp, idur/6, iamp*.4, idur-(iatk+irel+idur/6), iamp*.6, irel,.01
;asig	rand	ifrq
;kcf		expon	icf1, idur, icf2
;kbw		line	ibw1, idur, ibw2
;afilt	reson	asig*0.01, kcf, kbw, 2
;
;	    outch 1, (afilt*kenv)*ipan
;		outch 2, (afilt*kenv)*(1-ipan)
;		endin
;
;		instr 4
;idur 	= 0.001
;iamp 	veloc 0, 0.4
;ifrq 	cpsmidib 1
;
;iatk	=		.001
;irel	=		.001
;icf1	=		100
;icf2	=		300
;ibw1	=		200
;ibw2	=		1000
;ipan	=		0.5
;
;kenv	expseg	.001, iatk, iamp, idur/6, iamp*.1, idur-(iatk+irel+idur/6), iamp*.1, irel,.01
;asig	rand	ifrq
;kcf		expon	icf1, idur, icf2
;kbw		line	ibw1, idur, ibw2
;afilt	reson	asig*0.001, kcf, kbw, 2
;
;	    outch 1, (afilt*kenv)*ipan
;		outch 2, (afilt*kenv)*(1-ipan)
;		endin
;
;		instr 5
;idec 	= 1
;iamp 	veloc 0, 1
;ifrq 	cpsmidib 1
;kenv 	expsegr 0.9, idec, 0.1, 0.5, 0.001
;asig 	oscili  kenv*iamp, ifrq, 1 
;	    outch 1, asig
;		outch 2, asig
;		endin
;
;		
;
;
;
;		instr 7
;idec 	= 0.5
;iamp 	veloc 0, 1
;ifrq 	cpsmidib 1
;kenv 	expsegr 0.9, idec, 0.1, p3, 0.001
;asig 	oscili  kenv*iamp, ifrq, 1 
;	    outch 1, asig
;		outch 2, asig
;		endin

</CsInstruments>
<CsScore>

a0 0 0
f0 1000
t 0 84
f1 0 16384 10 1

</CsScore>
</CsoundSynthesizer>
