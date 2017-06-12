package service.export;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.GenericEntity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import service.config.ResponseConfig;
import service.object.MerchantTypeService;
import backend.entities.MerchantType;

@Path("other")
public class OtherRestful {

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/data/{type}")
	public Response GetDataToView(@PathParam("type") int type)
	{
		try
		{
			MerchantTypeService as = new MerchantTypeService();
			List<MerchantType> us = as.getDataByAction(type);
					
			if(us != null)
				return ResponseConfig.OK(new GenericEntity<List<MerchantType>>(us) {});
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
