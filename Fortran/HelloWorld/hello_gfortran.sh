#!/bin/bash
n=`nproc`
export OMP_NUM_THREADS=$n

./HelloWorld_OpenMP
