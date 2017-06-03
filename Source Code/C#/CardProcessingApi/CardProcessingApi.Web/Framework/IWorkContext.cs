using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CardProcessingApi.Core;

namespace CardProcessingApi.Web.Framework
{
    public interface IWorkContext
    {
        /// <summary>
        /// Gets or sets working culture.
        /// </summary>
        CultureInfo WorkingCulture { get; set; }

        /// <summary>
        /// Gets or sets current working user.
        /// </summary>
        WorkingUser User { get; set; }
    }
}
