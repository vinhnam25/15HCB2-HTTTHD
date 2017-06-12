package service.export;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.GenericEntity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import backend.entities.Merchant;
import service.config.ResponseConfig;
import service.object.MerchantService;


@Path("merchant")
public class MerchantRestful {

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/detail/{id}")
	public Response GetDetail(@PathParam("id") int merchantid)
	{
		try
		{
			System.out.print(merchantid);
			MerchantService as = new MerchantService();
			Merchant us = as.GetDetail(merchantid);
					
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
	@Path("/getlist")
	public Response GetListMerchantByView(String json)
	{
		try
		{
			MerchantService as = new MerchantService();
			List<Merchant> us = as.GetListMerchantByView(json);
			
			//GenericEntity<List<Merchant>> data =  new GenericEntity<List<Merchant>>(us) {};

			if(us != null)
				return ResponseConfig.OK(new GenericEntity<List<Merchant>>(us) {});
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
