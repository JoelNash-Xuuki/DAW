		instr 	121				
idur	=		p3
iamp	=		p4
ifrq	=		cpspch(p5)
ienvfun	=		p6
iwav1	=		p7
iwav1gn	=		p8
iwav2	=		p9
iwav2gn	=		p10		
kenv    oscil   iamp, idur, ienvfun
awav2 	loscil  iwav2gn, ifrq*1.02, iwav2
awav1 	loscil  iwav1gn, ifrq, iwav1
		out 	(awav1+awav2)*kenv
		print	idur, iamp, ifrq
		endin
