using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using CardProcessingApi.Core.Paging;
using CardProcessingApi.Core.Search;
using CardProcessingApi.Data;
using CardProcessingApi.DataAccess;

namespace CardProcessing.Business.BusinessLogic.AgentLogic
{
    public class AgentLogic : IAgentLogic
    {
        private readonly IGenericRepository<Agent> _agentRepository;
        private readonly IUnitOfWork _unitOfWork;


        public AgentLogic(IGenericRepository<Agent> agentRepository, IUnitOfWork unitOfWork)
        {
            this._agentRepository = agentRepository;
            _unitOfWork = unitOfWork;
        }

        public Agent GetAgentById(int agentId)
        {
            return _agentRepository.TableTracking.FirstOrDefault(c => c.AgentId == agentId);
        }

        public void Add(Agent agent)
        {
            _agentRepository.Add(agent);
            _unitOfWork.Commit();
        }

        public void Delete(Agent agent)
        {
            Agent result = GetAgentById(agent.AgentId);
            if (result != null)
            {
                _agentRepository.Delete(result);
                _unitOfWork.Commit();
            }
        }

        public void Update(Agent agent)
        {
            if (_agentRepository.GetById(agent.AgentId) != null)
            {
                Agent result = GetAgentById(agent.AgentId);
                if (result != null)
                {
                    if (agent.AgentName != null)
                        result.AgentName = agent.AgentName;

                    if (agent.ProvinceId != 0)
                        result.ProvinceId = agent.ProvinceId;
                    if (agent.DistrictId != 0)
                        result.DistrictId = agent.DistrictId;

                    if (agent.Address != null)
                        result.Address = agent.Address;
                    if (agent.Phone != null)
                        result.Phone = agent.Phone;
                    if (agent.Fax != null)
                        result.Fax = agent.Fax;
                    if (agent.Zip != null)
                        result.Zip = agent.Zip;
                    if (agent.Email != null)
                        result.Email = agent.Email;

                    if (agent.OwnerId != null)
                        result.OwnerId = agent.OwnerId;
                    result.IsActive = agent.IsActive;

                }
                _agentRepository.Update(result);
                _unitOfWork.Commit();

            }
        }

        public List<Agent> GetAll()
        {
            return _agentRepository.TableNoTracking.IncludeTable(c => c.District).IncludeTable(c => c.Province).ToList();
        }

        public List<Agent> SearchAgent(int id, string name)
        {
            return _agentRepository.GetAll().Where(n => (n.AgentId == id || id == 0) && (n.AgentName.Contains(name) || name == "")).ToList();
        }

        public IList<Agent> SearchAgent(AgentSearchCriteria searchCriteria)
        {
            var query = _agentRepository.TableNoTracking.IncludeTable(c => c.District).IncludeTable(c => c.Province);

            if (!string.IsNullOrEmpty(searchCriteria.Id))
            {
                query = query.Where(c => c.AgentId.ToString() == searchCriteria.Id);
            }

            if (!string.IsNullOrEmpty(searchCriteria.Name))
            {
                query = query.Where(c => c.AgentName == searchCriteria.Name);
            }

            if (!string.IsNullOrEmpty(searchCriteria.District))
            {
                query =
                    query.Where(
                            c =>
                                c.District.DistrictName.Contains(searchCriteria.District) ||
                                c.District.DistrictId.ToString() == searchCriteria.District);
            }

            if (!string.IsNullOrEmpty(searchCriteria.Province))
            {
                query =
                    query.Where(
                        c =>
                            c.Province.ProvinceName.Contains(searchCriteria.Province) ||
                            c.Province.ProvinceId.ToString() == searchCriteria.Province);
            }

            if (searchCriteria.IsActive.HasValue)
            {
                query = query.Where(c => c.IsActive == searchCriteria.IsActive.Value);
            }

            return query.ToList();
        }

        public IPagedList<Agent> SearchAgent(AgentSearchCriteria searchCriteria, PagingFilter pagingFilter)
        {
            var query = this.SearchAgent(searchCriteria);
            var result = new PagedList<Agent>(query, pagingFilter.PageIndex, pagingFilter.PageSize);

            return result;
        }
    }
}
