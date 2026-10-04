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
import jakarta.servlet.http.HttpSession;

@WebServlet("/reset")
public class ResetPassword extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StudentDAO sdao = new StudentDaoImp();
		
		HttpSession session = req.getSession();
		Student studentSession = (Student)session.getAttribute("student");
		
		Student s = sdao.getStudentById(req.getParameter("id"));
		
		if(s!=null && s.getPassword().equals(req.getParameter("old-password"))) {
			if(req.getParameter("password").equals(req.getParameter("confirm"))) {
				studentSession.setPassword(req.getParameter("password"));
				sdao.updateStudent(studentSession);
				req.setAttribute("success-msg", "Updated Password!!!");
				req.getRequestDispatcher("ResetPassword.jsp").forward(req, resp);
			}
			else {
				req.setAttribute("error-msg", "Password and Confirm passowrd mismatch!!");
				req.getRequestDispatcher("ResetPassword.jsp").forward(req, resp);
			}
		}
		else {
			req.setAttribute("error-msg", "Old Password mismatch!!");
			req.getRequestDispatcher("ResetPassword.jsp").forward(req, resp);
		}
	}
}
