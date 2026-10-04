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

@WebServlet("/delete")
public class DeleteStudent extends HttpServlet{
  @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	StudentDAO sdao = new StudentDaoImp();
	HttpSession session = req.getSession();
	Student student = (Student)session.getAttribute("student");
	if(student!=null) {
		
		Student deletingStudent = sdao.getStudentById(req.getParameter("id"));
		req.setAttribute("delete-success-msg", deletingStudent);
		sdao.deleteStudent(req.getParameter("id"));
		
		req.getRequestDispatcher("ViewStudent.jsp").forward(req, resp);
	}else {
		req.setAttribute("error-msg", "Session expired!!!");
		req.getRequestDispatcher("Login.jsp").forward(req, resp);
	}
}
}
