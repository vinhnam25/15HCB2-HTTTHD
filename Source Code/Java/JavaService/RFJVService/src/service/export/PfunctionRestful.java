package service.export;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.GenericEntity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import backend.entities.Pfunctions;
import service.config.ResponseConfig;
import service.object.PfunctionService;

@Path("function")
public class PfunctionRestful {
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/list/{token}")
	public Response GetDataToView(@PathParam("token") String token)
	{
		try
		{
			PfunctionService pf = new PfunctionService();
			List<Pfunctions> us = pf.getListFunction(token);
			
			if(us != null)
				return ResponseConfig.OK(new GenericEntity<List<Pfunctions>>(us) {});
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
