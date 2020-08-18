package com.flexagon.springboot.poc.service;

import java.util.List;

import com.flexagon.springboot.poc.entity.Employee;

public interface EmployeeService {

	List<Employee> findAllEmployees();
	
	Employee findEmployeeById(long id);
	
	Employee addOrUpdateEmployee(Employee employee);
	
	void deleteEmployee(Long id);	
	
}
