// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.

using System.Runtime.InteropServices;
using Microsoft.Win32.SafeHandles;

internal static partial class Interop
{
    internal static partial class Advapi32
    {
        [GeneratedDllImport(Libraries.Advapi32, EntryPoint = "ClearEventLogW", CharSet = CharSet.Unicode, SetLastError = true)]
        public static partial bool ClearEventLog(SafeEventLogReadHandle hEventLog, string lpBackupFileName);
    }
}
