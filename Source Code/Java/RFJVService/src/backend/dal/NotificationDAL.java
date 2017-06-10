package backend.dal;


import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.xml.bind.annotation.XmlRootElement;

import backend.config.DBContext;
import backend.entities.Notification;
import backend.entities.Notification_From;
import backend.entities.Notification_list_sent;
import backend.entities.User;
import backend.helpers.JavaHelpers;

public class NotificationDAL {

	private static Connection conn = DBContext.getConnect();
	
	
	
	public static List<Notification_From> getinboxbytoken(String token)
	{
		Notification_From td = null;
		List<Notification_From> list = new ArrayList<Notification_From>();
		try
		{
			String sql = "{call sp_GetNotification_inbox(?)}";
			CallableStatement pre = conn.prepareCall(sql);
            
            pre.setString(1, token);
	        
	        ResultSet rs = pre.executeQuery();
	        
	        while(rs.next())
	        {
	        	td = new Notification_From();
	        	DateFormat df = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
	        	
	        	
	        	
	            td.setNotificationId(rs.getInt("NotificationId"));
	            
	            String StringtDate = df.format(rs.getTime("NotificationTime"));
	            td.setNotificationTime(StringtDate);
	            td.setFromMerchant(rs.getInt("FromMerchant"));
	            td.setFromAgent(rs.getInt("FromAgent"));
	            td.setFromMaster(rs.getInt("FromMaster"));
	            td.setToMerchant(rs.getInt("ToMerchant"));
	            td.setToAgent(rs.getInt("ToAgent"));
	            td.setToMaster(rs.getInt("ToMaster"));
	            td.setMessage(rs.getString("Message"));
	            td.setIsSeen(rs.getInt("IsSeen"));
	            td.setSenttFrom(rs.getString("SentFrom"));
	            list.add(td);
	        }
	     
	        return list;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return list;
		}

	}
	public static void seennotibynotid(String id)
	{
		try
		{
			String sql = "{call sp_SeenNotification(?)}";
			CallableStatement pre = conn.prepareCall(sql);
            
            pre.setString(1, id);
	        
	        pre.executeUpdate(); //chay store ko ra cai bang, ma nhet no zo cai result set no bao loi 
	        
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}

	}
	public static int addnotification(String type,String from, String to, String mess)
	{

		try
		{
			String sql = "{call sp_AddNotification(?,?,?,?)}";
			CallableStatement pre = conn.prepareCall(sql);
            
            pre.setString(1, type);
            pre.setString(2, from);
            pre.setString(3, to);
            pre.setString(4, mess);
	        
	        ResultSet rs = pre.executeQuery();
	        
	        if(rs.next())
	        {
	        	return rs.getInt("RES");
	        }
	     
	        return 0;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return 0;
		}

	}
	public static  List<Notification_list_sent> getlistforsentnotification(String roleid)
	{
		Notification_list_sent td = null;
		List<Notification_list_sent> list = new ArrayList<Notification_list_sent>();
		try
		{
			
			String sql = "{call sp_Get_List_Sent_Notification(?)}";
			CallableStatement pre = conn.prepareCall(sql);
            
            pre.setString(1, roleid);
	        
	        ResultSet rs = pre.executeQuery();
	        
	        while(rs.next())
	        {
	        	td = new Notification_list_sent();	       	
	           	            
	            td.setType(rs.getInt("Type"));
	            td.setId(rs.getInt("Id"));
	            td.setName(rs.getString("Name"));
	            list.add(td);
	        }
	     
	        return list;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return list;
		}

	}
	
	
}

