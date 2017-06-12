package backend.dal;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import backend.config.DBContext;
import backend.entities.ReportData;

public class ReportDAL {

	private static Connection conn = DBContext.getConnect();
	
	public static List<ReportData> getData(int view, int loai, String fromDate, String toDate, int month, int year, int quy)
	{
		List<ReportData> list = new ArrayList<ReportData>();
		try
		{
			String sql = "{call sp_BaoCaoThongKe(?,?,?,?,?,?,?)}";
			CallableStatement pre = conn.prepareCall(sql);  
			
			pre.setInt(1, view);
			pre.setInt(2, loai);
            pre.setString(3, fromDate);
            pre.setString(4, toDate);  
            pre.setInt(5, month);
			pre.setInt(6, year);
			pre.setInt(7, quy);
	        
	        ResultSet rs = pre.executeQuery();
	        
	        while(rs.next())
	        {
	        	ReportData td = new ReportData();
	            
	            td.setTransactionId(rs.getString("TransactionId"));
	            td.setMerchantName(rs.getString("MerchantName"));
	            td.setTransactionAmount(rs.getDouble("TransactionAmount"));
	            td.setCardType(rs.getString("CardType"));
	            td.setFileSource(rs.getString("FileSource"));
	            td.setTransactionDate(rs.getString("TransactionDate"));
	            td.setQuantity(rs.getInt("ProductAmount"));
	            td.setTransactionType(rs.getString("TransactionTypeId"));
	            td.setTransactionTypeName(rs.getString("TransactionTypeName"));
	            
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
