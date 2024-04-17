OUTPUT_ARCH(riscv)
ENTRY(_start)

PHDRS
{
  text PT_LOAD FLAGS (5); /* 0x5 -> 可读可执行 (RX) */
  data PT_LOAD FLAGS (6); /* 0x6 -> 可读可写 (RW) */
}

SECTIONS {

    . = 0x401000;
    .text : { 
        *(.text.entry)
        *(.text .text.*)
    } : text

    . = ALIGN(4K);

    .bss : { 
        *(.bss .bss.*)
        *(.sbss .sbss.*)
    } : data

    .data : { 
        *(.data .rodata) 
        *(.sdata .sdata.*)
    } : data
    
    /DISCARD/ : { *(.eh_*) }
}