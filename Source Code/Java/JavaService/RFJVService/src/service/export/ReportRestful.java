package service.export;

import java.util.List;

import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.GenericEntity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import service.config.ResponseConfig;
import service.object.ReportService;
import backend.entities.ReportData;

@Path("report")
public class ReportRestful {

	@POST
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/data")
	public Response getData(String json)
	{
		try
		{
			ReportService as = new ReportService();
			List<ReportData> us = as.GetDataReport(json);
			
			//GenericEntity<List<Merchant>> data =  new GenericEntity<List<Merchant>>(us) {};

			if(us != null)
				return ResponseConfig.OK(new GenericEntity<List<ReportData>>(us) {});
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
