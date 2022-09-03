API		= src/SimpleCsdPlayback.cpp 
CSOUND  = -lcsound64 -lcsnd6
INCLUDE = -I/usr/include/csound/


MOD		= src/modsyn.cpp
CC		= g++



#modsyn: $(MOD) 
#	$(CC) $(MOD) -o ~/.bin/modsyn

crec: $(API)
	$(CC) $(INCLUDE) $(API) $(CSOUND) -o ~/.bin/crec 
