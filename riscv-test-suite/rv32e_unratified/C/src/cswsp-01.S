// -----------
// This file was generated by riscv_ctg (https://gitlab.com/incoresemi/riscv-compliance/riscv_ctg)
// version   : 0.5.1
// timestamp : Wed Aug  4 06:39:00 2021 GMT
// usage     : riscv_ctg \
//                  --cgf /home/bilalsakhawat/dev2/riscv-ctg/sample_cgfs/dataset.cgf \
//                  --cgf /home/bilalsakhawat/dev2/riscv-ctg/sample_cgfs/rv32ec.cgf \
//                  --base-isa rv32e \
//                  --randomize
// -----------
//
// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the c.swsp instruction of the RISC-V C extension for the cswsp covergroup.
// 
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV32EC")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*E.*C.*) ;def RVTEST_E = True;def TEST_CASE_1=True;",cswsp)

RVTEST_SIGBASE( x4,signature_x4_1)

inst_0:
// rs2==x12, imm_val == 0, rs2_val == 128
// opcode:c.swsp; op1:x2; op2:x12; op2val:0x80; immval:0x0
TEST_STORE(x4,x5,0,x2,x12,0x80,0x0,0,c.swsp,0)

inst_1:
// rs2==x9, rs2_val == 2147483647, imm_val > 0, rs2_val == (2**(xlen-1)-1)
// opcode:c.swsp; op1:x2; op2:x9; op2val:0x7fffffff; immval:0x14
TEST_STORE(x4,x5,0,x2,x9,0x7fffffff,0x14,4,c.swsp,0)

inst_2:
// rs2==x10, rs2_val == -1073741825, imm_val == 4
// opcode:c.swsp; op1:x2; op2:x10; op2val:-0x40000001; immval:0x4
TEST_STORE(x4,x5,0,x2,x10,-0x40000001,0x4,8,c.swsp,0)

inst_3:
// rs2==x2, rs2_val == -536870913, 
// opcode:c.swsp; op1:x2; op2:x2; op2val:-0x20000001; immval:0x2c
TEST_STORE(x4,x5,0,x2,x2,-0x20000001,0x2c,12,c.swsp,0)

inst_4:
// rs2==x8, rs2_val == -268435457, imm_val == 8
// opcode:c.swsp; op1:x2; op2:x8; op2val:-0x10000001; immval:0x8
TEST_STORE(x4,x5,0,x2,x8,-0x10000001,0x8,16,c.swsp,0)

inst_5:
// rs2==x1, rs2_val == -134217729, 
// opcode:c.swsp; op1:x2; op2:x1; op2val:-0x8000001; immval:0x48
TEST_STORE(x4,x5,0,x2,x1,-0x8000001,0x48,20,c.swsp,0)

inst_6:
// rs2==x13, rs2_val == -67108865, imm_val == 168
// opcode:c.swsp; op1:x2; op2:x13; op2val:-0x4000001; immval:0xa8
TEST_STORE(x4,x5,0,x2,x13,-0x4000001,0xa8,24,c.swsp,0)

inst_7:
// rs2==x15, rs2_val == -33554433, 
// opcode:c.swsp; op1:x2; op2:x15; op2val:-0x2000001; immval:0x1c
TEST_STORE(x4,x5,0,x2,x15,-0x2000001,0x1c,28,c.swsp,0)

inst_8:
// rs2==x7, rs2_val == -16777217, 
// opcode:c.swsp; op1:x2; op2:x7; op2val:-0x1000001; immval:0x1c
TEST_STORE(x4,x5,0,x2,x7,-0x1000001,0x1c,32,c.swsp,0)

inst_9:
// rs2==x3, rs2_val == -8388609, 
// opcode:c.swsp; op1:x2; op2:x3; op2val:-0x800001; immval:0x48
TEST_STORE(x4,x5,0,x2,x3,-0x800001,0x48,36,c.swsp,0)

inst_10:
// rs2==x14, rs2_val == -4194305, 
// opcode:c.swsp; op1:x2; op2:x14; op2val:-0x400001; immval:0x4
TEST_STORE(x4,x5,0,x2,x14,-0x400001,0x4,40,c.swsp,0)

