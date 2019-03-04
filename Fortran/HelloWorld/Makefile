FF = gfortran
GFLAG = -fopenmp -I "/usr/lib/gcc/x86_64-pc-cygwin/7.3.0/finclude" -lgmp

HelloWorld_OpenMP: HelloWorld_OpenMP.f
	$(FF) $(GFLAG) $<
	-mv a.exe $@
