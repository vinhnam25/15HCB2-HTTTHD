using System;
using System.Collections.Generic;
using System.Drawing.Design;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using CardProcessing.Business.Services;
using CardProcessing.Business.Services.Account;
using CardProcessing.Business.Services.Location;

namespace CardProcessingApi.Web.Controllers
{
    public class ValuesController : ApiController
    {
        private readonly IValueService _valueService;
        private readonly ILocationService _locationService;
        private readonly IAccountService _accountService;
        public ValuesController(IValueService valueService, ILocationService locationService, IAccountService accountService)
        {
            _valueService = valueService;
            _locationService = locationService;
            _accountService = accountService;
        }

        // GET api/values
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/values/5
        public string Get(int id)
        {
            var location = _locationService.GetDistrictById(1).ToString();
            var user = _accountService.GetUserName().ToString();

            return string.Empty;
        }

        // POST api/values
        public void Post([FromBody]string value)
        {
        }

        // PUT api/values/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/values/5
        public void Delete(int id)
        {
        }
    }
}
