// -----------
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests pointer masking for the J Extension
// 

#include "model_test.h"
#include "arch_test.h"

#define CSR_UMTE 0x8c0
#define CSR_UPMMASK 0x8c1
#define CSR_UPMBASE 0x8c2
#define CSR_MMTE 0x7c0
#define CSR_MPMMASK 0x7c1
#define CSR_MPMBASE 0x7c2
#define CSR_SMTE 0x9c0
#define CSR_SPMMASK 0x9c1
#define CSR_SPMBASE 0x9c2

#define PM_UENABLED 0x8
#define PM_UCURRENT 0x10
#define PM_UINSTRUCTION 0x20
#define PM_SENABLED ((PM_UENABLED) << 3)
#define PM_SCURRENT ((PM_UCURRENT) << 3)
#define PM_SINSTRUCTION ((PM_UINSTRUCTION) << 3)
#define PM_MENABLED ((PM_UENABLED) << 3)
#define PM_MCURRENT ((PM_UCURRENT) << 3)

RVTEST_ISA("RV64I")

# Test code region
.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
    // TODO: Include Zjpm in ISA string.
    RVTEST_CASE(1,"//check ISA:=regex(.*64.*); check ISA:=regex(.*I.*); def TEST_CASE_1=True",ecall)

    RVTEST_SIGBASE(x8, signature_x8_0)

    # ---------------------------------------------------------------------------------------------

    RVMODEL_IO_WRITE_STR(x30, "# Read/write MMTE\n");

    TEST_CASE(x16, x20, 0, x8, 0,
      csrr x20, CSR_MPMMASK
    )

    TEST_CASE(x16, x20, 0xffffff0000000000L, x8, 8,
      li x20, 0xffffffffffffffffL;
      csrw CSR_MPMMASK, x20;
      csrr x20, CSR_MPMMASK;
    )

    RVMODEL_IO_WRITE_STR(x30, "# Simple masking operations\n");

    // Write 32KB of unique data.
    li x20, 0xff000000
    li x21, 4095
.loop:
    beq x0, x21, .loop_end
    slli x22, x21, 3
    add x22, x22, x20
    ori x23, x21, 0x100L
    sd x23, 0(x22)
    addi x21, x21, -1
    j .loop
.loop_end:

    TEST_CASE(x16, x20, 0x102, x8, 16,
      li x20, 0xff000000;
      csrw CSR_MPMBASE, x20;
      li x20, 0xfffffffffffff000L;
      csrw CSR_MPMMASK, x20;
      li x20, PM_MENABLED;
      csrw CSR_MMTE, x20;

      li x20, 0xa000000000000010L;
      ld x20, 0(x20);

      csrw CSR_MMTE, x0;
    )

    TEST_CASE(x16, x20, 0x4, x8, 24,
      li x20, 0xff000000;
      csrw CSR_UPMBASE, x20;
      li x20, 0xfffffffffffff000L;
      csrw CSR_UPMMASK, x20;
      li x20, PM_UENABLED;
      csrs CSR_MMTE, x20;
      li x20, PM_UCURRENT;
      csrs CSR_MMTE, x20;

      // Enter user mode
      li t0, SSTATUS_SPP;
      csrc sstatus, t0;
      la t0, umode_start;
      csrw sepc, t0;
      sret;

umode_start:
      li x20, 0xa0a0a00000000040L;
      ld x20, 0(x20);

      csrw CSR_UMTE, x0;
      // TODO: Return from user mode.
    )

    RVMODEL_IO_WRITE_STR(x30, "# Test End\n")
#endif

 # ---------------------------------------------------------------------------------------------
    # HALT

RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
# Input data section.
    .data
    .align 4
rvtest_data:
    .word 0
    .word 0

RVTEST_DATA_END

# Output data section.
RVMODEL_DATA_BEGIN
signature_x8_0:
    .fill 4*(XLEN/32),4,0xffffffff

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
