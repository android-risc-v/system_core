/*
 * Copyright (C) 2020 The Android Open Source Project
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
 * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
 * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 */

  .text
  .type     AsmGetRegs, %function
  .globl    AsmGetRegs
  .ent      AsmGetRegs
  .balign    16
AsmGetRegs:
  .cfi_startproc
  .cfi_def_cfa $sp, 0
  .set push
  .set noreorder
  sd      zero, 0(a0)
  sd      sp, 8(a0)
  sd      gp, 16(a0)
  sd      tp, 24(a0)
  sd      t0, 32(a0)
  sd      t1, 40(a0)
  sd      t2, 48(a0)
  sd      fp, 56(a0)
  sd      s1, 64(a0)
  sd      a0, 72(a0)
  sd      a1, 80(a0)
  sd      a2, 88(a0)
  sd      a3, 96(a0)
  sd      a4, 104(a0)
  sd      a5, 112(a0)
  sd      a6, 120(a0)
  sd      a7, 128(a0)
  sd      s2, 136(a0)
  sd      s3, 144(a0)
  sd      s4, 152(a0)
  sd      s5, 160(a0)
  sd      s6, 168(a0)
  sd      s7, 176(a0)
  sd      s8, 184(a0)
  sd      s9, 192(a0)
  sd      s10, 200(a0)
  sd      s11, 208(a0)
  sd      t3, 216(a0)
  sd      t4, 224(a0)
  sd      t5, 232(a0)
  sd      t6, 240(a0)
  sd	  ra, 248(a0)
  ret
  sd	  ra, 256(a0)

  .set pop
  .cfi_endproc
  .size AsmGetRegs, .-AsmGetRegs
  .end      AsmGetRegs
