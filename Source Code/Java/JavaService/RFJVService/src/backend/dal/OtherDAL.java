package backend.dal;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import backend.config.DBContext;
import backend.entities.MerchantType;

public class OtherDAL {
	
	private static Connection conn = DBContext.getConnect();

	public static List<MerchantType> GetAllMerchantType(int act)
	{
		List<MerchantType> list = new ArrayList<MerchantType>();
		try
		{
			String sql = "{call sp_GetDataToView(?)}";
			CallableStatement pre = conn.prepareCall(sql);            
            pre.setInt(1, act);
	        
	        ResultSet rs = pre.executeQuery();
	        
	        while(rs.next())
	        {
	        	MerchantType td = new MerchantType();
	            
	            td.setId(rs.getInt("TypeId"));
	            td.setName(rs.getString("TypeName"));
	            
	            list.add(td);
	        }
	     
	        return list;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return null;
		}
	}
}
