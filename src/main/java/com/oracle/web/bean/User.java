package com.oracle.web.bean;

import java.util.Date;

public class User {

	private Integer id;

	private String name;

	private String username;

	private String touxiang;

	private String password;

	private String phone;

	private Date time;
	
	

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}



	public User(Integer id, String name, String username, String touxiang, String password, String phone, Date time) {
		super();
		this.id = id;
		this.name = name;
		this.username = username;
		this.touxiang = touxiang;
		this.password = password;
		this.phone = phone;
		this.time = time;
	}



	public Integer getId() {
		return id;
	}



	public void setId(Integer id) {
		this.id = id;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public String getTouxiang() {
		return touxiang;
	}



	public void setTouxiang(String touxiang) {
		this.touxiang = touxiang;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public Date getTime() {
		return time;
	}



	public void setTime(Date time) {
		this.time = time;
	}



	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", username=" + username + ", touxiang=" + touxiang + ", password="
				+ password + ", phone=" + phone + ", time=" + time + "]";
	}

	
}