package com.demo.dao;

import java.util.List;

import com.demo.dto.Student;

public interface StudentDAO {
	
	public void insertStudent(Student s);
	
	public void updateStudent(Student s);
	
	public void deleteStudent(String id);
	
	public Student getStudentById(String id);
	
	public Student getStudentByEmail(String email);
	
	public List<Student> getAllDetails();
	
}
