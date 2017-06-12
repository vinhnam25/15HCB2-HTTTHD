package service.object;

import java.util.List;

import org.codehaus.jettison.json.JSONObject;

import backend.dal.ReportDAL;
import backend.entities.ReportData;
import service.interfaces.IReportService;

public class ReportService implements IReportService<ReportData>{

	@Override
	public int create(String jsondata) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(String jsondata) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String jsondata) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ReportData get(String jsondata) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ReportData> getall() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ReportData> GetDataReport(String json) throws Exception {
		// TODO Auto-generated method stub
		JSONObject jsn = new JSONObject(json);
		
		int view = jsn.getInt("view");
		int loai = jsn.getInt("loai");
		String fromDate = jsn.getString("fromdate");
		String toDate = jsn.getString("todate");
		int month = jsn.getInt("month");
		int year = jsn.getInt("year");
		int quy = jsn.getInt("quy");
		
		return ReportDAL.getData(view, loai, fromDate, toDate, month, year, quy);
	}


}
