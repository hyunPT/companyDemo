package dto;

import java.io.Serializable;

public class Member implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private String id; 
	private String password;
	private String email;
	private String name;
	private String phone;
	private String addres;
	private String department; // 부서
	private String rank; // 직급
	private int salary; // 연봉
	private String regdate; //입사일
	
	public Member() {}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddres() {
		return addres;
	}

	public void setAddres(String addres) {
		this.addres = addres;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getRank() {
		return rank;
	}

	public void setRank(String rank) {
		this.rank = rank;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public Member(String id,String password,String email,String name,String phone,String address,String department,String rank, int salary,String regdate) {
		this.id = id;
		this.password = password;
		this.email = email;
		this.phone = phone;
		this.addres = address;
		this.department = department;
		this.rank = rank;
		this.salary = salary;
		this.regdate = regdate;
	}
	
	
	
}
