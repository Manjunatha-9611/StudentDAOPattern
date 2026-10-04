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

@WebServlet("/updateStudent")
public class UpdateStudent extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		StudentDAO sdao = new StudentDaoImp();

		HttpSession session = req.getSession();
		Student sessionStudent = (Student) session.getAttribute("student");

		if (sessionStudent != null) {
			// if(sessionStudent!=null){
			sessionStudent.setName(req.getParameter("name"));
			sessionStudent.setEmail(req.getParameter("email"));
			sessionStudent.setPhone(req.getParameter("phone"));

			sdao.updateStudent(sessionStudent);

			// session.setAttribute("student", sessionStudent);
			req.setAttribute("success-msg", "Updated Successfully!!!");
			req.getRequestDispatcher("MainDashboard.jsp").forward(req, resp);
		} else {
			req.setAttribute("error-msg", "Invalid user-information please login again!!!!!");
			req.getRequestDispatcher("Login.jsp").forward(req, resp);
		}
	}
}
