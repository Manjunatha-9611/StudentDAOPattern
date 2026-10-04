package com.demo.servlet;

import java.io.IOException;
import java.util.List;

import com.demo.dao.StudentDAO;
import com.demo.dao.StudentDaoImp;
import com.demo.dto.Student;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/searchQuery")
public class ViewStudents extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StudentDAO sdao = new StudentDaoImp();
		
		HttpSession session = req.getSession();
		Student admin = (Student)session.getAttribute("student");
			if(admin!=null) {
			String query = req.getParameter("input");
			if(query.isEmpty()) {
				List<Student> studentList = sdao.getAllDetails();
				req.setAttribute("student-list", studentList);
				req.getRequestDispatcher("ViewStudent.jsp").forward(req, resp);
			}
			else if(query.contains("gmail.com")) {
					Student studentByEmail = sdao.getStudentByEmail(query);
					req.setAttribute("student-details", studentByEmail);
					req.getRequestDispatcher("ViewStudent.jsp").forward(req, resp);
			}else {
				Student studentByID = sdao.getStudentById(query);
				req.setAttribute("student-details", studentByID);
				req.getRequestDispatcher("ViewStudent.jsp").forward(req, resp);
			}
		}
			else {
				req.setAttribute("error-msg", "Session Expired");
				req.getRequestDispatcher("Login.jsp").forward(req, resp);
			}
	}
}

