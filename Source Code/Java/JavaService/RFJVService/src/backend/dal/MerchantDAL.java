package backend.dal;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import backend.config.DBContext;
import backend.entities.Merchant;

public class MerchantDAL {

	private static Connection conn = DBContext.getConnect();
	
	public static Merchant GetDetail(int id)
	{
		Merchant td = new Merchant();
		try
		{
			
			String sql = "{call sp_XemChiTiet_Merchant(?)}";
			CallableStatement pre = conn.prepareCall(sql);            
            pre.setInt(1, id);
	        
	        ResultSet rs = pre.executeQuery();
	        
	        if (rs.next())
        	{
         
	            td.setMerchantId(rs.getInt("MerchantId"));
	            td.setMerchantName(rs.getString("MerchantName"));
	            td.setPhone(rs.getString("Phone"));
	            td.setIsActive(rs.getInt("IsActive"));
	            td.setAddress1(rs.getString("Address1"));
	            td.setAddress2(rs.getString("Address2"));
	            td.setAddress3(rs.getString("Address3"));
	            td.setProvinceId(rs.getInt("ProvinceId"));
	            td.setDistrictId(rs.getInt("DistrictId"));
	            td.setProvinceName(rs.getString("ProvinceName"));
	            td.setDistrictName(rs.getString("DistrictName"));
	            td.setZip(rs.getString("Zip"));
	            td.setEmail(rs.getString("Email"));
	            td.setTypeId(rs.getInt("MerchantType"));
	            td.setTypeName(rs.getString("TypeName"));
	            td.setFirtActiveDate(rs.getDate("FirstActiveDate"));
	            td.setApprovalDate(rs.getDate("ApprovalDate"));
	            td.setLastActiveDate(rs.getDate("LastActiveDate"));
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
	
	public static List<Merchant> GetListMerchantByView(int action, int value)
	{
		List<Merchant> list = new ArrayList<Merchant>();
		try
		{
			
			String sql = "{call sp_GetListMerchantByView(?, ?)}";
			CallableStatement pre = conn.prepareCall(sql);            
            pre.setInt(1, action);
            pre.setInt(2, value);
            
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
