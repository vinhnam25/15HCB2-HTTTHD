package service.interfaces;

import backend.entities.*;

public interface IMerchantService<T> extends IGenericService<T> {

	public Merchant GetDetail(int id) throws Exception;
}
