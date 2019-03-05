      Program hellowworld_multipleSUB

      implicit real(a-h,o-z), integer(i-n)

!$omp parallel 

!$omp do ordered 
      do i=1,6
      !$omp ordered 
        call sum(i)
        !call hello(i)
      enddo

!$omp do ordered 
      do i=7,12
      !$omp ordered 
        call sum(i)
        !call hello(i)
      enddo


!$omp do ordered 
      do i=13,18
        !$omp ordered 
        call sum(i)
        !call hello(i)
      enddo
      !$omp end ordered 
!$omp enddo 

!$omp end parallel

      stop

      end


      subroutine hello(i)
      include 'omp_lib.h'

      id = omp_get_thread_num()
      
      write(*,'(2(a,i3))') '  Process ', id, ' says ', i

      end subroutine

      subroutine sum(i)
      include 'omp_lib.h'
      
      id = omp_get_thread_num()

      n = 0
      do j=1,i
        n = n + j
      enddo
      
      write(*,'(3(a,i3))') '  Process ', id, ' says sum ', i, ' is ',n

      end subroutine
