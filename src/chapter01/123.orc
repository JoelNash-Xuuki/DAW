		instr	123
idur	=		p3
iamp	=		ampdb(p4)
ifrq	=		cpspch(p5)
ifun	=		p6
iatk	=		p7
irel	=		p8
iatkfun	=		p9
imodpth	=		p10
imodfrq	=		p11
imodfun	=		p12				
kenv	envlpx	iamp, iatk, idur, irel, iatkfun, .7, .01
klfo	oscil	imodpth, imodfrq, imodfun	
asig    oscil	klfo, ifrq, ifun
       	out  	asig*kenv
		endin
