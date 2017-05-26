package service.object;

import java.util.List;

import service.interfaces.*;
import backend.dal.MerchantDAL;
import backend.entities.*;

public class MerchantService implements IMerchantService<Merchant>{

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
	public Merchant get(String jsondata) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Merchant> getall() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Merchant GetDetail(int id) throws Exception {
		// TODO Auto-generated method stub
		return MerchantDAL.GetDetail(id);
	}

	
}
