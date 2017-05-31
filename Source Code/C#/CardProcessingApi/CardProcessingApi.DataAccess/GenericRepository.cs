using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using CardProcessingApi.Data;
using EntityFramework.Extensions;

namespace CardProcessingApi.DataAccess
{
    public class GenericRepository<T> : IGenericRepository<T> where T : BaseEntity
    {
        private readonly DbContext _context;
        private IDbSet<T> _dbset;

        public GenericRepository(DbContext context)
        {
            _context = context;
            _dbset = context.Set<T>();
        }

        public T GetById(object id)
        {
            return _dbset.Find(id);
        }

        public IEnumerable<T> GetAll()
        {
            return _dbset.AsEnumerable<T>();
        }

        IQueryable<T> IGenericRepository<T>.TableTracking
        {
            get
            {
                return _dbset;
            }
        }

        IQueryable<T> IGenericRepository<T>.TableNoTracking
        {
            get { return _dbset.AsNoTracking(); }
        } 

        public IEnumerable<T> FindBy(Expression<Func<T, bool>> predicate)
        {
            IEnumerable<T> query = _dbset.Where(predicate).AsEnumerable();
            return query;
        }

        public T Add(T entity, bool isCommitted = false)
        {
            var added = _dbset.Add(entity);
            if (isCommitted)
            {
                this.Save();
            }

            return added;
        }

        public T Delete(T entity, bool isCommitted = false)
        {
            var deleted = _dbset.Remove(entity);
            if (isCommitted)
            {
                this.Save();
            }

            return deleted;
        }

        public void Update(T entity, bool isCommited = false)
        {
            _context.Entry(entity).State = System.Data.Entity.EntityState.Modified;
            if (isCommited)
            {
                this.Save();
            }
        }

        /// <summary>
        /// Bulk delete entities
        /// </summary>
        /// <param name="filterExpression"></param>
        /// <returns></returns>
        public virtual int BulkDelete(Expression<Func<T, bool>> filterExpression)
        {
            return _context.Set<T>().Where(filterExpression).Delete();
        }

        /// <summary>
        /// Bulk update entities
        /// </summary>
        /// <param name="filterExpression"></param>
        /// <param name="updateExpression"></param>
        public virtual int BulkUpdate(Expression<Func<T, bool>> filterExpression,
            Expression<Func<T, T>> updateExpression)
        {
            return _context.Set<T>().Where(filterExpression).Update(updateExpression);
        }

        public void Save()
        {
            _context.SaveChanges();
        }
    }
}
