package cs3220.model;

public class UserEntry {
	static int idSeed = 1;
	private int id;
	private String email;
	private String name;
	private String password;
	
	public UserEntry(String email, String name, String password) {
		this.id = idSeed++;
		this.email = email;
		this.name = name;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
}