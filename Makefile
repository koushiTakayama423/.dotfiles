OBJS = .bin/setup.sh .bin/brew.sh
PROGRAM = myprogram

all: $(PROGRAM)

$(PROGRAM): $(OBJS)
	cd .bin && source setup.sh && source brew.sh