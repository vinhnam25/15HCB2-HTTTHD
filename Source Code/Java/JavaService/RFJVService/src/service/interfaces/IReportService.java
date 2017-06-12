package service.interfaces;

import java.util.List;

import backend.entities.ReportData;

public interface IReportService<T> extends IGenericService<T> {

	public List<ReportData> GetDataReport(String json) throws Exception;
}
