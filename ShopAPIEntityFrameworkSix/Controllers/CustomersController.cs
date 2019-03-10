using ShopAPIEntityFrameworkSix.Core;
using ShopAPIEntityFrameworkSix.Models;
using ShopAPIEntityFrameworkSix.Persistance;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;

namespace ShopAPIEntityFrameworkSix.Controllers
{
    public class CustomersController : ApiController
    {
        private readonly IRepository<CUSTOMER> repository;

        public CustomersController()
        {
            this.repository = new CustomersRepository();
        }

        // GET api/<controller>
        public async Task<IHttpActionResult> Get()
        {
            var result = await this.repository.GetAllAsync();
            if (result == null)
            {
                return this.NotFound();
            }

            return this.Ok(result);
        }

        // GET api/<controller>/5
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<controller>
        public void Post([FromBody]string value)
        {
        }

        // PUT api/<controller>/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/<controller>/5
        public void Delete(int id)
        {
        }
    }
}