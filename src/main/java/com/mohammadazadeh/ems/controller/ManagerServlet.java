package com.mohammadazadeh.ems.controller;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import com.mohammadazadeh.ems.data.*;
import com.mohammadazadeh.ems.domain.*;


@WebServlet("/adduser")
public class ManagerServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		response.addHeader("Access-Control-Allow-Origin", "*");
		
		PrintWriter out = response.getWriter();
		
		HttpSession session = request.getSession();
		
		if (session != null) {
			String username = request.getRemoteUser();
			User user = Repository.getUser(username);
			String role = Repository.getRole(username);
			
			if (user != null)
			{
				request.setAttribute("user", user);
				request.setAttribute("role", role);
				System.err.println("User Attribute set to " + user.getFirstname());
				
				if (role != null && role.equals("manager"))
				{
					String newusername = request.getParameter("username");
					String password = request.getParameter("password");
					String firstname = request.getParameter("firstname");
					String lastname = request.getParameter("lastname");
					String fathername = request.getParameter("father_name");
					String ssn = request.getParameter("ssn");
					String email = request.getParameter("email");
					String phone = request.getParameter("phone");
					String address = request.getParameter("address");
					String userRole = request.getParameter("user_role");
					
					if (newusername != null && password != null && firstname != null && lastname != null && fathername != null && ssn != null && email != null && phone != null && address != null && userRole != null)
					{
						int id = Repository.addUser(newusername, password, firstname, lastname, fathername, ssn, email, phone, address, userRole);
						if (id != -1)
						{
							request.setAttribute("message", "New User");
							request.setAttribute("id", id);
							request.getRequestDispatcher("succeed.jsp").forward(request, response);
						}
						else
						{
							request.setAttribute("message", "Repetitive Username!");
							request.setAttribute("submessage", "The '" + newusername + "' is taken befor, use another username.");
							request.getRequestDispatcher("error.jsp").forward(request, response);
						}
						
					}
					else
						request.getRequestDispatcher("add-user.jsp").forward(request, response);
				}
				else
					request.getRequestDispatcher("access-err.jsp").forward(request, response);
			}
			else
			{
				System.err.println("User Attribute not set");
				// Server error 500
			}
		}
		else
			request.getRequestDispatcher("access-err.jsp").forward(request, response);
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		doPost(request, response);
	}
}
