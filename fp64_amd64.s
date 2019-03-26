// Code generated by command: go run asm.go -out fp64_amd64.s. DO NOT EDIT.

// +build amd64,!purego

#include "textflag.h"

// func Fingerprint64(s []byte) uint64
TEXT ·Fingerprint64(SB), NOSPLIT, $0-32
	MOVQ  s_base+0(FP), CX
	MOVQ  s_len+8(FP), AX
	CMPQ  AX, $0x10
	JG    check32
	CMPQ  AX, $0x08
	JL    check4
	MOVQ  (CX), DX
	MOVQ  AX, BX
	SUBQ  $0x08, BX
	ADDQ  CX, BX
	MOVQ  (BX), CX
	MOVQ  $0x9ae16a3b2f90404f, BX
	ADDQ  BX, DX
	SHLQ  $0x01, AX
	ADDQ  BX, AX
	MOVQ  CX, BX
	RORQ  $0x25, BX
	IMULQ AX, BX
	ADDQ  DX, BX
	MOVQ  DX, DX
	RORQ  $0x19, DX
	ADDQ  CX, DX
	IMULQ AX, DX
	XORQ  DX, BX
	IMULQ AX, BX
	MOVQ  BX, CX
	SHRQ  $0x2f, CX
	XORQ  BX, CX
	XORQ  CX, DX
	IMULQ AX, DX
	MOVQ  DX, CX
	SHRQ  $0x2f, CX
	XORQ  DX, CX
	IMULQ AX, CX
	MOVQ  CX, ret+24(FP)
	RET
	JMP fp64ret

check4:
	CMPQ  AX, $0x04
	JL    check0
	MOVQ  $0x9ae16a3b2f90404f, DX
	MOVQ  AX, BX
	SHLQ  $0x01, BX
	ADDQ  DX, BX
	MOVL  (CX), BP
	SHLQ  $0x03, BP
	ADDQ  AX, BP
	SUBQ  $0x04, AX
	ADDQ  AX, CX
	MOVL  (CX), SI
	XORQ  SI, BP
	IMULQ BX, BP
	MOVQ  BP, AX
	SHRQ  $0x2f, AX
	XORQ  BP, AX
	XORQ  AX, SI
	IMULQ BX, SI
	MOVQ  SI, AX
	SHRQ  $0x2f, AX
	XORQ  SI, AX
	IMULQ BX, AX
	MOVQ  AX, ret+24(FP)
	RET
	JMP fp64ret

check0:
	TESTQ   AX, AX
	JZ      empty
	MOVBQZX (CX), DX
	MOVQ    AX, BX
	SHRQ    $0x01, BX
	ADDQ    CX, BX
	MOVBQZX (BX), BP
	MOVQ    AX, BX
	SUBQ    $0x01, BX
	ADDQ    CX, BX
	MOVBQZX (BX), CX
	SHLQ    $0x08, BP
	ADDQ    BP, DX
	SHLQ    $0x02, CX
	ADDQ    CX, AX
	MOVQ    $0xc3a5c85c97cb3127, CX
	IMULQ   CX, AX
	MOVQ    $0x9ae16a3b2f90404f, CX
	IMULQ   CX, DX
	XORQ    DX, AX
	MOVQ    AX, DX
	SHRQ    $0x2f, DX
	XORQ    AX, DX
	IMULQ   CX, DX
	MOVQ    DX, ret+24(FP)
	RET
	JMP fp64ret

empty:
	MOVQ $0x9ae16a3b2f90404f, AX
	MOVQ AX, ret+24(FP)
	RET
	JMP fp64ret

