using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AutoMapper;

namespace CardProcessingApi.Core.Paging
{
    public class PagedListConverter<TIn, TOut> : ITypeConverter<IPagedList<TIn>, IPagedList<TOut>>
    {

        public IPagedList<TOut> Convert(IPagedList<TIn> source, IPagedList<TOut> destination, ResolutionContext context)
        {
            var mapped = Mapper.Map<IList<TOut>>(source);
            return new PagedList<TOut>(mapped, source.PageIndex, source.PageSize);
        }
    }
}
