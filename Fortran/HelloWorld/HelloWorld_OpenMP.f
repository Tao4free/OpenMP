! test MPI using simple program hello world
! reference:
!         https://people.sc.fsu.edu/~jburkardt/f77_src/hello_openmp/ 
!  Licensing:
!
!    This code is distributed under the GNU LGPL license. 

      Program hellowworld

      implicit real(a-h,o-z), integer(i-n)

      ! Define MPI symbols
      include 'omp_lib.h'
      integer error, p, id


      ! Get the number of processes
      write ( *, '(a,i8)' ) 
     &  '  The number of processors = ', omp_get_num_procs ( )
      write ( *, '(a,i8)' ) 
     &  '  The number of threads    = ', omp_get_max_threads ( )

!
!  OUTSIDE THE PARALLEL REGION, have each thread say hello (there's only 1).
!
      write ( *, '(a)' ) ' '
      write ( *, '(a)' ) '  OUTSIDE the parallel region.'
      write ( *, '(a)' ) ' '

      id = omp_get_thread_num ( )
      write ( *, '(a,i8,a,i8)' ) '  HELLO from process ', id

      write ( *, '(a)' ) ' '
      write ( *, '(a)' ) '  Going INSIDE the parallel region:'
      write ( *, '(a)' ) 

!
!  INSIDE THE PARALLEL REGION, have each thread say hello 
!
!$omp parallel
!$omp& private(id)

      ! Print some messages
      id = omp_get_thread_num ( )
      write(*,'(a,i3,a)') '  Process ', id, ' says "Hello world!"'

!$omp end parallel

      stop

      end


!      subroutine hello(id)
!      inlude 'omp_lib.h'
!
!      write(*,*) 'Let us say "Hello world!"'
!
!      end subroutine