check32:
	CMPQ  AX, $0x20
	JG    check64
	MOVQ  AX, DX
	SHLQ  $0x01, DX
	MOVQ  $0x9ae16a3b2f90404f, BX
	ADDQ  BX, DX
	MOVQ  (CX), BP
	MOVQ  $0xb492b66fbe98f273, SI
	IMULQ SI, BP
	MOVQ  8(CX), SI
	MOVQ  AX, AX
	SUBQ  $0x10, AX
	ADDQ  CX, AX
	MOVQ  8(AX), CX
	IMULQ DX, CX
	MOVQ  (AX), AX
	IMULQ BX, AX
	MOVQ  BP, DI
	ADDQ  SI, DI
	RORQ  $0x2b, DI
	ADDQ  AX, DI
	MOVQ  CX, AX
	RORQ  $0x1e, AX
	ADDQ  AX, DI
	ADDQ  CX, BP
	ADDQ  BX, SI
	RORQ  $0x12, SI
	ADDQ  SI, BP
	XORQ  BP, DI
	IMULQ DX, DI
	MOVQ  DI, AX
	SHRQ  $0x2f, AX
	XORQ  DI, AX
	XORQ  AX, BP
	IMULQ DX, BP
	MOVQ  BP, AX
	SHRQ  $0x2f, AX
	XORQ  BP, AX
	IMULQ DX, AX
	MOVQ  AX, ret+24(FP)
	RET
	JMP fp64ret

check64:
	CMPQ  AX, $0x40
	JG    long
	MOVQ  AX, DX
	SHLQ  $0x01, DX
	MOVQ  $0x9ae16a3b2f90404f, BX
	ADDQ  BX, DX
	MOVQ  (CX), BP
	IMULQ BX, BP
	MOVQ  8(CX), SI
	MOVQ  AX, DI
	SUBQ  $0x10, DI
	ADDQ  CX, DI
	MOVQ  8(DI), R8
	IMULQ DX, R8
	MOVQ  (DI), DI
	IMULQ BX, DI
	MOVQ  BP, R9
	ADDQ  SI, R9
	RORQ  $0x2b, R9
	ADDQ  DI, R9
	MOVQ  R8, DI
	RORQ  $0x1e, DI
	ADDQ  DI, R9
	ADDQ  BP, R8
	ADDQ  BX, SI
	RORQ  $0x12, SI
	ADDQ  SI, R8
	MOVQ  R9, BX
	XORQ  R8, BX
	IMULQ DX, BX
	MOVQ  BX, SI
	SHRQ  $0x2f, SI
	XORQ  BX, SI
	XORQ  SI, R8
	IMULQ DX, R8
	MOVQ  R8, BX
	SHRQ  $0x2f, BX
	XORQ  R8, BX
	IMULQ DX, BX
	MOVQ  16(CX), SI
	IMULQ DX, SI
	MOVQ  24(CX), DI
	MOVQ  AX, AX
	SUBQ  $0x20, AX
	ADDQ  CX, AX
	MOVQ  (AX), CX
	ADDQ  R9, CX
	IMULQ DX, CX
	MOVQ  8(AX), AX
	ADDQ  BX, AX
	IMULQ DX, AX
	MOVQ  SI, BX
	ADDQ  DI, BX
	RORQ  $0x2b, BX
	ADDQ  AX, BX
	MOVQ  CX, AX
	RORQ  $0x1e, AX
	ADDQ  AX, BX
	ADDQ  CX, SI
	ADDQ  BP, DI
	RORQ  $0x12, DI
	ADDQ  DI, SI
	XORQ  SI, BX
	IMULQ DX, BX
	MOVQ  BX, AX
	SHRQ  $0x2f, AX
	XORQ  BX, AX
	XORQ  AX, SI
	IMULQ DX, SI
	MOVQ  SI, AX
	SHRQ  $0x2f, AX
	XORQ  SI, AX
	IMULQ DX, AX
	MOVQ  AX, ret+24(FP)
	RET
	JMP fp64ret