inst_11:
// rs2==x6, rs2_val == -2097153, imm_val == 248
// opcode:c.swsp; op1:x2; op2:x6; op2val:-0x200001; immval:0xf8
TEST_STORE(x4,x3,0,x2,x6,-0x200001,0xf8,44,c.swsp,0)
RVTEST_SIGBASE( x1,signature_x1_0)

inst_12:
// rs2==x4, rs2_val == -1048577, 
// opcode:c.swsp; op1:x2; op2:x4; op2val:-0x100001; immval:0x14
TEST_STORE(x1,x3,0,x2,x4,-0x100001,0x14,0,c.swsp,0)

inst_13:
// rs2==x5, rs2_val == -524289, 
// opcode:c.swsp; op1:x2; op2:x5; op2val:-0x80001; immval:0x44
TEST_STORE(x1,x3,0,x2,x5,-0x80001,0x44,4,c.swsp,0)

inst_14:
// rs2==x11, rs2_val == -262145, imm_val == 188
// opcode:c.swsp; op1:x2; op2:x11; op2val:-0x40001; immval:0xbc
TEST_STORE(x1,x3,0,x2,x11,-0x40001,0xbc,8,c.swsp,0)

inst_15:
// rs2_val == -131073, imm_val == 128
// opcode:c.swsp; op1:x2; op2:x10; op2val:-0x20001; immval:0x80
TEST_STORE(x1,x3,0,x2,x10,-0x20001,0x80,12,c.swsp,0)

inst_16:
// rs2_val == -65537, imm_val == 32
// opcode:c.swsp; op1:x2; op2:x10; op2val:-0x10001; immval:0x20
TEST_STORE(x1,x3,0,x2,x10,-0x10001,0x20,16,c.swsp,0)

inst_17:
// rs2_val == -32769, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:-0x8001; immval:0xc
TEST_STORE(x1,x3,0,x2,x10,-0x8001,0xc,20,c.swsp,0)

inst_18:
// rs2_val == -16385, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:-0x4001; immval:0xfc
TEST_STORE(x1,x3,0,x2,x10,-0x4001,0xfc,24,c.swsp,0)

inst_19:
// rs2_val == -8193, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:-0x2001; immval:0xbc
TEST_STORE(x1,x3,0,x2,x10,-0x2001,0xbc,28,c.swsp,0)

inst_20:
// rs2_val == -4097, imm_val == 84
// opcode:c.swsp; op1:x2; op2:x10; op2val:-0x1001; immval:0x54
TEST_STORE(x1,x3,0,x2,x10,-0x1001,0x54,32,c.swsp,0)

inst_21:
// rs2_val == -2049, imm_val == 124
// opcode:c.swsp; op1:x2; op2:x10; op2val:-0x801; immval:0x7c
TEST_STORE(x1,x3,0,x2,x10,-0x801,0x7c,36,c.swsp,0)

inst_22:
// rs2_val == -1025, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:-0x401; immval:0xa8
TEST_STORE(x1,x3,0,x2,x10,-0x401,0xa8,40,c.swsp,0)

inst_23:
// rs2_val == -513, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:-0x201; immval:0x24
TEST_STORE(x1,x3,0,x2,x10,-0x201,0x24,44,c.swsp,0)

inst_24:
// rs2_val == -257, imm_val == 236
// opcode:c.swsp; op1:x2; op2:x10; op2val:-0x101; immval:0xec
TEST_STORE(x1,x3,0,x2,x10,-0x101,0xec,48,c.swsp,0)

inst_25:
// rs2_val == -129, imm_val == 244
// opcode:c.swsp; op1:x2; op2:x10; op2val:-0x81; immval:0xf4
TEST_STORE(x1,x3,0,x2,x10,-0x81,0xf4,52,c.swsp,0)

inst_26:
// rs2_val == -65, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:-0x41; immval:0x4c
TEST_STORE(x1,x3,0,x2,x10,-0x41,0x4c,56,c.swsp,0)

