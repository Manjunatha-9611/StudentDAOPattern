package com.demo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.dto.Student;
import com.demo.util.ConnectionFactory;

public class StudentDaoImp implements StudentDAO {
	
	Connection con;
	PreparedStatement ps;
	
	public StudentDaoImp() {
		this.con=ConnectionFactory.getCon();
	}
	
	@Override
	public void insertStudent(Student s) {
		try {
			ps = con.prepareStatement("insert into student values(?,?,?,?,?)");
			ps.setString(1, s.getId());
			ps.setString(1, s.getName());
			ps.setString(2, s.getPhone());
			ps.setString(3, s.getEmail());
			ps.setString(4, s.getPassword());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void updateStudent(Student s) {
		try {
			ps = con.prepareStatement("update student set name = ?, phone = ?, email = ?, password = ? where id = ?");
			ps.setString(1, s.getName());
			ps.setString(2, s.getPhone());
			ps.setString(3, s.getEmail());
			ps.setString(4, s.getPassword());
			ps.setString(5, s.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void deleteStudent(String id) {
		try {
			ps = con.prepareStatement("delete from student where id = ?");
			ps.setString(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public Student getStudentById(String id) {
		Student s = null;
		try {
			ps = con.prepareStatement("select * from student where id = ?");
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				s = new Student();
				s.setId(rs.getString("id"));
				s.setName(rs.getString("name"));
				s.setPhone(rs.getString("phone"));
				s.setEmail(rs.getString("email"));
				s.setPassword(rs.getString("password"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s;
	}

	@Override
	public Student getStudentByEmail(String email) {
		Student s = null;
		try {
			ps = con.prepareStatement("select * from student where email = ?");
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				s = new Student();
				s.setId(rs.getString("id"));
				s.setName(rs.getString("name"));
				s.setPhone(rs.getString("phone"));
				s.setEmail(rs.getString("email"));
				s.setPassword(rs.getString("password"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s;
	}

	@Override
	public List<Student> getAllDetails() {
		ArrayList<Student> stdList = new ArrayList<>();
		Student s = null;
		try {
			ps = con.prepareStatement("select * from student where id != 'admin'");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				s = new Student();
				s.setId(rs.getString("id"));
				s.setName(rs.getString("name"));
				s.setPhone(rs.getString("phone"));
				s.setEmail(rs.getString("email"));
				s.setPassword(rs.getString("password"));
				stdList.add(s);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return stdList;
	}

}
