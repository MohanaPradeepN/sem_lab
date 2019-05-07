package com.kce.model;

import com.kce.user.model.Column;

@Entity
public class login {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "user")
	@SequenceGenerator(name = "user", sequenceName = "user_id_seq")
	private int userid;
	@Column(columnDefinition = "VARCHAR(25)")
	private String userName;
	@Column(columnDefinition = "VARCHAR(25)")
	private String password;
	public int getuserId() {
		return userId;
	}
	public void setuserId(int userId) {
		this.userId = userId;
	}
	public int getuserName() {
		return userName;
	}
	public void setuserName(int userName) {
		this.userName = userName;
	}
	public int getpassword() {
		return password;
	}
	public void setpassword(int password) {
		this.password = password;
	}
}
