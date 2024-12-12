      implicit none
      integer i,j,k,l,m,n,cont,chn,ctatom
      parameter(n=126656)
      parameter(m=675)
      real x(n),y(n),z(n),beta,ocup
      integer anum,rnum,ncad,noba,nbpf,ndmf,rnum2(n)
      character(5)aname(n),rname
      character(4)c,seg
      character(1)ch
      character(2)ele
      character*80 linespecial

!//////////////////////////////////
 18   format(a4,i7,a5,a5,a1,i4,4x,3f8.3,2f6.2,6x,a4,a2)

      open(32,file='merged_file.pdb',status='old')
      open(33,file='original_cosan_structure.pdb',status='old')
      open(34,file='corrected.pdb')

      read(32,*)
      read(33,*)

      do i=1,m
         read(33,fmt=18)c,anum,aname(i),rname,ch,rnum,x(i),y(i),z(i)
     &        ,beta,ocup,seg,ele

         write(34,fmt=18)c,anum,aname(i),rname,ch,rnum,x(i),y(i),z(i)
     &        ,beta,ocup,seg,ele
         
      enddo

      
      do i=1,m
         read(32,'(A80)') linespecial

      enddo

      
      do i=m+1,n
         read(32,'(A80)') linespecial
         write(34,'(A80)') linespecial

      enddo

      end