inst_27:
// rs2_val == -33, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:-0x21; immval:0x7c
TEST_STORE(x1,x3,0,x2,x10,-0x21,0x7c,60,c.swsp,0)

inst_28:
// rs2_val == -17, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:-0x11; immval:0xc
TEST_STORE(x1,x3,0,x2,x10,-0x11,0xc,64,c.swsp,0)

inst_29:
// rs2_val == -9, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:-0x9; immval:0x24
TEST_STORE(x1,x3,0,x2,x10,-0x9,0x24,68,c.swsp,0)

inst_30:
// rs2_val == -5, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:-0x5; immval:0x8
TEST_STORE(x1,x3,0,x2,x10,-0x5,0x8,72,c.swsp,0)

inst_31:
// rs2_val == -3, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:-0x3; immval:0xbc
TEST_STORE(x1,x3,0,x2,x10,-0x3,0xbc,76,c.swsp,0)

inst_32:
// rs2_val == -2, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:-0x2; immval:0x38
TEST_STORE(x1,x3,0,x2,x10,-0x2,0x38,80,c.swsp,0)

inst_33:
// imm_val == 220, rs2_val == 1048576
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x100000; immval:0xdc
TEST_STORE(x1,x3,0,x2,x10,0x100000,0xdc,84,c.swsp,0)

inst_34:
// rs2_val == -2147483648, rs2_val == (-2**(xlen-1))
// opcode:c.swsp; op1:x2; op2:x10; op2val:-0x80000000; immval:0xa8
TEST_STORE(x1,x3,0,x2,x10,-0x80000000,0xa8,88,c.swsp,0)

inst_35:
// rs2_val == 1073741824, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x40000000; immval:0x4c
TEST_STORE(x1,x3,0,x2,x10,0x40000000,0x4c,92,c.swsp,0)

inst_36:
// rs2_val == 536870912, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x20000000; immval:0x4
TEST_STORE(x1,x3,0,x2,x10,0x20000000,0x4,96,c.swsp,0)

inst_37:
// rs2_val == 268435456, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x10000000; immval:0x34
TEST_STORE(x1,x3,0,x2,x10,0x10000000,0x34,100,c.swsp,0)

inst_38:
// rs2_val == 64, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x40; immval:0x0
TEST_STORE(x1,x3,0,x2,x10,0x40,0x0,104,c.swsp,0)

inst_39:
// rs2_val == 32, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x20; immval:0x44
TEST_STORE(x1,x3,0,x2,x10,0x20,0x44,108,c.swsp,0)

inst_40:
// rs2_val == 16, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x10; immval:0x30
TEST_STORE(x1,x3,0,x2,x10,0x10,0x30,112,c.swsp,0)

inst_41:
// rs2_val == 8, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x8; immval:0x54
TEST_STORE(x1,x3,0,x2,x10,0x8,0x54,116,c.swsp,0)

inst_42:
// rs2_val == 4, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x4; immval:0xbc
TEST_STORE(x1,x3,0,x2,x10,0x4,0xbc,120,c.swsp,0)

inst_43:
// rs2_val == 2, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x2; immval:0xf8
TEST_STORE(x1,x3,0,x2,x10,0x2,0xf8,124,c.swsp,0)

inst_44:
// rs2_val == 1, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x1; immval:0x18
TEST_STORE(x1,x3,0,x2,x10,0x1,0x18,128,c.swsp,0)

inst_45:
// imm_val == 64, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x10; immval:0x40
TEST_STORE(x1,x3,0,x2,x10,0x10,0x40,132,c.swsp,0)

inst_46:
// imm_val == 16, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:-0x1000001; immval:0x10
TEST_STORE(x1,x3,0,x2,x10,-0x1000001,0x10,136,c.swsp,0)

inst_47:
// rs2_val == -1431655766, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:-0x55555556; immval:0x54
TEST_STORE(x1,x3,0,x2,x10,-0x55555556,0x54,140,c.swsp,0)

inst_48:
// rs2_val == 1431655765, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x55555555; immval:0x3c
TEST_STORE(x1,x3,0,x2,x10,0x55555555,0x3c,144,c.swsp,0)

