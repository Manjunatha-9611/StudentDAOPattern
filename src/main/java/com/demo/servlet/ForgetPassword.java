package com.demo.servlet;

import java.io.IOException;

import com.demo.dao.StudentDAO;
import com.demo.dao.StudentDaoImp;
import com.demo.dto.Student;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/forgotPassword")
public class ForgetPassword extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StudentDAO sdao = new StudentDaoImp();
		Student s = sdao.getStudentByEmail(req.getParameter("email"));
		if(s.getEmail().equals(req.getParameter("email"))) {
			if(req.getParameter("password").equals(req.getParameter("confirm"))) {
				s.setEmail(s.getEmail());
				s.setId(s.getId());
				s.setName(s.getName());
				s.setPhone(s.getPhone());
				s.setPassword(req.getParameter("password"));
				
				sdao.updateStudent(s);
			}
			
		}else {
			resp.getWriter().println("No user found");
		}
	}
}
