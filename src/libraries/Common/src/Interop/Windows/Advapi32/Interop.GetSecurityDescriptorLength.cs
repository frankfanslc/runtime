// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.

using System;
using System.Runtime.InteropServices;

internal static partial class Interop
{
    internal static partial class Advapi32
    {
        [GeneratedDllImport(Libraries.Advapi32, EntryPoint = "GetSecurityDescriptorLength", CharSet = CharSet.Unicode)]
        internal static partial uint GetSecurityDescriptorLength(IntPtr byteArray);
    }
}
