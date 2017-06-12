package service.export;
import java.util.List;

import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.GenericEntity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import backend.entities.*;
import service.config.ResponseConfig;
import service.object.AgentService;

@Path("agent")
public class AgentRestful {
	@POST
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/getagentbyuserid")
	public Response GetAgentByUserId(String jsondata)
	{
		try
		{
			AgentService as = new AgentService();
			Agent us = as.GetAgentByUserId(jsondata);
					
			if(us != null)
				return ResponseConfig.OK(us);
			else
				return ResponseConfig.NOT_FOUND();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return ResponseConfig.SERVER_ERROR();
		}
	} 
	
	@POST
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/listmerchantmanage")
	public Response GetListMerchant_AgentManager(String jsondata)
	{
		try
		{
			System.out.println(jsondata);
			AgentService as = new AgentService();
			List<Merchant> list = as.GetListMerchant_AgentManager(jsondata);
					
			if(list != null)
				return ResponseConfig.OK(new GenericEntity<List<Merchant>>(list) {});
			else
				return ResponseConfig.NOT_FOUND();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return ResponseConfig.SERVER_ERROR();
		}
	} 
}
