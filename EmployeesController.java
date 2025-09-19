package com.teks.emp.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.teks.emp.Service.EmployeesService;
import com.teks.emp.entity.Employees;



@Controller

public class EmployeesController {

	@Autowired
	private  EmployeesService service;


	@GetMapping("/")
	public String home() {
		return "home";
	}

	@GetMapping("/employeeform")
	public String form() {
		return "EmployeeForm";
	}

	@PostMapping("/addemp")
	public String save(@ModelAttribute Employees emp) {
		service.addEmployee(emp);
		return "redirect:/getAll";
	}
	
	@GetMapping("/getAll")
	public String allEmployees(Model m) {
		List<Employees> employees = service.getAllEmployees();
		m.addAttribute("employees", employees);
		return "getAllEmployees";
	}
	
	@GetMapping("/get/{id}")
	public String getById(@RequestParam int id ,Model model) {
		Employees emp =	service.getEmployeeById(id);
		model.addAttribute("employees",  emp );
		return "geyEmpById";

	}
	@GetMapping("/edit/{id}")
	public String Edit(@PathVariable int id , Model model) {
		Employees emp =	service.getEmployeeById(id);
		model.addAttribute("Employees",emp);
		return "EditForm";	
	}

	@PostMapping("/edit/update")
	public String update(@ModelAttribute Employees emp) {
		service.updateEmployee(emp);
		return "redirect:/getAll";
	}

	

	@GetMapping("/delete/{id}")
	public String delete(@PathVariable("id") int id) {
		service.deleteEmployee(id);
		return "redirect:/getAll";
	}

	}




