f 1  0 4096 10   1    
f 2  0 4096 10   1  .5 .333 .25 .2 .166 .142 .125 .111 .1 .09 .083 .076 .071 .066 .062
f 3  0 4097 20   2  1
f 9  0 513  5    .001 128 .8  128 .6  256  1
f 16	0 513	7	0	256	1	256		0	 
f 17	0 513	7	0	10  1  246	1	10   0  246    0	
f 18	0 513	7	0	10  1  502 0


f 5  0 0    1   "hellorcb.aif" 	0 	4 	0 

;ins	strt	dur 	amp		frq1	sample atk	rel	rvbsnd	cmbsnd	
;===================================================================
i 137     0      .4		70  	8.09     5		.01	.01	.3		0	
;ins	strt	dur 	rvbtim	hfroll	
;===================================================================
i 199	0		3		2.6		.1		
;ins	strt	dur 	amp		frq1	sample atk	rel	rvbsnd	cmbsnd	
;===================================================================
i 137     3      .4		70  	8.085     5		.01	.01	.6		0	
;ins	strt	dur 	rvbtim	hfroll	
;===================================================================
i 199	3		9		8.6		.9		
;ins	strt	dur 	amp		frq1	sample atk	rel	rvbsnd	cmbsnd	
;===================================================================
i 137     12      .4		70  	8.095     5		.01	.01	.1		0	
;ins	strt	dur 	rvbtim	hfroll	
;===================================================================
i 199	12		2		1.6		.5		
;ins	strt	dur 	amp		frq1	sample atk	rel	rvbsnd	cmbsnd	
;===================================================================
i 137     15      .4		70  	8.08     5		.01	.01	 0		.2	
;ins	strt	dur 	time	loop	
;===================================================================
i 198	15		10		10		.25		
;ins	strt	dur 	amp		frq1	sample atk	rel	rvbsnd	cmbsnd	
;===================================================================
i 137     25      .4		70  	8.10     5		.01	.01	 0		.4	
;ins	strt	dur 	time	loop	
;===================================================================
i198	25		10		10		.56		
;ins	strt	dur 	amp		frq1	sample atk	rel	rvbsnd	cmbsnd	
;===================================================================
i 137     35      .4		70  	8.10     5		.01	.01	 0		.3	
;ins	strt	dur 	time	loop	
;===================================================================
i198	35		5		5		.1		
;ins	strt	dur 	amp		frq1	sample atk	rel	rvbsnd	cmbsnd	
;===================================================================
i 137     40      2.1		80  	8.105     5		.01	.01	 0		.4	
;ins	strt	dur 	time	loop	
;===================================================================
i 198	40		2.1		1		.01	
;ins	strt	dur 	amp		frq1	sample atk	rel	rvbsnd	cmbsnd	
;===================================================================
i 137     42.2    2.36		80  	8.085     5		.01	.01	 0		.7	
;ins	strt	dur 	time	loop	
;===================================================================
i 198	42.2	3		3		.02	
;ins	strt	dur 	amp		frq1	sample atk	rel	rvbsnd	cmbsnd	
;===================================================================
i 137     46     2.1		70  	8.09     5		.01	.01	.3		.6	
i 137     47     2.1		70  	8.09     5		.01	.01	.5		.6	
;ins	strt	dur 	rvbtim	hfroll	
;===================================================================
i 199	46		6		4.6		.8		
;ins	strt	dur 	time	loop	
;===================================================================
i 198	46		6		10		.8
i 198	46		6		10		.3	
i 198	46		6		10		.5	
s
;		st	dur	rvbtim	hfroll	
;===================================================================
i 199 	0	22	1.3  	.1
;	st	dr 	amp	frq		fc	fm	atk	rel	ndx1	ndx2	ndxtim  lfodep	lfofrq	pan	rvbsnd
;=================================================================================
i 138	0	2	80	8.09	1	2	.01	.2	20		4		.5		7		5		1	.1  
i 138	2	2	80	.		2	1	. 	. 	10		1		.8		.		6		0	.2  
i 138	5	.2	80	.		1	2	. 	.1	30		.		.01		9		4		1	.1  
i 138	+	.	79	.		2	1	.	.	<		<		<		<		<		<	< 
i 138	+	.	78	.		1	3	.	.	.		.		.		.		.		.	.  
i 138	+	.	77	.		3	1	.	.	.		.		.		.		.		.	.  
i 138	+	.	76	.		1	4	.	.	.		.		.		.		.		.	.  
i 138	+	.	75	.		4	1	.	.	.		.		.		.		.		.	.  
i 138	+	.	74	.		1	5	.	.	.		.		.		.		.		.	.  
i 138	+	.	73	.		5	1	.	.	.		.		.		.		.		.	.  
i 138	+	.	72	.		1	6	.	.	.		.		.		.		.		.	.  
i 138	+	1	71	.		6	1	.	.	10		3		.2		4		10		0	.04  
i 138	+	.2	71	.		6	1	.	.	<		<		<		<		<		<	< 
i 138	+	.	72	.		1	6	.	.	.		.		.		.		.		.	.  
i 138	+	.	73	.		5	1	.	.	.		.		.		.		.		.	.  
i 138	+	.	74	.		1	5	.	.	.		.		.		.		.		.	.  
i 138	+	.	75	.		4	1	.	.	.		.		.		.		.		.	.  
i 138	+	.	76	.		1	4	.	.	.		.		.		.		.		.	.  
i 138	+	.	77	.		3	1	.	.	.		.		.		.		.		.	.  
i 138	+	.	78	.		1	3	.	.	.		.		.		.		.		.	.  
i 138	+	.	79	.		2	1	.	.	.		.		.		.		.		.	. 
i 138	+	.2	80	.		1	2	. 	.1	30		1		.01		9		4		1	.1  
i 138	+	2	80	.		2	1	.  	.2	10		4		.8		7		6		1	.2  
i 138	2.5	4	80	.		1	2	. 	. 	20		4		.5		.		5		0	.1  
s
f0 1
s
;		st	dur	rvbtim	hfroll	
;===================================================================
i199 	0	18	2.1  	.8
;ins	st	dur amp frq     atk	rel	cut1	cut2	
;==================================================
i 139		0	.15	1	20000	.01	.01	10000	50
i 139		+	.	<	.		.	.	<
i 139		.	.	.	.		.	.	.		
i 139		.	.	.	.		.	.	.
i 139		.	.	.	.		.	.	.
i 139		.	.	.	.		.	.	.
i 139		.	.	.	.		.	.	.
i 139		.	.	.	.		.	.	.
i 139		.	.	.	.		.	.	.
i 139		.	.	.	.		.	.	.
i 139		.	.	.	.		.	.	.
i 139		.	.	.	.		.	.	.
i 139		.	.	.	.		.	.	.
i 139		.	.	.	.		.	.	.
i 139		.	.	.5	.		.	.	100	
i 139		.	.	<	.		.	.	<
i 139		.	.	.	.		.	.	.
i 139		.	.	.	.		.	.	.
i 139		.	.	.	.		.	.	.
i 139		.	.	.	.		.	.	.
i 139		.	.	.	.		.	.	.
i 139		.	.	.	.		.	.	.
i 139		.	.	.	.		.	.	.
i 139		.	.	.	.		.	.	.
i 139		.	.	.	.		.	.	.
i 139		.	.	.	.		.	.	.
i 139		.	.	.	.		.	.	.
i 139		.	.	.	.		.	.	.
i 139		.	.	.	.		.	.	.
i 139		.	.	.	.		.	.	.
i 139		.	.	.	.		.	.	.
i 139		.	.	.	.		.	.	.
i 139		.	.	.	.		.	.	.
i 139		.	.	.	.		.	.	.
i 139		.	3	1	.		.	.	10000
s
f0 1
s
;		st	dur	rvbtim	hfroll	
;===================================================================
i 199	0		11.1	1.1		.1
;	st	dur amp frq   atkl rell		hrm1l	hrm2l  rvbsnd
;============================================================================
i 140  0	1	80	6.09  .01   .2  	20		3		.2
i 140  +	.	70	6.08  .01   .2  	10		1		.1
i 140  .	.	65	6.07  .01   .2  	40		6		.2
i 140  .	.	60	6.06  .01   .2  	15		8		.1
i 140  .	.	65	6.07  .01   .2  	9		3		.2
i 140  .	.	70	6.08  .01   .2  	12		2		.1
i 140  .	.	75	6.09  .01   .2  	16		3		.2
i 140  .	1.5	80	5.09  .01   .2  	50		10		.4
s
f0 1
s
;		st	dur	rvbtim	hfroll	
;===================================================================
i199	0	18	2	.8
;ins	strt	dur amp	frq     fn	atk	rel	atkfun	modpth	modfrq	modfun	panfrq	rvbsnd
;============================================================================
i 141   	0      6	80	8.09	2	.01	.01  9		1		4		17		1	.3
i 141   	6      6	70	7.09	2	.01	.01  9		1		8		17		.5	.2
i 141   	12      6	70	7.09	2	.01	.01  9		1		12		17		.25	.1
s
;		st	dur	rvbtim	hfroll	
;===================================================================
i 199	0	18	2	.8
;ins	strt	dur amp	frq     fn	atk	rel	atkfun	modpth	modfrq	modfun	panfrq	rvbsnd
;============================================================================
i 142   	0      6	80	8.09	2	.01	.01  9		1		4		17		1	.3
i 142   	6      6	70	7.09	2	.01	.01  9		1		8		17		.5	.2
i 142   	12      6	70	7.09	2	.01	.01  9		1		12		17		.25	.1
s
f0 1
s
;		st	dur	rvbtim	hfroll	
;===================================================================
i 199 0  12  1   .3
;	strt	dur amp     frq1	frq2  tim1	tim2  panv1	panv2	rvbsnd
;============================================================================
i 143 0      1.2	80		8.09	8.04  .3  	.9		1	.01		.01
i 143 1     1.1	82		8.08	9.03  .4  	.7		.01	1		.02
i 143 2     	1.3	84		8.10	9.06  1  	.3		1	.4		.03
i 143 3      .9	78		8.10	10.03  .89  .01		.2	1		.04
i 143 3.5   	1	71		7.09	7.06  .02  	.78		.9	.3		.05
i 143 4.01   	.7	71		7.092	7.075  .5  	.2		.2	1		.06
i 143 4.5 	.6	76		9.08	8.01  .2  	.4		.01	.8		.07
i 143 5     .5	84		8.00	8.07  .04  	.46		.7	.5		.08
i 143 5.2	   .8	85		7.01	10.11  .1  	.7		1	.01		.09
i 143 5.9	   .3	75		9.11	5.11   .05  .25		.1	.7		.1