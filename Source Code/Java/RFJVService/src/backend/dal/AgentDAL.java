package backend.dal;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;


import backend.config.DBContext;
import backend.entities.Agent;


public class AgentDAL {
	
	private static Connection conn = DBContext.getConnect();
	public static Agent GetAgentByUserId(String userid)
	{
		Agent td = new Agent();
		try
		{
			
			String sql = "select * from [Agent] where OwnerId =" + userid ;
	        Statement st = conn.createStatement();
	        
	        ResultSet rs = st.executeQuery(sql);
	        
	        if(rs.next())
	        {
	            td.setAgentId(rs.getInt("AgentId"));
	            td.setAgentName(rs.getString("AgentName"));
	            td.setProvinceId(rs.getInt("ProvinceId"));
	            td.setDistrictId(rs.getInt("DistrictId"));
	            td.setAddress(rs.getString("Address"));
	            td.setIsActive(rs.getInt("IsActive"));
	            td.setOwnerId(rs.getInt("OwnerId"));
	            td.setPhone(rs.getString("Phone"));
	            td.setFax(rs.getString("Fax"));
	            td.setZip(rs.getString("Zip"));
	            td.setEmail(rs.getString("Email"));	            
	            //System.out.println(td.getAgentName());
	        }
	     
	        return td;
		}
		catch(Exception ex)
		{
			//System.out.println("exc");
			ex.printStackTrace();
			return td;
		}

	}
}
