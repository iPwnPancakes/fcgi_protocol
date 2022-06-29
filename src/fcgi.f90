module fcgi
  use, intrinsic :: iso_c_binding, only : c_char, c_int
  implicit none
  private

  public :: fcgi_accept
  public :: fcgi_getchar
  public :: fcgi_puts

  interface
    ! int FCGI_Accept(void)
    function fcgi_accept() bind(c, name = 'FCGI_Accept')
      import :: c_int
      integer(kind = c_int) :: fcgi_accept
    end function fcgi_accept

    ! int FCGI_getchar(void)
    function fcgi_getchar() bind(c, name = 'FCGI_getchar')
      import :: c_char
      character(kind = c_char) :: fcgi_getchar
    end function fcgi_getchar

    ! int FCGI_puts(const char *str)
    function fcgi_puts(str) bind(c, name = 'FCGI_puts')
      import :: c_char, c_int
      character(kind = c_char), intent(in) :: str(*)
      integer(kind = c_int) :: fcgi_puts
    end function fcgi_puts
  end interface
end module fcgi