package service.object;

import java.util.List;

import org.codehaus.jettison.json.JSONObject;

import backend.dal.AgentDAL;
import backend.entities.Agent;
import backend.entities.Merchant;
import service.interfaces.IAgentService;


public class AgentService implements IAgentService<Agent> {

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
	public Agent get(String jsondata) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Agent> getall() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Agent GetAgentByUserId(String jsondata) throws Exception {
		// TODO Auto-generated method stub
		JSONObject jo = new JSONObject(jsondata);
		String userid = jo.getString("userid");			
		Agent us = AgentDAL.GetAgentByUserId(userid);
		return us;
	}

	@Override
	public List<Merchant> GetListMerchant_AgentManager(String jsondata)
			throws Exception {
		// TODO Auto-generated method stub
		JSONObject jo = new JSONObject(jsondata);
		String token = jo.getString("token");			
		List<Merchant> list = AgentDAL.GetListMerchant_AgentManager(token);
		return list;
	}

}
