sr 		= 		44100
kr 		= 		4410
ksmps 	= 		10
nchnls 	= 		2

garvb	init	0

		instr   143 ; bending strings with envelope pan
idur	=		p3
iamp	=		ampdb(p4)
ifrq1	=		cpspch(p5)
ifrq2	=		cpspch(p6)
itim1	=		p7
itim2	=		p8
ipnv1	=		p9
ipnv2	=		p10
irvbsnd	=		p11
kenv    linen	iamp, .01, idur, .01
kfrq	linseg  ifrq1, itim1, ifrq2, itim2, ifrq1
kpaneg	expseg	ipnv1, itim1, ipnv2, itim2, ipnv1		
asig 	pluck 	kenv, kfrq, ifrq1, 0, 1
kpan	=		sqrt(kpaneg)
		outs 	asig*kpan, asig*(1-kpan)
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


