// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.

.assembly extern legacy library mscorlib {}

.assembly 'br'{}

.class public _br {



.method public static int32 main(class [mscorlib]System.String[]) {
.entrypoint
.maxstack	10
	

	br PASS


FAIL:
	ldc.i4	0x0
	ret

PASS:
	ldc.i4 100
	ret
}
}
