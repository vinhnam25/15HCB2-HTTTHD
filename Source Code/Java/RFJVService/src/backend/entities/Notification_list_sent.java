package backend.entities;

import javax.xml.bind.annotation.XmlRootElement;

import com.sun.xml.internal.txw2.annotation.XmlElement;

@XmlRootElement
public class Notification_list_sent {

	@XmlElement
	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	@XmlElement
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@XmlElement
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	private int type;
	private int id;
	private String name;

	
	public Notification_list_sent() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Notification_list_sent(int type_, int id_, String name_) {
		super();
		this.type = type_;
		this.id = id_;
		this.name = name_;
	}
}
