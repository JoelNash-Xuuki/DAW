sr 		= 		44100
kr 		= 		4410
ksmps 	= 		10
nchnls 	= 		2

garvb	init	0


		instr	139; filtered noise with discrete random pan & reverb send
idur	=		p3
iamp	=		p4
ifrq	=		p5
iatk	=		p6
irel	=		p7
icut1	=		p8
icut2	=		p9
irvbsnd	linrand	.25
ipan	betarand	1, 1, 1
kenv	linen	iamp, iatk, idur, irel
kcut	expon	icut1, idur, icut2
anoise	rand	ifrq	
afilt4	tone	anoise, kcut
afilt3	tone	afilt4, kcut
afilt2	tone	afilt3, kcut
afilt1	tone	afilt2, kcut
asig	=		afilt1*kenv
		outs	asig*ipan, asig*(1-ipan)
		print	ipan, irvbsnd
garvb	=		garvb+(asig*irvbsnd)
		endin
		
		instr 	199
idur	=		p3					
irvbtim	=		p4
ihiatn	=		p5
arvb	nreverb	garvb, irvbtim, ihiatn
		outs		arvb, arvb
garvb	=		0
		endin

