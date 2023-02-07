using System.Runtime.InteropServices;

namespace TestOpenSSLNetCore
{
    internal class Program
    {
        [DllImport("libssl-1_1-x64.dll", CallingConvention = CallingConvention.Cdecl)]
        internal static extern IntPtr TLS_server_method();

        static void Main(string[] args)
        {
            var ptr = TLS_server_method();
            Console.WriteLine(ptr);
        }

    }
}