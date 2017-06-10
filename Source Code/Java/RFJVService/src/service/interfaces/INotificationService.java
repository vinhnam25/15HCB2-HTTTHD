package service.interfaces;
import java.util.List;

import backend.entities.Notification;
import backend.entities.Notification_From;
import backend.entities.Notification_list_sent;

public interface INotificationService<T> extends IGenericService<T> {
	 public List<Notification_From> getinboxbytoken(String jsondata) throws Exception;
	 public void seennotificationbynotiid(String jsondata) throws Exception ;
	 public int addnotification(String jsondata) throws Exception;
	 public List<Notification_list_sent> getlistsentnotification(String jsondata) throws Exception;
}