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

@WebServlet("/register")
public class Register extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// Creating the obj of DAO because it will be connecting the backend to DB
		StudentDAO sdao = new StudentDaoImp();

		// This is the data / obj of student / obj of POJO
		Student s = new Student();
		if (sdao.getStudentByEmail(req.getParameter("email"))==null) {
			if (req.getParameter("password").equals(req.getParameter("confirm"))) {
				s.setName(req.getParameter("username"));
				s.setPhone(req.getParameter("phone"));
				s.setEmail(req.getParameter("email"));
				s.setPassword(req.getParameter("password"));
				sdao.insertStudent(s);
				req.setAttribute("success-msg", "User registered successfull");
				req.getRequestDispatcher("Login.jsp").forward(req, resp);
			} else {
				req.setAttribute("password-mismatch", "Password mismatch!");
				req.getRequestDispatcher("Register.jsp").forward(req, resp);
			}
		} else {
			req.setAttribute("account-not-found", "Account exists");
			req.getRequestDispatcher("Register.jsp").forward(req, resp);
		}
	}
}
