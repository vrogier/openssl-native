using System;
using System.Runtime.InteropServices;

namespace TestOpenSSLNetFramework
{
    internal class Program
    {
        [DllImport("libssl-3.dll", CallingConvention = CallingConvention.Cdecl)]
        internal static extern IntPtr TLS_server_method();

        static void Main(string[] args)
        { 
            var ptr = TLS_server_method();
            Console.WriteLine(ptr);
        }
    }
}
