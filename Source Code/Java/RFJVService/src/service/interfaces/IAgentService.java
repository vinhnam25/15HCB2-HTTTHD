package service.interfaces;

import java.util.List;

import backend.entities.Agent;
import backend.entities.Merchant;

public interface IAgentService<T> extends IGenericService<T> {

	public Agent GetAgentByUserId(String jsondata) throws Exception;
	public List<Merchant> GetListMerchant_AgentManager(String jsondata) throws Exception;
}
