printUpCount(char*):

        push    rbp

        mov     rbp, rsp

        sub     rsp, 32

        mov     QWORD PTR [rbp-24], rdi

        mov     DWORD PTR [rbp-8], 0

.L3:

        mov     rax, QWORD PTR [rbp-24]

        movzx   eax, BYTE PTR [rax]

        mov     BYTE PTR [rbp-1], al

        cmp     BYTE PTR [rbp-1], 96

        jle     .L2

        cmp     BYTE PTR [rbp-1], 122

        jg      .L2

        and     BYTE PTR [rbp-1], -33

        add     DWORD PTR [rbp-8], 1

.L2:

        movsx   eax, BYTE PTR [rbp-1]

        mov     esi, eax

        mov     edi, OFFSET FLAT:_ZSt4cout

        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char)

        add     QWORD PTR [rbp-24], 1

        mov     rax, QWORD PTR [rbp-24]

        movzx   eax, BYTE PTR [rax]

        test    al, al

        jne     .L3

        mov     esi, OFFSET FLAT:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_

        mov     edi, OFFSET FLAT:_ZSt4cout

        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))

        mov     eax, DWORD PTR [rbp-8]

        leave

        ret

.LC0:

        .string "Number for name converted is "

.LC1:

        .string "Number for favorite converted is "

.LC2:

        .string "pause"

main:

        push    rbp

        mov     rbp, rsp

        sub     rsp, 32

        movabs  rax, 2406449840589404493

        mov     QWORD PTR [rbp-13], rax

        mov     BYTE PTR [rbp-5], 0

        movabs  rax, 7599578499249760592

        movabs  rdx, 7311146958987487348

        mov     QWORD PTR [rbp-32], rax

        mov     QWORD PTR [rbp-24], rdx

        mov     WORD PTR [rbp-16], 11891

        mov     BYTE PTR [rbp-14], 0

        lea     rax, [rbp-13]

        mov     rdi, rax

        call    printUpCount(char*)

        mov     DWORD PTR [rbp-4], eax

        mov     esi, OFFSET FLAT:.LC0

        mov     edi, OFFSET FLAT:_ZSt4cout

        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)

        mov     rdx, rax

        mov     eax, DWORD PTR [rbp-4]

        mov     esi, eax

        mov     rdi, rdx

        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(int)

        mov     esi, OFFSET FLAT:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_

        mov     rdi, rax

        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))

        lea     rax, [rbp-32]

        mov     rdi, rax

        call    printUpCount(char*)

        mov     DWORD PTR [rbp-4], eax

        mov     esi, OFFSET FLAT:.LC1

        mov     edi, OFFSET FLAT:_ZSt4cout

        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)

        mov     rdx, rax

        mov     eax, DWORD PTR [rbp-4]

        mov     esi, eax

        mov     rdi, rdx

        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(int)

        mov     esi, OFFSET FLAT:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_

        mov     rdi, rax

        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))

        mov     edi, OFFSET FLAT:.LC2

        call    system

        mov     eax, 0

        leave

        ret

__static_initialization_and_destruction_0(int, int):

        push    rbp

        mov     rbp, rsp

        sub     rsp, 16

        mov     DWORD PTR [rbp-4], edi

        mov     DWORD PTR [rbp-8], esi

        cmp     DWORD PTR [rbp-4], 1

        jne     .L9

        cmp     DWORD PTR [rbp-8], 65535

        jne     .L9

        mov     edi, OFFSET FLAT:_ZStL8__ioinit

        call    std::ios_base::Init::Init() [complete object constructor]

        mov     edx, OFFSET FLAT:__dso_handle

        mov     esi, OFFSET FLAT:_ZStL8__ioinit

        mov     edi, OFFSET FLAT:_ZNSt8ios_base4InitD1Ev

        call    __cxa_atexit

.L9:

        nop

        leave

        ret

_GLOBAL__sub_I_printUpCount(char*):

        push    rbp

        mov     rbp, rsp

        mov     esi, 65535

        mov     edi, 1

        call    __static_initialization_and_destruction_0(int, int)

        pop     rbp

        ret