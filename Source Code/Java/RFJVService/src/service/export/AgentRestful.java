package service.export;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.GenericEntity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.codehaus.jackson.map.ser.AnyGetterWriter;
import org.codehaus.jettison.json.JSONObject;

import backend.entities.*;
import service.config.ResponseConfig;
import backend.dal.*;;

@Path("agent")
public class AgentRestful {
	@POST
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/getagentbyuserid")
	public Response GetAgentByUserId(String jsondata)
	{
		try
		{
			
			JSONObject jo = new JSONObject(jsondata);
			String userid = jo.getString("userid");			
			Agent us = AgentDAL.GetAgentByUserId(userid);
					
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
}
