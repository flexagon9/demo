package com.flexagon.springboot.poc.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flexagon.springboot.poc.entity.Employee;
import com.flexagon.springboot.poc.repository.EmployeeRepository;

@Service
public class EmployeeServiceImpl implements EmployeeService {
	
	@Autowired
	private EmployeeRepository employeeRepository;
	

	@Override
	public List<Employee> findAllEmployees() {
		return employeeRepository.findAll();
	}

	@Override
	public Employee findEmployeeById(long id) {
		return employeeRepository.findById(id).get();
	}

	@Override
	public Employee addOrUpdateEmployee(Employee employee) {
		if (employee.getId() != null) {
			Optional<Employee> emp = employeeRepository.findById(employee.getId());
			if (!emp.isPresent()) {
				employee.setId(null);
			}
		}
		
		return employeeRepository.saveAndFlush(employee);
	}

	@Override
	public void deleteEmployee(Long id) {
		if (id != null) {
			Optional<Employee> emp = employeeRepository.findById(id);
			if (emp.isPresent()) {
				employeeRepository.delete(emp.get());
			}
		}
	}

}
