// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.

.assembly extern System.Console
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )
  .ver 4:0:0:0
}

.assembly extern mscorlib { }
.assembly 'sizeof_Target_64Bit_and_arm'
{
}
.assembly extern xunit.core {}
.custom instance void [mscorlib]System.Security.UnverifiableCodeAttribute::.ctor() = ( 01 00 00 00 ) 
.namespace JitTest_sizeof_Target_64Bit_and_arm_il
{
  .class private sequential ansi sealed beforefieldinit SimpleStruct
         extends [mscorlib]System.ValueType
  {
    .field private int32 m_int
    .field private unsigned int32 m_uint
    .field private unsigned int8 m_byte
    .field private int8 m_sbyte
    .field private char m_char
    .field private int16 m_short
    .field private unsigned int16 m_ushort
    .field private int64 m_long
    .field private unsigned int64 m_ulong
  }
  .class private sequential ansi sealed beforefieldinit ComplexStruct
         extends [mscorlib]System.ValueType
  {
    .field private valuetype JitTest_sizeof_Target_64Bit_and_arm_il.SimpleStruct ss1
    .field private valuetype JitTest_sizeof_Target_64Bit_and_arm_il.SimpleStruct ss2
  }
  .class private sequential ansi sealed beforefieldinit RefComplexStruct
         extends [mscorlib]System.ValueType
  {
    .field private valuetype JitTest_sizeof_Target_64Bit_and_arm_il.SimpleStruct ss1
    .field private valuetype JitTest_sizeof_Target_64Bit_and_arm_il.SimpleStruct[] ssarr
    .field private valuetype JitTest_sizeof_Target_64Bit_and_arm_il.SimpleStruct ss2
  }
  .class private sequential ansi sealed beforefieldinit ComplexStruct2
         extends [mscorlib]System.ValueType
  {
    .field private valuetype JitTest_sizeof_Target_64Bit_and_arm_il.ComplexStruct x1
    .field private valuetype JitTest_sizeof_Target_64Bit_and_arm_il.ComplexStruct x2
    .field private valuetype JitTest_sizeof_Target_64Bit_and_arm_il.ComplexStruct x3
    .field private valuetype JitTest_sizeof_Target_64Bit_and_arm_il.ComplexStruct x4
    .field private valuetype JitTest_sizeof_Target_64Bit_and_arm_il.ComplexStruct x5
    .field private valuetype JitTest_sizeof_Target_64Bit_and_arm_il.ComplexStruct x6
    .field private valuetype JitTest_sizeof_Target_64Bit_and_arm_il.ComplexStruct x7
    .field private valuetype JitTest_sizeof_Target_64Bit_and_arm_il.ComplexStruct x8
    .field private valuetype JitTest_sizeof_Target_64Bit_and_arm_il.ComplexStruct x9
    .field private valuetype JitTest_sizeof_Target_64Bit_and_arm_il.ComplexStruct x10
    .field private valuetype JitTest_sizeof_Target_64Bit_and_arm_il.ComplexStruct x11
    .field private valuetype JitTest_sizeof_Target_64Bit_and_arm_il.ComplexStruct x12
    .field private valuetype JitTest_sizeof_Target_64Bit_and_arm_il.ComplexStruct x13
    .field private valuetype JitTest_sizeof_Target_64Bit_and_arm_il.ComplexStruct x14
    .field private valuetype JitTest_sizeof_Target_64Bit_and_arm_il.ComplexStruct x15
    .field private valuetype JitTest_sizeof_Target_64Bit_and_arm_il.ComplexStruct x16
    .field private valuetype JitTest_sizeof_Target_64Bit_and_arm_il.ComplexStruct x17
    .field private valuetype JitTest_sizeof_Target_64Bit_and_arm_il.ComplexStruct x18
  }
  .class private sequential ansi sealed beforefieldinit RefComplexStruct2
         extends [mscorlib]System.ValueType
  {
    .field private valuetype JitTest_sizeof_Target_64Bit_and_arm_il.ComplexStruct2 ss1
    .field private class [mscorlib]System.AppDomain ad
    .field private valuetype JitTest_sizeof_Target_64Bit_and_arm_il.ComplexStruct2 ss2
  }
  .class private sequential ansi sealed beforefieldinit Test
         extends [mscorlib]System.ValueType
  {
    .pack 1
    .size 1
    .method private hidebysig static int32
            Main() cil managed
    {
      .custom instance void [xunit.core]Xunit.FactAttribute::.ctor() = (
          01 00 00 00
      )
      .entrypoint
      .maxstack  3
      .locals (int32 V_0)
      IL_0000:  sizeof     JitTest_sizeof_Target_64Bit_and_arm_il.SimpleStruct
      IL_0006:  ldc.i4.s   32
      IL_0008:  beq.s      IL_0019
      IL_000a:  ldstr      "sizeof(SimpleStruct) failed."
      IL_000f:  call       void [System.Console]System.Console::WriteLine(string)
      IL_0014:  ldc.i4.s   101
      IL_0016:  stloc.0
      IL_0017:  br       EXIT
      IL_0019:  sizeof     JitTest_sizeof_Target_64Bit_and_arm_il.ComplexStruct
      IL_001f:  ldc.i4.s   64
      IL_0021:  beq.s      IL_0032
      IL_0023:  ldstr      "sizeof(ComplexStruct) failed."
      IL_0028:  call       void [System.Console]System.Console::WriteLine(string)
      IL_002d:  ldc.i4.s   102
      IL_002f:  stloc.0
      IL_0030:  br.s       EXIT
      IL_0032:  sizeof     JitTest_sizeof_Target_64Bit_and_arm_il.ComplexStruct2
      IL_0038:  sizeof     JitTest_sizeof_Target_64Bit_and_arm_il.ComplexStruct
      IL_003e:  ldc.i4.s   18
      IL_0040:  mul
      IL_0041:  beq.s      NEXT1
      IL_0043:  ldstr      "sizeof(ComplexStruct2) failed."
      IL_0048:  call       void [System.Console]System.Console::WriteLine(string)
      IL_004d:  ldc.i4.s   103
      IL_004f:  stloc.0
      IL_0050:  br.s       EXIT
      			
      NEXT1:
      			sizeof     JitTest_sizeof_Target_64Bit_and_arm_il.RefComplexStruct
      			ldc.i4.s   72
      			beq.s  NEXT2
      			
      				ldstr      "sizeof(RefComplexStruct) failed."
      				call       void [System.Console]System.Console::WriteLine(string)
      				ldc.i4.s   104
      				stloc.0
      				br.s       EXIT
      
      NEXT2:			
      			sizeof     JitTest_sizeof_Target_64Bit_and_arm_il.RefComplexStruct2
      			sizeof     JitTest_sizeof_Target_64Bit_and_arm_il.ComplexStruct2
      			ldc.i4.1
      			shl
      			ldc.i4.8
      			add
      			beq.s  OK
      			
      				ldstr      "sizeof(RefComplexStruct2) failed."
      				call       void [System.Console]System.Console::WriteLine(string)
      				ldc.i4.s   105
      				stloc.0
      				br.s       EXIT
      
      OK:  ldstr      "sizeof passed"
      IL_0057:  call       void [System.Console]System.Console::WriteLine(string)
      IL_005c:  ldc.i4 100
      IL_005d:  stloc.0
      
      EXIT: ldloc.0
      			ret
    }
  }
}
