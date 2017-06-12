package service.interfaces;

import java.util.List;

import backend.entities.MerchantType;

public interface IOtherService<T> extends IGenericService<T> {

	public List<MerchantType> getDataByAction(int action) throws Exception;
}