inst_49:
// rs2_val == 0, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x0; immval:0x0
TEST_STORE(x1,x3,0,x2,x10,0x0,0x0,148,c.swsp,0)

inst_50:
// rs2_val == 134217728, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x8000000; immval:0xfc
TEST_STORE(x1,x3,0,x2,x10,0x8000000,0xfc,152,c.swsp,0)

inst_51:
// rs2_val == 67108864, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x4000000; immval:0x14
TEST_STORE(x1,x3,0,x2,x10,0x4000000,0x14,156,c.swsp,0)

inst_52:
// rs2_val == 33554432, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x2000000; immval:0x10
TEST_STORE(x1,x3,0,x2,x10,0x2000000,0x10,160,c.swsp,0)

inst_53:
// rs2_val == 16777216, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x1000000; immval:0x4
TEST_STORE(x1,x3,0,x2,x10,0x1000000,0x4,164,c.swsp,0)

inst_54:
// rs2_val == 8388608, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x800000; immval:0x28
TEST_STORE(x1,x3,0,x2,x10,0x800000,0x28,168,c.swsp,0)

inst_55:
// rs2_val == 4194304, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x400000; immval:0x14
TEST_STORE(x1,x3,0,x2,x10,0x400000,0x14,172,c.swsp,0)

inst_56:
// rs2_val == 2097152, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x200000; immval:0x80
TEST_STORE(x1,x3,0,x2,x10,0x200000,0x80,176,c.swsp,0)

inst_57:
// rs2_val == 524288, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x80000; immval:0x8
TEST_STORE(x1,x3,0,x2,x10,0x80000,0x8,180,c.swsp,0)

inst_58:
// rs2_val == 262144, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x40000; immval:0xf8
TEST_STORE(x1,x3,0,x2,x10,0x40000,0xf8,184,c.swsp,0)

inst_59:
// rs2_val == 131072, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x20000; immval:0xbc
TEST_STORE(x1,x3,0,x2,x10,0x20000,0xbc,188,c.swsp,0)

inst_60:
// rs2_val == 65536, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x10000; immval:0x7c
TEST_STORE(x1,x3,0,x2,x10,0x10000,0x7c,192,c.swsp,0)

inst_61:
// rs2_val == 32768, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x8000; immval:0x24
TEST_STORE(x1,x3,0,x2,x10,0x8000,0x24,196,c.swsp,0)

inst_62:
// rs2_val == 16384, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x4000; immval:0xc
TEST_STORE(x1,x3,0,x2,x10,0x4000,0xc,200,c.swsp,0)

inst_63:
// rs2_val == 8192, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x2000; immval:0x14
TEST_STORE(x1,x3,0,x2,x10,0x2000,0x14,204,c.swsp,0)

inst_64:
// rs2_val == 4096, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x1000; immval:0x1c
TEST_STORE(x1,x3,0,x2,x10,0x1000,0x1c,208,c.swsp,0)

inst_65:
// rs2_val == 2048, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x800; immval:0x8
TEST_STORE(x1,x3,0,x2,x10,0x800,0x8,212,c.swsp,0)

inst_66:
// rs2_val == 1024, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x400; immval:0x34
TEST_STORE(x1,x3,0,x2,x10,0x400,0x34,216,c.swsp,0)

inst_67:
// rs2_val == 512, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x200; immval:0x44
TEST_STORE(x1,x3,0,x2,x10,0x200,0x44,220,c.swsp,0)

inst_68:
// rs2_val == 256, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:0x100; immval:0x14
TEST_STORE(x1,x3,0,x2,x10,0x100,0x14,224,c.swsp,0)

inst_69:
// rs2_val == -536870913, 
// opcode:c.swsp; op1:x2; op2:x10; op2val:-0x20000001; immval:0x2c
TEST_STORE(x1,x3,0,x2,x10,-0x20000001,0x2c,228,c.swsp,0)
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xbabecafe
RVTEST_DATA_END

RVMODEL_DATA_BEGIN


signature_x4_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x4_1:
    .fill 12*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 58*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
