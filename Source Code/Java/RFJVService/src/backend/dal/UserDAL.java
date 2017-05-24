package backend.dal;


import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import backend.config.DBContext;
import backend.entities.User;
import backend.helpers.JavaHelpers;

public class UserDAL {

	private static Connection conn = DBContext.getConnect();
	
	public static List<User> getListUser()
	{
		List<User> list = new ArrayList<User>();
		try
		{
			String sql = "select * from [User]";
	        Statement st = conn.createStatement();
	        
	        ResultSet rs = st.executeQuery(sql);
	        
	        while(rs.next())
	        {
	        	User td = new User();
	            
	            td.setUserid(rs.getInt("UserId"));
	            td.setUsername(rs.getString("UserName"));
	            td.setPassword(rs.getString("Password"));
	            td.setFullname(rs.getString("FullName"));
	            td.setPhone(rs.getString("Phone"));
	            td.setRoleid(rs.getInt("RoleId"));
	            td.setIsactive(rs.getInt("IsActive"));
	            
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
	
	public static User checkLogin(String user, String pass)
	{
		User td = null;
		try
		{
			String sql = "{call sp_CheckLogin(?,?)}";
			CallableStatement pre = conn.prepareCall(sql);
            
            pre.setString(1, user);
            pre.setString(2, JavaHelpers.getMD5(pass));
	        
	        ResultSet rs = pre.executeQuery();
	        
	        if(rs.next())
	        {
	        	td = new User();
	            
	            td.setFullname(rs.getString("FullName"));
	            td.setRoleid(rs.getInt("RoleId"));
	            td.setToken(rs.getString("TokenStr"));
	            td.setUserid(rs.getInt("UserId"));
	        }
	     
	        return td;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return td;
		}

	}
	
	public static User checkSessionLogin(String token)
	{
		User td = null;
		try
		{
			String sql = "{call sp_CheckSessionLogin(?)}";
			CallableStatement pre = conn.prepareCall(sql);            
            pre.setString(1, token);
	        
	        ResultSet rs = pre.executeQuery();
	        
	        if(rs.next())
	        {
	        	if (rs.getInt("RES") > 0)
	        	{
	        		td = new User();
		            
		            td.setFullname(rs.getString("FullName"));
		            td.setRoleid(rs.getInt("RoleId"));   
	        	}
	        	      
	        }
	     
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}

		return td;
	}
	
	public static boolean checkLogout(String token)
	{
		try
		{
			String sql = "{call sp_CheckLogout(?)}";
			CallableStatement pre = conn.prepareCall(sql);         
            pre.setString(1, token);
	        
	        int rs = pre.executeUpdate();      
	     
	        if(rs > 0) return true;
	        else return false;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return false;
		}

	}
}
