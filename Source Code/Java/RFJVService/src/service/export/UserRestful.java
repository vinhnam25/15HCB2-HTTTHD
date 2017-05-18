package service.export;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.GenericEntity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import service.config.ResponseConfig;
import service.object.UserService;
import backend.entities.*;

@Path("user")
public class UserRestful {
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/getlistuser")
	public Response getListUser() throws Exception
	{
		List<User> list = UserService.getInstance().getall();
				
		if(list != null)
			return ResponseConfig.OK(new GenericEntity<List<User>>(list) {});
		else
			return ResponseConfig.SERVER_ERROR();
	} 
	
	@POST
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/checklogin")
	public Response checkLogin(String jsondata)
	{
		try
		{
			User us = UserService.getInstance().checklogin(jsondata);
					
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
	@Path("/csl")
	public Response checkSessionLogin(String jsondata)
	{
		try
		{
			User us = UserService.getInstance().checkSessionLogin(jsondata);
					
			if(us != null)
				return ResponseConfig.OK(us);
			else
				return ResponseConfig.OK("0");
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return ResponseConfig.SERVER_ERROR();
		}
	} 
	
	@POST
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/checklogout")
	public Response checkLogout(String jsondata)
	{
		try
		{			
			boolean kq = UserService.getInstance().checkLogout(jsondata);
					
			if(kq)
				return ResponseConfig.OK("1");
			else
				return ResponseConfig.OK("0");
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return ResponseConfig.SERVER_ERROR();
		}
	} 
}
