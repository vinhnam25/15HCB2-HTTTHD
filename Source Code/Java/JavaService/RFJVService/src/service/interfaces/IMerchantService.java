package service.interfaces;

import java.util.List;

import backend.entities.*;

public interface IMerchantService<T> extends IGenericService<T> {

	public Merchant GetDetail(int id) throws Exception;
	public List<Merchant> GetListMerchantByView(String json) throws Exception;
}
