using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using ShopAPICoreDapper.Core;
using ShopAPICoreDapper.Models;

namespace ShopAPICoreDapper.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class OrdersController : ControllerBase
    {
        private readonly IRepository<Order> repository;

        public OrdersController(IRepository<Order> repository)
        {
            this.repository = repository;
        }

        [HttpGet]
        public async Task<IActionResult> GetAllAsync()
        {
            var result = await this.repository.GetAllAsync();
            if (result == null)
            {
                return this.NotFound();
            }

            return this.Ok(result);
        }
    }
}