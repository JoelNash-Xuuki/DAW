		instr	127
idur	=		p3
iamp	=		ampdb(p4)
ifrq	=		cpspch(p5)
iatk	=		p6
irel	=		p7
ivibdel	=		p8
ivibdpt	=		p9
ivibfrq	=		p10
imdfrq1	=		cpspch(p11)
imdfrq2	=		cpspch(p12)
imdndx1	=		p13
imdndx2	=		p14	
kenv	linen	iamp, iatk, idur, irel
kvibenv	linseg	0, ivibdel, 1, idur-ivibdel, .3
klfo	oscil	kvibenv*ivibdpt, ivibfrq, 1
kmodfrq	line	imdfrq1, p3, imdfrq2
kmodndx	linseg	imdndx1, p3/2, imdndx2, p3/2, imdndx1	
amod	oscil	kmodndx*ifrq, kmodfrq, 1
aplk 	pluck 	iamp, ifrq+klfo, ifrq, 0, 1
asig	oscil	kenv, ifrq+klfo+amod, 1 	
amix	=		asig+aplk
       	out  	amix
		endin
