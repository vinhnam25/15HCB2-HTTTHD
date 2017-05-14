package service;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.GenericEntity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.codehaus.jettison.json.JSONObject;

import dal.*;
import entities.*;

@Path("user")
public class UserRestful {

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/getlistuser")
	public Response getListUser()
	{
		List<User> list = UserDAL.getListUser();
				
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
			JSONObject jo = new JSONObject(jsondata);
			String user = jo.getString("username");
			String pass = jo.getString("password");
			User us = UserDAL.checkLogin(user, pass);
					
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
			JSONObject jo = new JSONObject(jsondata);
			String token = jo.getString("token");
			User us = UserDAL.checkSessionLogin(token);
					
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
			JSONObject jo = new JSONObject(jsondata);
			String token = jo.getString("token");
			boolean us = UserDAL.checkLogout(token);
					
			if(us)
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