long:
	XORQ DX, DX
	XORQ BX, BX
	XORQ BP, BP
	XORQ SI, SI
	MOVQ $0x01529cba0ca458ff, DI
	ADDQ (CX), DI
	MOVQ $0x226bb95b4e64b6d4, R8
	MOVQ $0x134a747f856d0526, R9
	MOVQ AX, R10
	SUBQ $0x01, R10
	MOVQ $0xffffffffffffffc0, R11
	ANDQ R11, R10
	MOVQ AX, R11
	SUBQ $0x01, R11
	ANDQ $0x3f, R11
	SUBQ $0x3f, R11
	ADDQ R10, R11
	MOVQ R11, R10
	ADDQ CX, R10
	MOVQ AX, R11

loop:
	MOVQ  $0xb492b66fbe98f273, R12
	ADDQ  R8, DI
	ADDQ  DX, DI
	ADDQ  8(CX), DI
	RORQ  $0x25, DI
	IMULQ R12, DI
	ADDQ  BX, R8
	ADDQ  48(CX), R8
	RORQ  $0x2a, R8
	IMULQ R12, R8
	XORQ  SI, DI
	ADDQ  DX, R8
	ADDQ  40(CX), R8
	ADDQ  BP, R9
	RORQ  $0x21, R9
	IMULQ R12, R9
	IMULQ R12, BX
	MOVQ  DI, DX
	ADDQ  BP, DX
	ADDQ  (CX), BX
	ADDQ  BX, DX
	ADDQ  24(CX), DX
	RORQ  $0x15, DX
	MOVQ  BX, BP
	ADDQ  8(CX), BX
	ADDQ  16(CX), BX
	MOVQ  BX, R13
	RORQ  $0x2c, R13
	ADDQ  R13, DX
	ADDQ  24(CX), BX
	ADDQ  BP, DX
	MOVQ  BX, BX
	MOVQ  DX, BP
	MOVQ  BX, DX
	MOVQ  BP, BX
	ADDQ  R9, SI
	MOVQ  R8, BP
	ADDQ  16(CX), BP
	ADDQ  32(CX), SI
	ADDQ  SI, BP
	ADDQ  56(CX), BP
	RORQ  $0x15, BP
	MOVQ  SI, R13
	ADDQ  40(CX), SI
	ADDQ  48(CX), SI
	MOVQ  SI, R14
	RORQ  $0x2c, R14
	ADDQ  R14, BP
	ADDQ  56(CX), SI
	ADDQ  R13, BP
	MOVQ  SI, SI
	MOVQ  BP, R13
	MOVQ  SI, BP
	MOVQ  R13, SI
	XCHGQ R9, DI
	ADDQ  $0x40, CX
	SUBQ  $0x40, R11
	CMPQ  R11, $0x40
	JG    loop
	MOVQ  R10, CX
	MOVQ  R9, R11
	ANDQ  $0xff, R11
	SHLQ  $0x01, R11
	ADDQ  R12, R11
	MOVQ  R10, CX
	SUBQ  $0x01, AX
	ANDQ  $0x3f, AX
	ADDQ  AX, BP
	ADDQ  BP, DX
	ADDQ  DX, BP
	ADDQ  R8, DI
	ADDQ  DX, DI
	ADDQ  8(CX), DI
	RORQ  $0x25, DI
	IMULQ R11, DI
	ADDQ  BX, R8
	ADDQ  48(CX), R8
	RORQ  $0x2a, R8
	IMULQ R11, R8
	MOVQ  $0x00000009, AX
	IMULQ SI, AX
	XORQ  AX, DI
	MOVQ  $0x00000009, AX
	IMULQ DX, AX
	ADDQ  AX, R8
	ADDQ  40(CX), R8
	ADDQ  BP, R9
	RORQ  $0x21, R9
	IMULQ R11, R9
	IMULQ R11, BX
	MOVQ  DI, DX
	ADDQ  BP, DX
	ADDQ  (CX), BX
	ADDQ  BX, DX
	ADDQ  24(CX), DX
	RORQ  $0x15, DX
	MOVQ  BX, AX
	ADDQ  8(CX), BX
	ADDQ  16(CX), BX
	MOVQ  BX, BP
	RORQ  $0x2c, BP
	ADDQ  BP, DX
	ADDQ  24(CX), BX
	ADDQ  AX, DX
	MOVQ  BX, AX
	MOVQ  DX, BX
	MOVQ  AX, DX
	MOVQ  BX, BX
	ADDQ  R9, SI
	MOVQ  R8, BP
	ADDQ  16(CX), BP
	ADDQ  32(CX), SI
	ADDQ  SI, BP
	ADDQ  56(CX), BP
	RORQ  $0x15, BP
	MOVQ  SI, AX
	ADDQ  40(CX), SI
	ADDQ  48(CX), SI
	MOVQ  SI, R10
	RORQ  $0x2c, R10
	ADDQ  R10, BP
	ADDQ  56(CX), SI
	ADDQ  AX, BP
	MOVQ  SI, AX
	MOVQ  BP, CX
	MOVQ  AX, BP
	MOVQ  CX, SI
	XCHGQ R9, DI
	XORQ  BP, DX
	IMULQ R11, DX
	MOVQ  DX, AX
	SHRQ  $0x2f, AX
	XORQ  DX, AX
	XORQ  AX, BP
	IMULQ R11, BP
	MOVQ  BP, AX
	SHRQ  $0x2f, AX
	XORQ  BP, AX
	IMULQ R11, AX
	ADDQ  R9, AX
	MOVQ  R8, CX
	SHRQ  $0x2f, CX
	XORQ  R8, CX
	MOVQ  $0xc3a5c85c97cb3127, DX
	IMULQ DX, CX
	ADDQ  CX, AX
	XORQ  SI, BX
	IMULQ R11, BX
	MOVQ  BX, CX
	SHRQ  $0x2f, CX
	XORQ  BX, CX
	XORQ  CX, SI
	IMULQ R11, SI
	MOVQ  SI, CX
	SHRQ  $0x2f, CX
	XORQ  SI, CX
	IMULQ R11, CX
	ADDQ  DI, CX
	XORQ  CX, AX
	IMULQ R11, AX
	MOVQ  AX, DX
	SHRQ  $0x2f, DX
	XORQ  AX, DX
	XORQ  DX, CX
	IMULQ R11, CX
	MOVQ  CX, AX
	SHRQ  $0x2f, AX
	XORQ  CX, AX
	IMULQ R11, AX
	MOVQ  AX, ret+24(FP)

