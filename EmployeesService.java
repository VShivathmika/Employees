package com.teks.emp.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teks.emp.entity.Employees;
import com.teks.emp.reposistory.EmployeesReposistory;

@Service
public class EmployeesService {

	@Autowired
	private EmployeesReposistory repo;

	public void addEmployee(Employees emp) {
		repo.save(emp);

	}

	public void updateEmployee(Employees emp) {
//Employees e=		repo.findById(emp.getId()).get();
		repo.save(emp);

	}

	public void deleteEmployee(int id) {
		repo.deleteById(id);

	}
	public Employees getEmployeeById(int id) {
	Employees emp =	repo.findById(id).get();
		return emp;

	}
	public List<Employees> getAllEmployees() {
		return repo.findAll();

	}




}
