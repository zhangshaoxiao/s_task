// Stub file for universal binary

#if defined(__APPLE__)
    #include "make_combined_sysv_macho_gas.S"
#elif defined(_WIN32)
    #if defined(__x86_64__)
        #include "make_x86_64_ms_pe_gas.asm"
    #elif defined(__i386__)
        #include "make_i386_ms_pe_gas.asm"
    #endif
#elif defined(__x86_64__)
    #include "make_x86_64_sysv_elf_gas.S"
#elif defined(__i386__)
    #include "make_i386_sysv_elf_gas.S"
#elif defined(__ppc64__)
    #include "make_ppc64_sysv_elf_gas.S"
#elif defined(__ppc__)
    #include "make_ppc32_sysv_elf_gas.S"
#elif defined(__aarch64__)
    #include "make_arm64_aapcs_elf_gas.S"
#elif defined(__arm__)
    #include "make_arm_aapcs_elf_gas.S"
#elif defined(__mips64)
    #include "make_mips64_n64_elf_gas.S"
#elif defined(__mips__)
    #include "make_mips32_o32_elf_gas.S"
#else
    #error "No arch's"
#endif
