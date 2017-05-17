using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using CardProcessingApi.Data;

namespace CardProcessingApi.DataAccess
{
    public interface IGenericRepository<T> where T: BaseEntity
    {
        T GetById(object id);
        IEnumerable<T> GetAll();
        IQueryable<T> GetTableNoTracking();
        IQueryable<T> GetTable();
        IEnumerable<T> FindBy(Expression<Func<T, bool>> predicate);
        int BulkDelete(Expression<Func<T, bool>> filterExpression);
        int BulkUpdate(Expression<Func<T, bool>> filterExpression, Expression<Func<T, T>> updateExpression);
        T Add(T entity, bool isCommitted = false);
        T Delete(T entity, bool isCommitted = false);
        void Update(T entity, bool isCommitted = false);
        void Save();
    }
}
