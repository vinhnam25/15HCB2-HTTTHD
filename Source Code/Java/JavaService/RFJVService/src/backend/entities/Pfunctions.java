package backend.entities;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Pfunctions {
	
	private int id;
	private String name;
	private int role;
	
	public Pfunctions() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Pfunctions(int id, String name, int role) {
		super();
		this.id = id;
		this.name = name;
		this.role = role;
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

	@XmlElement
	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}
	
	
}
