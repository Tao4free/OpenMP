TARGET = $(patsubst %.f, %, $(wildcard *.f))
FF = gfortran
GFLAG = -fopenmp 

SRC = $(wildcard *.f)

#all:
#	@echo $(TARGET)

$(TARGET): $(SRC)
	$(FF) $(GFLAG) $< -o $@

clean:
	-rm *.exe
