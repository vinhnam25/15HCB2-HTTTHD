using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CPClient.Core
{
    class ServiceCallException : Exception
    {
        public ServiceCallException()
        {
        }

        public ServiceCallException(string message) : base(message)
        {
        }

        public ServiceCallException(string message, Exception innerException) : base(message, innerException)
        {
        }

        protected ServiceCallException(SerializationInfo info, StreamingContext context) : base(info, context)
        {
        }
    }
}