fp64ret:
	RET

// func FP32(s []byte) uint32
TEXT ·FP32(SB), NOSPLIT, $0-28
	MOVQ    s_base+0(FP), AX
	MOVQ    s_len+8(FP), CX
	CMPQ    CX, $0x18
	JG      long
	CMPQ    CX, $0x0c
	JG      hash_13_24
	CMPQ    CX, $0x04
	JG      hash_5_12
	XORL    DX, DX
	MOVL    $0x00000009, BX
	TESTQ   CX, CX
	JZ      done
	MOVQ    CX, BP
	MOVL    $0xcc9e2d51, DI
	IMULL   DI, DX
	MOVBLSX (AX), SI
	ADDL    SI, DX
	XORL    DX, BX
	SUBQ    $0x01, BP
	TESTQ   BP, BP
	JZ      done
	IMULL   DI, DX
	MOVBLSX 1(AX), SI
	ADDL    SI, DX
	XORL    DX, BX
	SUBQ    $0x01, BP
	TESTQ   BP, BP
	JZ      done
	IMULL   DI, DX
	MOVBLSX 2(AX), SI
	ADDL    SI, DX
	XORL    DX, BX
	SUBQ    $0x01, BP
	TESTQ   BP, BP
	JZ      done
	IMULL   DI, DX
	MOVBLSX 3(AX), SI
	ADDL    SI, DX
	XORL    DX, BX
	SUBQ    $0x01, BP
	TESTQ   BP, BP
	JZ      done

