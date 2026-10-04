package com.demo.servlet;

import java.io.IOException;

import com.demo.dto.Student;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/logout")
public class Logout extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		Student s = (Student)session.getAttribute("student");
		if(s!=null) {
			session.invalidate();
			req.setAttribute("success-msg", "Logout success");
			req.getRequestDispatcher("Login.jsp").forward(req, resp);
		}
		else {
			req.setAttribute("error-msg", "Session expired");
			req.getRequestDispatcher("Login.jsp").forward(req, resp);
		}
	}
}
