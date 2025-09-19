package com.teks.emp.entity;

import jakarta.persistence.*;

@Entity
public class Employees {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column
	private String name;
	@Column
	private String email;
	@Column
	private String role;
	@Column
	private double salary;
	
	public Employees() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Employees(int id, String name, String email, String role, double salary) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.role = role;
		this.salary = salary;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public double getSalary() {
		return salary;
	}

	public void setSalary(double salary) {
		this.salary = salary;
	}

	@Override
	public String toString() {
		return "id:" + id + ", name:" + name + ", email:" + email + ", role:" + role + ", salary:" + salary;
	}
	
	
	

}
