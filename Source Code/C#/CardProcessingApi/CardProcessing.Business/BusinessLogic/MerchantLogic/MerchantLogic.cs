using CardProcessingApi.Data;
using CardProcessingApi.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CardProcessing.Business.BusinessLogic.MerchantLogic
{
    public class MerchantLogic : IMerchantLogic
    {
        private readonly IGenericRepository<Merchant> _merchantRepository;
        private readonly IGenericRepository<RegionMapping> _regionRepository;
        private readonly IUnitOfWork _unitOfWork;

        public MerchantLogic(IGenericRepository<Merchant> merchantRepository, IGenericRepository<RegionMapping> regionRepository, IUnitOfWork unitOfWork)
        {
            this._merchantRepository = merchantRepository;
            this._regionRepository = regionRepository;
            _unitOfWork = unitOfWork;
        }
        public Merchant GetMerchantById(int Id)
        {
            return _merchantRepository.TableNoTracking.IncludeTable(c => c.District)
                                                        .IncludeTable(c => c.Agent)
                                                        .IncludeTable(c => c.Province)
                                                        .IncludeTable(c => c.MerchantType1)
                                                        .FirstOrDefault(c => c.MerchantId == Id);
        }

        public Merchant GetMerchantById_Tracking(int merId)
        {
            return _merchantRepository.TableTracking.FirstOrDefault(c => c.MerchantId == merId);
        }

        public Merchant GetLastestMerchant()
        {
            return _merchantRepository.TableTracking.ToList().OrderByDescending(c => c.MerchantId).First();
        }

        public void Add(Merchant merchant)
        {
            _merchantRepository.Add(merchant);
            _unitOfWork.Commit();
        }

        public void Update(Merchant merchant)
        {
            if (_merchantRepository.GetById(merchant.MerchantId) != null)
            {
                Merchant result = GetMerchantById_Tracking(merchant.MerchantId);
                if (result != null)
                {
                    if (merchant.MerchantName != null)
                        result.MerchantName = merchant.MerchantName;
                    if (merchant.MerchantType != 0)
                        result.MerchantType = merchant.MerchantType;

                    if (merchant.ProvinceId != 0)
                        result.ProvinceId = merchant.ProvinceId;
                    if (merchant.DistrictId != 0)
                        result.DistrictId = merchant.DistrictId;

                    if (merchant.Address1 != null)
                        result.Address1 = merchant.Address1;
                    if (merchant.Address2 != null)
                        result.Address2 = merchant.Address2;
                    if (merchant.Address3 != null)
                        result.Address3 = merchant.Address3;
                    if (merchant.Phone != null)
                        result.Phone = merchant.Phone;
                    if (merchant.Fax != null)
                        result.Fax = merchant.Fax;
                    if (merchant.Zip != null)
                        result.Zip = merchant.Zip;
                    if (merchant.Email != null)
                        result.Email = merchant.Email;

                    if (merchant.AgentId != null)
                        result.AgentId = merchant.AgentId;
                    if (merchant.OwnerId != null)
                        result.OwnerId = merchant.OwnerId;
                    result.IsActive = merchant.IsActive;


                    if (merchant.Status != null)
                        result.Status = merchant.Status;

                }
                _merchantRepository.Update(result);
                _unitOfWork.Commit();
            }
        }
        public void DeleteLastest()
        {

            Merchant result = new Merchant();
            result = GetLastestMerchant();
            if (result != null)
            {
                _merchantRepository.Delete(result);
                _unitOfWork.Commit();
            }
        }
        public void Delete(Merchant mer)
        {
            Merchant result = GetMerchantById_Tracking(mer.MerchantId);
            if (result != null)
            {
                _merchantRepository.Delete(result);
                _unitOfWork.Commit();
            }
        }
        public List<Merchant> GetAll()
        {
            return _merchantRepository.GetAll().ToList();
        }

        public List<Merchant> GetBy(int action, int value)
        {
            if (action == 1)
                return _merchantRepository.GetAll().Where(n => n.MerchantType == value).ToList();

            if (action == 2)
            {
                var ls = _regionRepository.GetAll().Where(n => n.ProvinceId == value).ToList();
                return _merchantRepository.GetAll().Join(ls, a => a.ProvinceId, b => b.ProvinceId, (a, b) => new Merchant
                {
                    MerchantId = a.MerchantId,
                    MerchantName = a.MerchantName,
                    Phone = a.Phone,
                    Email = a.Email,
                    Status = a.Status,
                    Address1 = a.Address1
                }).ToList();
            }

            return null;

        }

        public void UnactivateMerchant(int merchantId)
        {
            var merchant = _merchantRepository.GetById(merchantId);
            merchant.IsActive = false;
            _merchantRepository.Update(merchant);
            _unitOfWork.Commit();
        }

        public void ActivateMerchant(int merchantId)
        {
            var merchant = _merchantRepository.GetById(merchantId);
            merchant.IsActive = true;
            _merchantRepository.Update(merchant);
            _unitOfWork.Commit();
        }

        public List<Merchant> GetMerchantByProvince(int provinceId)
        {
            return _merchantRepository.TableTracking.IncludeTable(c => c.Province).IncludeTable(c => c.District).Where(c => c.ProvinceId == provinceId).ToList();
        }

        public List<Merchant> GetMerchantByDictrict(int dictrictId)
        {
            return _merchantRepository.TableTracking.IncludeTable(c => c.Province).IncludeTable(c => c.District).Where(c => c.DistrictId == dictrictId).ToList();
        }

        public List<Merchant> GetStatusManaged(int type)
        {
            if (type == 0)
            {
                return GetAll();
            }

            if (type == 1)
            {
                return _merchantRepository.GetAll().Where(n => n.AgentId.HasValue == false).ToList();
            }

            return _merchantRepository.GetAll().Where(n => n.AgentId.HasValue == true).ToList();

        }

        public int AddManaged(int MerchantId, int AgentId)
        {
            try
            {
                Merchant merchant = _merchantRepository.GetById(MerchantId);
                merchant.AgentId = AgentId;
                _merchantRepository.Update(merchant);
                _unitOfWork.Commit();

                return 1;
            }
            catch (Exception ex)
            {
                return 0;
            }
        }
    }
}
