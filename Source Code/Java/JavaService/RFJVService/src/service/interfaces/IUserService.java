package service.interfaces;

import backend.entities.User;

public interface IUserService<T> extends IGenericService<T> {

	 public User checklogin(String jsondata) throws Exception;
	 public User checkSessionLogin(String jsondata) throws Exception;
	 public boolean checkLogout(String jsondata) throws Exception;
	 
	 public Boolean checkChangePaswword(String jsondata) throws Exception;
}
