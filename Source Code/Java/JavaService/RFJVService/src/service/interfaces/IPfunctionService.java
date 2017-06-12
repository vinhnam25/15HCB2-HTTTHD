package service.interfaces;

import java.util.List;

import backend.entities.Pfunctions;

public interface IPfunctionService {
	public List<Pfunctions> getListFunction(String token) throws Exception;
}
