using Pos.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Pos.SelfHost
{
    class Program
    {
        static void Main(string[] args)
        {
            var principal = Thread.CurrentPrincipal;            
            ServiceHost host = new ServiceHost(typeof(PosService));
            host.Open();
            Console.WriteLine("Hit any key to exit!");
            Console.ReadKey();
            host.Close();
        }
    }
}
