package com.parithosh.crud.spring.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.parithosh.crud.spring.data.classes.*;

import com.parithosh.crud.spring.data.classes.Employee;

@Controller
public class EmployeeController {
	
	@Autowired
	EmployeeCrud empcrud;
	
	@GetMapping("/add")
	public String addEmployee(Model model, @RequestParam(value="fname") String fname, @RequestParam(value="lname") String lname, @RequestParam(value="age") int age, @RequestParam(value="salary") float salary) {
		try {
			Employee emp = new Employee(0,fname,lname,age,salary);
			empcrud.save(emp);
			model.addAttribute("msg", "The addition operation performed was successful.");
			return "success";
		} catch (Exception e) {
			model.addAttribute("msg", "The addition operation performed was not successful.");
			e.printStackTrace();
			return "error";
		}
	}
	
	@GetMapping("/delete")
	public String deleteEmployee(Model model, @RequestParam(value="id") int id) {
		try {
			empcrud.deleteById(id);
			model.addAttribute("msg", "The deletion operation performed was successful. ");
			return "success";
		} catch (Exception e) {
			model.addAttribute("msg", "The deletion operation performed was not successful.");
			e.printStackTrace();
			return "error";
		}
	}
	
	@GetMapping("/update")
	public String updateEmployee(Model model, @RequestParam(value="id") int id, @RequestParam(value="fname") String fname, @RequestParam(value="lname") String lname, @RequestParam(value="age") int age, @RequestParam(value="salary") float salary) {
		try {
			Employee emp = new Employee(id,fname,lname,age,salary);
			empcrud.save(emp);
			model.addAttribute("msg", "The updation operation performed was not successful.");
			return "success";
		} catch (Exception e) {
			model.addAttribute("msg", "The updation operation performed was not successful.");
			e.printStackTrace();
			return "error";
		}
	}
	
	@GetMapping("/view")
	public String viewEMployees(Model model) {
		try {
			List<Employee> emp = (List<Employee>) empcrud.findAll();
			model.addAttribute("vemployees", emp);
			return "view";
		} catch (Exception e) {
			model.addAttribute("Not able to retrive the data from the database.");
			e.printStackTrace();
			return "error";
		}
	}
	
	@GetMapping("/search")
	public String searchEmployee(Model model, @RequestParam(value="id") int id) {
		try {
			Employee emp = empcrud.findById(id).get();
			model.addAttribute("msg", emp);
			return "searchemp";
		} catch (Exception e) {
			model.addAttribute("msg", "The id is not found in the database.");
			e.printStackTrace();
			return "error";
		}
		
		
	}

}
