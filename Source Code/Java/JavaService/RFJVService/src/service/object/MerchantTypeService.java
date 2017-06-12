package service.object;

import java.util.List;

import backend.dal.OtherDAL;
import backend.entities.MerchantType;
import service.interfaces.IOtherService;

public class MerchantTypeService implements IOtherService<MerchantType> {

	@Override
	public int create(String jsondata) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(String jsondata) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String jsondata) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MerchantType get(String jsondata) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MerchantType> getall() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MerchantType> getDataByAction(int action) throws Exception {
		// TODO Auto-generated method stub
		return OtherDAL.GetAllMerchantType(action);
	}
	
}
