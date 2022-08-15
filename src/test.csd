<CsoundSynthesizer>
<CsOptions>
-F test.mid
</CsOptions>
sr = 44100
kr = 4410
ksmps = 10
nchnls = 1
<CsInstruments>

	instr -1610464656
isine = 1
itriangle = 2
isawtooth = 3
isquare = 4
ipulse = 5
ifrq cpsmidib 1
kenv linseg 0,.05,3000.000000,p3-0.1,3000.000000,.05,0
out (a1)*kenv
	endin

</CsInstruments>
<CsScore>

f1 0 8192 10 1 ; sine
f2 0 8192 10 1 0 .111 0 .04 0 .02 0 ; triangle
f3 0 8192 10 1 .5 .333 .25 .2 .166 .142 .125 ; sawtooth
f4 0 8192 10 1 0 .333 0 .2 0 .142 0 .111; square
f5 0 8192 10 1 1 1 1 1 1 1 1 1 1 1 1 1; pulse

f0 40
</CsScore>
</CsoundSynthesizer>
