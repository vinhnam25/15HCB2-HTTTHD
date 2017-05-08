package ws;

import entities.*;

import java.util.*;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.GenericEntity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Path("product")
public class ProductRestful {

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/findAll")
	public Response findall()
	{
		ArrayList<Product> list = new ArrayList<Product>();
		
		list.add(new Product("p01","Product 1", 1000, 2));
		list.add(new Product("p02","Product 2", 2000, 4));
		list.add(new Product("p03","Product 3", 3000, 7));
		
		return Response.ok().entity(new GenericEntity<ArrayList<Product>>(list) {})
				.header("Access-Control-Allow-Origin", "*")
				.build();
	} 
}
