using System;
using System.Collections.Generic;
using System.Linq;
using System.Security;
using System.Security.Claims;
using System.Security.Permissions;
using System.ServiceModel;
using System.Threading;
using Pos.Data;
using Pos.Entities;

namespace Pos.Services
{  
    [ServiceBehavior(InstanceContextMode=InstanceContextMode.PerCall)]
    public class PosService : IPosService, IDisposable
    {
        readonly PosDbContext _Context = new PosDbContext();           

        public List<Customer> GetCustomers()
        {
            return _Context.Customers.ToList();
        }

        [PrincipalPermission(SecurityAction.Demand, Role = "BUILTIN\\Administrators")]
        public List<Product> GetProducts()
        {
            var principal =  Thread.CurrentPrincipal;
            if (!principal.IsInRole("BUILTIN\\Administrators"))
                throw new SecurityException("Access Denied");
            // ClaimsPrincipal.Current.HasClaim();
            return _Context.Products.ToList();
        }

        [OperationBehavior(TransactionScopeRequired =true)]
        public void SubmitOrder(Order order)
        {
            _Context.Orders.Add(order);
            order.OrderItems.ForEach(oi => _Context.OrderItems.Add(oi));
            _Context.SaveChanges();            
        }

        public void Dispose()
        {
            _Context.Dispose();
        }
    }
}
