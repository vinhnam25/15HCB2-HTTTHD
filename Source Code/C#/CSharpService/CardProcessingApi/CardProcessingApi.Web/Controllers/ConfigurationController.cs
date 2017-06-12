using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.UI.WebControls;
using CardProcessing.Business.BusinessLogic;
using CardProcessingApi.Web.Models;

namespace CardProcessingApi.Web.Controllers
{
    [RoutePrefix("api/config")]
    public class ConfigurationController: BaseApiController
    {

        private readonly IConfigurationLogic _configurationLogic;

        public ConfigurationController(IConfigurationLogic configurationLogic)
        {
            _configurationLogic = configurationLogic;
        }

        [AllowAnonymous]
        [Route("getall")]
        [HttpGet]
        public List<ConfigurationModels.ListViewConfigurationModel> GetAll()
        {
            var items = _configurationLogic.GetAll();

            var results = AutoMapper.Mapper.Map<List<ConfigurationModels.ListViewConfigurationModel>>(items);

            return results;
        } 
    }
}