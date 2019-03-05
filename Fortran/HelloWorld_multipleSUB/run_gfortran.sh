#!/bin/bash
make

n=`nproc`
export OMP_NUM_THREADS=$n

file=`ls *.f`
exe=${file%.*}

#echo $exe

./$exe
