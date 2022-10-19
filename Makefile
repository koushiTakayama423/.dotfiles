OBJS = .bin/setup.sh .bin/brew.sh
PROGRAM = myprogram

all: $(PROGRAM)

$(PROGRAM): $(OBJS)
	cd .bin && bash setup.sh && bash brew.sh
