﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ShopWaterPumpApi.Exceptions
{
    public class NotFoundOperationException : Exception
    {
        public NotFoundOperationException(string message)
            : base(message)
        {
        }
    }
}
