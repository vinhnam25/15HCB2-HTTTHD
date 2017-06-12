using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace CardProcessingApi.DataAccess
{
    public static class DataExtensions
    {
        public static IQueryable<T> IncludeTable<T, TProperty>(this IQueryable<T> query,
    Expression<Func<T, TProperty>> path)
        {
            return query.Include(path);
        }
    }
}
