package service.object;

import java.util.List;

import backend.dal.PfunctionsDAL;
import backend.entities.Pfunctions;
import service.interfaces.IPfunctionService;

public class PfunctionService implements IPfunctionService {

	@Override
	public List<Pfunctions> getListFunction(String token) throws Exception {
		// TODO Auto-generated method stub
		return PfunctionsDAL.getListFunction(token);
	}

}
