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

        [HttpPost]
        public async Task<IActionResult> Create([FromBody] Order order)
        {
            // FIXME: Hardcoded Id (controller & repository)
            var result = await this.repository.AddAsync(order);
            return this.Created(this.Request.Path.Value, result);
        }
    }
}