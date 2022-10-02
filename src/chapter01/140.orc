sr 		= 		44100
kr 		= 		4410
ksmps 	= 		10
nchnls 	= 		2

garvb	init	0

		instr   140 		; dual mono - buzz + plk
idur	=		p3
iamp	=		ampdb(p4)
ifrq	=		cpspch(p5)
iatkl	=		p6
irell	=		p7
ihrm1r	=		p8
ihrm2r	=		p9
irvbsnd	=		p10
kenvl	linen	1, .001, idur, .1
kenvr	linen   iamp, iatkl, idur, irell
khrmr   line  	ihrm1r, idur, ihrm2r	
asigl	pluck   iamp*kenvl, ifrq, ifrq, 2, 1
asigr	buzz   	kenvr, ifrq, khrmr+1, 1
        outs    asigl, asigr
garvb	=		garvb+((asigl+asigr)*irvbsnd)
		endin

		instr 	199
idur	=		p3					
irvbtim	=		p4
ihiatn	=		p5
arvb	nreverb	garvb, irvbtim, ihiatn
		outs		arvb, arvb
garvb	=		0
		endin

