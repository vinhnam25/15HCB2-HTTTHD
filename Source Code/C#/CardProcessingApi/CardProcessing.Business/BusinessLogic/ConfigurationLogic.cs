using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CardProcessingApi.Data;
using CardProcessingApi.DataAccess;

namespace CardProcessing.Business.BusinessLogic
{
    public class ConfigurationLogic: IConfigurationLogic
    {
        private readonly IGenericRepository<Configuration> _configurationRepo;

        public ConfigurationLogic(IGenericRepository<Configuration> configurationRepo)
        {
            _configurationRepo = configurationRepo;
        }

        public List<Configuration> GetAll()
        {
            var items = _configurationRepo.GetAll();
            return items.ToList();
        }
    }
}
