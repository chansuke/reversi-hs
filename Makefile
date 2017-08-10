TARGETS=reversi-serv
TARGETC=reversi
SRCS=Play.hs Command.hs

all: $(TARGETS) $(TARGETC)

$(TARGETS): Server.hs $(SRCS)
	ghc -O --make -o $(TARGETS) Server.hs 

$(TARGETC): Client.hs $(SRCS)
	ghc -O --make -o $(TARGETC) Client.hs 


clean: 
	rm -fr *.o
	rm -fr *.hi
	rm -fr $(TARGETS)
	rm -fr $(TARGETS).exe
	rm -fr $(TARGETC)
	rm -fr $(TARGETC).exe
