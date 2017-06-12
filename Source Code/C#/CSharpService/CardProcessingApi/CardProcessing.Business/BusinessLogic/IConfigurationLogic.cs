using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CardProcessingApi.Data;

namespace CardProcessing.Business.BusinessLogic
{
    public interface IConfigurationLogic
    {
        List<Configuration> GetAll();
    }
}
