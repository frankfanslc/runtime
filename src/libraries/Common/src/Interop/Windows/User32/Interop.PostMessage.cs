// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.

using System;
using System.Runtime.InteropServices;

internal static partial class Interop
{
    internal static partial class User32
    {
        [GeneratedDllImport(Libraries.User32, CharSet = CharSet.Unicode)]
        public static partial int PostMessageW(IntPtr hwnd, int msg, IntPtr wparam, IntPtr lparam);
    }
}
