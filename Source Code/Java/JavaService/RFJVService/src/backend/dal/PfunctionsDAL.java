package backend.dal;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import backend.config.DBContext;
import backend.entities.Pfunctions;

public class PfunctionsDAL {

	private static Connection conn = DBContext.getConnect();
	
	public static List<Pfunctions> getListFunction(String token)
	{
		List<Pfunctions> list = new ArrayList<Pfunctions>();
		
		try
		{
			String sql = "{call sp_GetFunctionByRole(?)}";
			CallableStatement pre = conn.prepareCall(sql);            
            pre.setString(1, token);
	        
	        ResultSet rs = pre.executeQuery();
	        
	        while(rs.next())
	        {
	        	Pfunctions td = new Pfunctions();
	            
	            td.setId(rs.getInt("ID"));
	            td.setName(rs.getString("Name"));
	            td.setId(rs.getInt("RoleId"));
	            
	            list.add(td);
	        }
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
		
		return list;
	}
}
