package com.teks.emp.reposistory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.teks.emp.entity.Employees;

@Repository
public interface EmployeesReposistory  extends JpaRepository<Employees, Integer>{

}
