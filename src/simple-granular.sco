; Function 1 uses the GEN10 subroutine to compute a sine wave
; Function 3 uses the GEN20 subroutine to compute a Hanning window for use as a grain envelope

f 1  0 4096 10   1    
f 3  0 4097 20   2  10
f 4  0 0    1   "/home/joel/audio/smile.wav" 150 1 0
f 5  0 0    1   "/home/joel/audio/smile.wav" 150 4 0
;f 6  0 0    1   "/home/joel/audio/smile.wav" 250 4 0
;f 7  0 0    1   "/home/joel/audio/smile.wav" 300 4 0

f 46 0 513 20 7 1.75


{ 32
t 0 84
i 105 0 4 22000 2. 0 2010 0 3 4 3 3 
i 105 4 4 22000 2. 0.25 1000 0 3 4 3 3 
;i 105 4 4 10000 2. 0 1000 0 3 5 3 3 
;i 105 8 4 10000 2. 0 1000 0 3 6 3 3 
;i 105 12 4 10000 2. 0 1000 0 3 7 3 3 
s
}

;
;i 105 0 5 10000 1 1 0 0 2 4 3 2
;i 105 0 10 10000 1 0 0 0 3 4 46 3





