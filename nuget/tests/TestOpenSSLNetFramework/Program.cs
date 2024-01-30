using System;
using System.Runtime.InteropServices;

namespace TestOpenSSLNetFramework
{
    internal class Program
    {
        [DllImport("libssl-3-x64.dll", EntryPoint = "TLS_server_method", CallingConvention = CallingConvention.Cdecl)]
        internal static extern IntPtr TLS_server_method_64();

        [DllImport("libssl-3.dll", EntryPoint = "TLS_server_method", CallingConvention = CallingConvention.Cdecl)]
        internal static extern IntPtr TLS_server_method_32();



        static void Main(string[] args)
        {
            if (IntPtr.Size == 4)
            {
                var ptr = TLS_server_method_32();
                Console.WriteLine(ptr);
            }
            else
            {
                var ptr = TLS_server_method_64();
                Console.WriteLine(ptr);
            }
        }
    }
}