done:
	MOVL   CX, AX
	IMUL3L $0xcc9e2d51, AX, AX
	RORL   $0x11, AX
	IMUL3L $0x1b873593, AX, AX
	XORL   AX, BX
	RORL   $0x13, BX
	LEAL   (BX)(BX*4), AX
	LEAL   3864292196(AX), BX
	IMUL3L $0xcc9e2d51, DX, DX
	RORL   $0x11, DX
	IMUL3L $0x1b873593, DX, DX
	XORL   DX, BX
	RORL   $0x13, BX
	LEAL   (BX)(BX*4), DX
	LEAL   3864292196(DX), BX
	MOVL   BX, AX
	SHRL   $0x10, AX
	XORL   AX, BX
	MOVL   $0x85ebca6b, AX
	IMULL  AX, BX
	MOVL   BX, AX
	SHRL   $0x0d, AX
	XORL   AX, BX
	MOVL   $0xc2b2ae35, AX
	IMULL  AX, BX
	MOVL   BX, AX
	SHRL   $0x10, AX
	XORL   AX, BX
	MOVL   BX, ret+24(FP)
	RET
	JMP fp32ret

hash_5_12:
	MOVL   CX, DX
	MOVL   DX, BX
	SHLL   $0x02, BX
	ADDL   DX, BX
	MOVL   $0x00000009, BP
	MOVL   BX, SI
	ADDL   (AX), DX
	MOVQ   CX, DI
	SUBQ   $0x04, DI
	ADDQ   AX, DI
	ADDL   (DI), BX
	MOVQ   CX, DI
	SHRQ   $0x01, DI
	ANDQ   $0x04, DI
	ADDQ   AX, DI
	ADDL   (DI), BP
	IMUL3L $0xcc9e2d51, DX, DX
	RORL   $0x11, DX
	IMUL3L $0x1b873593, DX, DX
	XORL   DX, SI
	RORL   $0x13, SI
	LEAL   (SI)(SI*4), DX
	LEAL   3864292196(DX), SI
	IMUL3L $0xcc9e2d51, BX, BX
	RORL   $0x11, BX
	IMUL3L $0x1b873593, BX, BX
	XORL   BX, SI
	RORL   $0x13, SI
	LEAL   (SI)(SI*4), BX
	LEAL   3864292196(BX), SI
	IMUL3L $0xcc9e2d51, BP, BP
	RORL   $0x11, BP
	IMUL3L $0x1b873593, BP, BP
	XORL   BP, SI
	RORL   $0x13, SI
	LEAL   (SI)(SI*4), BP
	LEAL   3864292196(BP), SI
	MOVL   SI, AX
	SHRL   $0x10, AX
	XORL   AX, SI
	MOVL   $0x85ebca6b, AX
	IMULL  AX, SI
	MOVL   SI, AX
	SHRL   $0x0d, AX
	XORL   AX, SI
	MOVL   $0xc2b2ae35, AX
	IMULL  AX, SI
	MOVL   SI, AX
	SHRL   $0x10, AX
	XORL   AX, SI
	MOVL   SI, ret+24(FP)
	RET
	JMP fp32ret

