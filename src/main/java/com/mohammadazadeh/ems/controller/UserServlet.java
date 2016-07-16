package com.mohammadazadeh.ems.controller;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import com.mohammadazadeh.ems.data.*;
import com.mohammadazadeh.ems.domain.*;


@WebServlet("/getlist")
public class UserServlet extends HttpServlet {
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
				String req = request.getParameter("req");
				
				if (req == null)
				{
					request.setAttribute("message", "Wrong URI");
					request.setAttribute("submessage", "The 'req' attribute could not be empty!");
					request.getRequestDispatcher("error.jsp").forward(request, response);
				}
				else if (role == null)
					request.getRequestDispatcher("access-err.jsp").forward(request, response);
				else if (role.equals("manager"))
				{
					if (req.equals("student"))
						request.setAttribute("userList", Repository.getUserList("student"));
					else if (req.equals("teacher"))
						request.setAttribute("userList", Repository.getUserList("teacher"));
					request.getRequestDispatcher("user-list.jsp").forward(request, response);
				}
				else if (role.equals("teacher"))
				{
					if (req.equals("student"))
						request.setAttribute("userList", Repository.getUserList("student"));
					request.getRequestDispatcher("user-list.jsp").forward(request, response);
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
