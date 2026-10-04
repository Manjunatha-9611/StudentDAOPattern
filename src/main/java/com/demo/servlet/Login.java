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

@WebServlet("/login")
public class Login extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StudentDAO sdao = new StudentDaoImp();
		try {
			Student s = sdao.getStudentByEmail(req.getParameter("email"));
			if (s != null) {
				if (s.getPassword().equals(req.getParameter("password"))) {
					// req.setAttribute("student-data", s); not needed as we are using sessions now
					
					HttpSession session = req.getSession();
					session.setAttribute("student", s);
					
					//resp.sendRedirect("MainDashboard.jsp");
					
					req.setAttribute("success-msg", "Login successfull");
					req.getRequestDispatcher("MainDashboard.jsp").forward(req, resp);
					
				} else {
					req.setAttribute("error-msg", "Password incorrect");
					req.getRequestDispatcher("Login.jsp").forward(req, resp);
				}
			}
		} catch (NullPointerException e) {
			req.setAttribute("error-msg", "Account not found");
			req.getRequestDispatcher("Login.jsp").forward(req, resp);
		}

	}
}
