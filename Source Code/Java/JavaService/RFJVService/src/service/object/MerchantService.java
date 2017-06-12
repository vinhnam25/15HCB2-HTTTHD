package service.object;

import java.util.List;

import org.codehaus.jettison.json.JSONObject;

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

	@Override
	public List<Merchant> GetListMerchantByView(String json) throws Exception {
		// TODO Auto-generated method stub
		JSONObject js = new JSONObject(json);
		
		int action = js.getInt("action");
		int value= js.getInt("value");
		return MerchantDAL.GetListMerchantByView(action, value);
	}
}