hash_13_24:
	MOVQ   CX, DX
	SHRQ   $0x01, DX
	ADDQ   AX, DX
	MOVL   -4(DX), BX
	MOVL   4(AX), BP
	MOVQ   CX, SI
	ADDQ   AX, SI
	MOVL   -8(SI), DI
	MOVL   (DX), DX
	MOVL   (AX), AX
	MOVL   -4(SI), SI
	MOVL   $0xcc9e2d51, R8
	IMULL  DX, R8
	ADDL   CX, R8
	RORL   $0x0c, BX
	ADDL   SI, BX
	MOVL   DI, CX
	IMUL3L $0xcc9e2d51, CX, CX
	RORL   $0x11, CX
	IMUL3L $0x1b873593, CX, CX
	XORL   CX, R8
	RORL   $0x13, R8
	LEAL   (R8)(R8*4), CX
	LEAL   3864292196(CX), R8
	ADDL   BX, R8
	RORL   $0x03, BX
	ADDL   DI, BX
	IMUL3L $0xcc9e2d51, AX, AX
	RORL   $0x11, AX
	IMUL3L $0x1b873593, AX, AX
	XORL   AX, R8
	RORL   $0x13, R8
	LEAL   (R8)(R8*4), AX
	LEAL   3864292196(AX), R8
	ADDL   BX, R8
	ADDL   SI, BX
	RORL   $0x0c, BX
	ADDL   DX, BX
	IMUL3L $0xcc9e2d51, BP, BP
	RORL   $0x11, BP
	IMUL3L $0x1b873593, BP, BP
	XORL   BP, R8
	RORL   $0x13, R8
	LEAL   (R8)(R8*4), BP
	LEAL   3864292196(BP), R8
	ADDL   BX, R8
	MOVL   R8, AX
	SHRL   $0x10, AX
	XORL   AX, R8
	MOVL   $0x85ebca6b, AX
	IMULL  AX, R8
	MOVL   R8, AX
	SHRL   $0x0d, AX
	XORL   AX, R8
	MOVL   $0xc2b2ae35, AX
	IMULL  AX, R8
	MOVL   R8, AX
	SHRL   $0x10, AX
	XORL   AX, R8
	MOVL   R8, ret+24(FP)
	RET
	JMP fp32ret

long:
	MOVL  CX, DX
	MOVL  $0xcc9e2d51, BX
	IMULL DX, BX
	MOVL  BX, BP
	MOVQ  CX, SI
	ADDQ  AX, SI
	MOVL  $0xcc9e2d51, DI
	MOVL  $0x1b873593, R8
	MOVL  -4(SI), R9
	IMULL DI, R9
	RORL  $0x11, R9
	IMULL R8, R9
	XORL  R9, DX
	RORL  $0x13, DX
	MOVL  DX, R9
	SHLL  $0x02, R9
	ADDL  R9, DX
	ADDL  $0xe6546b64, DX
	MOVL  -8(SI), R9
	IMULL DI, R9
	RORL  $0x11, R9
	IMULL R8, R9
	XORL  R9, BX
	RORL  $0x13, BX
	MOVL  BX, R9
	SHLL  $0x02, R9
	ADDL  R9, BX
	ADDL  $0xe6546b64, BX
	MOVL  -16(SI), R9
	IMULL DI, R9
	RORL  $0x11, R9
	IMULL R8, R9
	XORL  R9, DX
	RORL  $0x13, DX
	MOVL  DX, R9
	SHLL  $0x02, R9
	ADDL  R9, DX
	ADDL  $0xe6546b64, DX
	MOVL  -12(SI), R9
	IMULL DI, R9
	RORL  $0x11, R9
	IMULL R8, R9
	XORL  R9, BX
	RORL  $0x13, BX
	MOVL  BX, R9
	SHLL  $0x02, R9
	ADDL  R9, BX
	ADDL  $0xe6546b64, BX
	MOVL  -20(SI), SI
	IMULL DI, SI
	RORL  $0x11, SI
	IMULL R8, SI
	ADDL  SI, BP
	RORL  $0x13, BP
	ADDL  $0x71, BP
	CMPQ  CX, $0x50
	JL    loop

