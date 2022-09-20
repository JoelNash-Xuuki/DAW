
<CsoundSynthesizer>
<CsOptions>
-F tmp/smile.mid
</CsOptions>
<CsInstruments>

sr= 44100
ksmps= 16
nchnls= 2
0dbfs= 1

massign 1, 1
massign 2, 2 ;Bass
massign 3, 3
massign 4, 4
massign 5, 5
massign 6, 6 
;massign 7, 7

gifn	ftgen	0,0, 257, 9, .5,1,270

#define Harmony # 1 # 
#define Bass # 2 #
#define Snare # 3 #
#define Brush # 4 #
#define HiHat # 5 #
#define Kick # 6 #

		instr $Harmony
ivibdel= 0.2
idec 	= 3
iamp 	veloc 0, 0.6
kfrq 	cpsmidib 1

kenv 	expsegr 0.02, idec, 0.003, p3, 0.001
kvibenv	linseg 0, ivibdel, 2, p3-ivibdel, .1
klfo	oscil kvibenv*4, kfrq*0.15, 1
kindex  expon 0.8, 0.1, 0.8

asig1 	oscili  kenv*iamp, kfrq, 1 
asig2	oscili  kenv*iamp, kfrq*1.001, 1
asig3	oscili  kenv*iamp, kfrq*.999, 1
asig4	foscil  kenv, kfrq+klfo, 1, 2, kindex

amix	= (asig1+(asig2*0.1)+(asig3*0.2)+(asig4*0.0001))*6

anoise	rand kfrq

afilt	tone amix+(anoise*0.00001*klfo), 100

aout	distort	afilt*kenv,kvibenv*1, gifn
		outch 1, afilt+(aout*0.5)
		outch 2, afilt+(aout*0.5)

		endin

		instr $Bass 
idec 	= 0.5
iamp 	veloc 0, 1 
ifrq 	cpsmidib 1
kenv 	expsegr 0.9, idec, 0.01, 0.5, 0.001
asig 	oscili  kenv*iamp, ifrq, 1 

afilt	tone asig, 150

	    outch 1, afilt
		outch 2, afilt
		endin

		instr $Snare
idur 	= 0.001
iamp 	veloc 0, 0.2
ifrq 	cpsmidib 1

iatk	=		.01
irel	=		.01
icf1	=		15000
icf2	=		100
ibw1	=		10
ibw2	=		1900
ipan	=		0.5

kenv	expseg	.001, iatk, iamp, idur/6, iamp*.4, idur-(iatk+irel+idur/6), iamp*.6, irel,.01
asig	rand	ifrq
kcf		expon	icf1, idur, icf2
kbw		line	ibw1, idur, ibw2
afilt	reson	asig*0.01, kcf, kbw, 2

	    outch 1, (afilt*kenv)*ipan
		outch 2, (afilt*kenv)*(1-ipan)
		endin

		instr $Brush
idur 	= 4
iamp 	veloc 0, 0.0003
ifrq 	cpsmidib 1

iatk	=		.2
irel	=		.1
icf1	=		22000
