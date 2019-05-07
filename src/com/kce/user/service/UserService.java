package com.kce.user.service;

import java.util.List;

import com.kce.user.model.User;

public class UserService {
	String doRegister(Employee employee);
	String doModify(Employee employee);
	void doDelete(int employeeId);
	Employee getEmployee(int employeeId);
	List<Integer> getEmployeeId();
	List<Employee> getAllEmployee();
}
