using System.Collections.Generic;
using System.Linq;
using AutoMapper;
using CardProcessingApi.Data;
using CardProcessingApi.Web.Models;

namespace CardProcessingApi.Web.Framework.Extension
{
    public static class MappingExtension
    {
        public static IList<TModel> ToModelList<TEntity, TModel>(this ICollection<TEntity> entityList)
            where TEntity: BaseEntity
            where TModel: BaseModel
        {
            return entityList.Select(x => x.ToModel<TModel>()).ToList();
        }

        public static TModel ToModel<TModel>(this BaseEntity entity, TModel destModel = null)
            where TModel: BaseModel
        {
            if (entity == null)
                return default(TModel);

            if (destModel == null)
                return Mapper.Map(entity, entity.GetType(), typeof(TModel)) as TModel;

            return Mapper.Map(entity, destModel, entity.GetType(), typeof(TModel)) as TModel;
        }
    }
}
