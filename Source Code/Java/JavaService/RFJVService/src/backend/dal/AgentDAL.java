package backend.dal;


import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;


import java.util.ArrayList;
import java.util.List;

import backend.config.DBContext;
import backend.entities.Agent;
import backend.entities.Merchant;


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
	
	public static List<Merchant> GetListMerchant_AgentManager(String token)
	{
		List<Merchant> list = new ArrayList<Merchant>();
		try
		{
			
			String sql = "{call sp_GetListMerchant_AgentManager(?)}";
			CallableStatement pre = conn.prepareCall(sql);            
            pre.setString(1, token);
	        
	        ResultSet rs = pre.executeQuery();
	        
	        while(rs.next())
	        {
	        	if (rs.getInt("err") == 0)
	        	{
	        		Merchant m = new Merchant();
		            
		            m.setMerchantId(rs.getInt("MerchantId"));
		            m.setMerchantName(rs.getString("MerchantName"));
		            m.setPhone(rs.getString("Phone"));
		            m.setStatus(rs.getString("Status"));
		            m.setAddress1(rs.getString("Address1"));
		            m.setEmail(rs.getString("Email"));
		            
		            list.add(m);
	        	}
	        	      
	        }
		}
		catch(Exception ex)
		{
			//System.out.println("exc");
			ex.printStackTrace();
			
		}
		
		return list;

	}
	
	
}
