// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.

using System.Runtime.InteropServices;
using System.Security.Cryptography;

internal static partial class Interop
{
    internal static partial class Advapi32
    {
        [GeneratedDllImport(Libraries.Advapi32, SetLastError = true)]
        public static partial bool CryptSetKeyParam(SafeCapiKeyHandle hKey, int dwParam, byte[] pbData, int dwFlags);

        [GeneratedDllImport(Libraries.Advapi32, SetLastError = true)]
        public static partial bool CryptSetKeyParam(SafeCapiKeyHandle safeKeyHandle, int dwParam, ref int pdw, int dwFlags);
    }
}
