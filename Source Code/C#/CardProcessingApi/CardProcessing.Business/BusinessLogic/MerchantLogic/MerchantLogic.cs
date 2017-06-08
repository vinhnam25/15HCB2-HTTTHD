using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using CardProcessingApi.Data;
using CardProcessingApi.DataAccess;

namespace CardProcessing.Business.BusinessLogic.MerchantLogic
{
    public class MerchantLogic: IMerchantLogic
    {
        private readonly IGenericRepository<Merchant> _merchantRepository;
        private readonly IUnitOfWork _unitOfWork;

        public MerchantLogic(IGenericRepository<Merchant> merchantRepository, IUnitOfWork unitOfWork)
        {
            this._merchantRepository = merchantRepository;
            _unitOfWork = unitOfWork;
        }

        public Merchant GetMerchantById(int merchanttId)
        {
            return _merchantRepository.TableTracking.FirstOrDefault(c => c.MerchantId == merchanttId);
        }

        public List<Merchant> GetAll()
        {
            return _merchantRepository.TableNoTracking.IncludeTable(c => c.District).IncludeTable(c => c.Province).ToList();
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
    }
}