loop80:
	MOVL   (AX), SI
	ADDL   SI, DX
	MOVL   4(AX), DI
	ADDL   DI, BX
	MOVL   8(AX), R8
	ADDL   R8, BP
	MOVL   12(AX), R9
	MOVL   R9, R11
	IMUL3L $0xcc9e2d51, R11, R11
	RORL   $0x11, R11
	IMUL3L $0x1b873593, R11, R11
	XORL   R11, DX
	RORL   $0x13, DX
	LEAL   (DX)(DX*4), R11
	LEAL   3864292196(R11), DX
	MOVL   16(AX), R10
	ADDL   R10, DX
	MOVL   R8, R11
	IMUL3L $0xcc9e2d51, R11, R11
	RORL   $0x11, R11
	IMUL3L $0x1b873593, R11, R11
	XORL   R11, BX
	RORL   $0x13, BX
	LEAL   (BX)(BX*4), R11
	LEAL   3864292196(R11), BX
	ADDL   SI, BX
	IMUL3L $0xcc9e2d51, R10, R11
	ADDL   DI, R11
	IMUL3L $0xcc9e2d51, R11, R11
	RORL   $0x11, R11
	IMUL3L $0x1b873593, R11, R11
	XORL   R11, BP
	RORL   $0x13, BP
	LEAL   (BP)(BP*4), R11
	LEAL   3864292196(R11), BP
	ADDL   R9, BP
	ADDL   BX, BP
	ADDL   BP, BX
	MOVL   20(AX), SI
	ADDL   SI, DX
	MOVL   24(AX), DI
	ADDL   DI, BX
	MOVL   28(AX), R8
	ADDL   R8, BP
	MOVL   32(AX), R9
	MOVL   R9, R11
	IMUL3L $0xcc9e2d51, R11, R11
	RORL   $0x11, R11
	IMUL3L $0x1b873593, R11, R11
	XORL   R11, DX
	RORL   $0x13, DX
	LEAL   (DX)(DX*4), R11
	LEAL   3864292196(R11), DX
	MOVL   36(AX), R10
	ADDL   R10, DX
	MOVL   R8, R11
	IMUL3L $0xcc9e2d51, R11, R11
	RORL   $0x11, R11
	IMUL3L $0x1b873593, R11, R11
	XORL   R11, BX
	RORL   $0x13, BX
	LEAL   (BX)(BX*4), R11
	LEAL   3864292196(R11), BX
	ADDL   SI, BX
	IMUL3L $0xcc9e2d51, R10, R11
	ADDL   DI, R11
	IMUL3L $0xcc9e2d51, R11, R11
	RORL   $0x11, R11
	IMUL3L $0x1b873593, R11, R11
	XORL   R11, BP
	RORL   $0x13, BP
	LEAL   (BP)(BP*4), R11
	LEAL   3864292196(R11), BP
	ADDL   R9, BP
	ADDL   BX, BP
	ADDL   BP, BX
	MOVL   40(AX), SI
	ADDL   SI, DX
	MOVL   44(AX), DI
	ADDL   DI, BX
	MOVL   48(AX), R8
	ADDL   R8, BP
	MOVL   52(AX), R9
	MOVL   R9, R11
	IMUL3L $0xcc9e2d51, R11, R11
	RORL   $0x11, R11
	IMUL3L $0x1b873593, R11, R11
	XORL   R11, DX
	RORL   $0x13, DX
	LEAL   (DX)(DX*4), R11
	LEAL   3864292196(R11), DX
	MOVL   56(AX), R10
	ADDL   R10, DX
	MOVL   R8, R11
	IMUL3L $0xcc9e2d51, R11, R11
	RORL   $0x11, R11
	IMUL3L $0x1b873593, R11, R11
	XORL   R11, BX
	RORL   $0x13, BX
	LEAL   (BX)(BX*4), R11
	LEAL   3864292196(R11), BX
	ADDL   SI, BX
	IMUL3L $0xcc9e2d51, R10, R11
	ADDL   DI, R11
	IMUL3L $0xcc9e2d51, R11, R11
	RORL   $0x11, R11
	IMUL3L $0x1b873593, R11, R11
	XORL   R11, BP
	RORL   $0x13, BP
	LEAL   (BP)(BP*4), R11
	LEAL   3864292196(R11), BP
	ADDL   R9, BP
	ADDL   BX, BP
	ADDL   BP, BX
	MOVL   60(AX), SI
	ADDL   SI, DX
	MOVL   64(AX), DI
	ADDL   DI, BX
	MOVL   68(AX), R8
	ADDL   R8, BP
	MOVL   72(AX), R9
	MOVL   R9, R11
	IMUL3L $0xcc9e2d51, R11, R11
	RORL   $0x11, R11
	IMUL3L $0x1b873593, R11, R11
	XORL   R11, DX
	RORL   $0x13, DX
	LEAL   (DX)(DX*4), R11
	LEAL   3864292196(R11), DX
	MOVL   76(AX), R10
	ADDL   R10, DX
	MOVL   R8, R11
	IMUL3L $0xcc9e2d51, R11, R11
	RORL   $0x11, R11
	IMUL3L $0x1b873593, R11, R11
	XORL   R11, BX
	RORL   $0x13, BX
	LEAL   (BX)(BX*4), R11
	LEAL   3864292196(R11), BX
	ADDL   SI, BX
	IMUL3L $0xcc9e2d51, R10, R11
	ADDL   DI, R11
	IMUL3L $0xcc9e2d51, R11, R11
	RORL   $0x11, R11
	IMUL3L $0x1b873593, R11, R11
	XORL   R11, BP
	RORL   $0x13, BP
	LEAL   (BP)(BP*4), R11
	LEAL   3864292196(R11), BP
	ADDL   R9, BP
	ADDL   BX, BP
	ADDL   BP, BX
	ADDQ   $0x50, AX
	SUBQ   $0x50, CX
	CMPQ   CX, $0x50
	JG     loop80
	CMPQ   CX, $0x14
	JL     after

loop:
	MOVL   (AX), SI
	ADDL   SI, DX
	MOVL   4(AX), DI
	ADDL   DI, BX
	MOVL   8(AX), R8
	ADDL   R8, BP
	MOVL   12(AX), R9
	MOVL   R9, R11
	IMUL3L $0xcc9e2d51, R11, R11
	RORL   $0x11, R11
	IMUL3L $0x1b873593, R11, R11
	XORL   R11, DX
	RORL   $0x13, DX
	LEAL   (DX)(DX*4), R11
	LEAL   3864292196(R11), DX
	MOVL   16(AX), R10
	ADDL   R10, DX
	MOVL   R8, R11
	IMUL3L $0xcc9e2d51, R11, R11
	RORL   $0x11, R11
	IMUL3L $0x1b873593, R11, R11
	XORL   R11, BX
	RORL   $0x13, BX
	LEAL   (BX)(BX*4), R11
	LEAL   3864292196(R11), BX
	ADDL   SI, BX
	IMUL3L $0xcc9e2d51, R10, R11
	ADDL   DI, R11
	IMUL3L $0xcc9e2d51, R11, R11
	RORL   $0x11, R11
	IMUL3L $0x1b873593, R11, R11
	XORL   R11, BP
	RORL   $0x13, BP
	LEAL   (BP)(BP*4), R11
	LEAL   3864292196(R11), BP
	ADDL   R9, BP
	ADDL   BX, BP
	ADDL   BP, BX
	ADDQ   $0x14, AX
	SUBQ   $0x14, CX
	CMPQ   CX, $0x14
	JG     loop

after:
	MOVL  $0xcc9e2d51, AX
	RORL  $0x0b, BX
	IMULL AX, BX
	RORL  $0x11, BX
	IMULL AX, BX
	RORL  $0x0b, BP
	IMULL AX, BP
	RORL  $0x11, BP
	IMULL AX, BP
	ADDL  BX, DX
	RORL  $0x13, DX
	MOVL  DX, CX
	SHLL  $0x02, CX
	ADDL  CX, DX
	ADDL  $0xe6546b64, DX
	RORL  $0x11, DX
	IMULL AX, DX
	ADDL  BP, DX
	RORL  $0x13, DX
	MOVL  DX, CX
	SHLL  $0x02, CX
	ADDL  CX, DX
	ADDL  $0xe6546b64, DX
	RORL  $0x11, DX
	IMULL AX, DX
	MOVL  DX, ret+24(FP)
	RET

fp32ret:
	RET
