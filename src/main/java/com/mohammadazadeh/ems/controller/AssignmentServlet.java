package com.mohammadazadeh.ems.controller;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import com.mohammadazadeh.ems.data.*;
import com.mohammadazadeh.ems.domain.*;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.output.*;

@WebServlet("/assignment")
public class AssignmentServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		response.addHeader("Access-Control-Allow-Origin", "*");
		
		PrintWriter out = response.getWriter();
		
		HttpSession session = request.getSession();
		String req = request.getParameter("req");
		
		if (session != null && req != null) {
			String username = request.getRemoteUser();
			User user = Repository.getUser(username);
			List<Assignment> assignmentList = Repository.getAssignmentList();
			String role = Repository.getRole(username);
			
			
			if (user != null)
			{
				request.setAttribute("user", user);
				request.setAttribute("role", role);
				request.setAttribute("assignmentList", assignmentList);
				request.setAttribute("assignmentSize", assignmentList.size());
				System.err.println("User Attribute set to " + user.getFirstname());
				System.err.println("Assignment-List Attribute set with " + assignmentList.size() + " items");
				System.err.println("req = " + req);
				
				if (role != null && role.equals("teacher"))
				{
					if (req.equals("send"))
						request.getRequestDispatcher("assignment-teacher-upload.jsp").forward(request, response);
					else if (req.equals("recieve"))
						request.getRequestDispatcher("assignment-teacher-download.jsp").forward(request, response);
					else if (req.equals("upload"))
					{
						uploadFile("assignments", username, role, request, response);
					}
					else
					{
						out.print("User Attribute not set");
						System.err.println("User Attribute not set");
						// Server error 500
					}
				}
				else if (role != null && role.equals("student"))
				{
					if (req.equals("send"))
						request.getRequestDispatcher("assignment-student-upload.jsp").forward(request, response);
					else if (req.equals("recieve"))
						request.getRequestDispatcher("assignment-student-download.jsp").forward(request, response);
					else if (req.equals("upload"))
					{
						uploadFile("ans", username, role, request, response);
					}
					else
					{
						out.print("User Attribute not set");
						System.err.println("User Attribute not set");
						// Server error 500
					}
				}
				else
					request.getRequestDispatcher("access-err.jsp").forward(request, response);
			}
			else
			{
				out.print("User Attribute not set");
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
	
	private int id;
	private void uploadFile(String dir, String username, String role, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out = response.getWriter();
		boolean isMultipart = false;
		String filePath;
		String courseName = null;
		int maxFileSize = 5000 * 1024;
		int maxMemSize = 4 * 1024;
		File file ;
		
		DiskFileItemFactory factory = new DiskFileItemFactory();
		// maximum size that will be stored in memory
		factory.setSizeThreshold(maxMemSize);
		// Location to save data that is larger than maxMemSize.
		factory.setRepository(new File("../temp"));

		// Create a new file upload handler
		ServletFileUpload upload = new ServletFileUpload(factory);
		// maximum file size to be uploaded.
		upload.setSizeMax( maxFileSize );

		try{ 
		filePath = getServletContext().getInitParameter("file-upload") + "/" + dir + "/";
		file = new File(filePath);
		System.out.println("File path: " + filePath);
		file.mkdirs();
		// Parse the request to get file items.
		List fileItems = upload.parseRequest(request);

		// Process the uploaded file items
		Iterator i = fileItems.iterator();

		out.println("<html>");
		out.println("<head>");
		out.println("<title>Servlet upload</title>");  
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>Uploaded list:</h1>");
		while ( i.hasNext () ) 
		{
		 FileItem fi = (FileItem)i.next();
		 if ( !fi.isFormField () )	
		 {
			// Get the uploaded file parameters
			String fieldName = fi.getFieldName();
			String fileName = fi.getName();
			String contentType = fi.getContentType();
			System.err.println("Uploaded: " + fieldName + " " + fileName + " " + contentType);
			boolean isInMemory = fi.isInMemory();
			long sizeInBytes = fi.getSize();
			// Write the file
			if( fileName.lastIndexOf("/") >= 0 )
				fileName = username + "_" + fileName.substring( fileName.lastIndexOf("/")) ;
			else
				fileName = username + "_" + fileName.substring(fileName.lastIndexOf("/")+1) ;
			
			file = new File( filePath + fileName );
			fi.write( file ) ;
			
			if (role.equals("teacher"))
			{
				id = Repository.addAssignment(courseName, "./files/assignments/" + fileName);
				request.setAttribute("id", id);
				System.err.println("#ID: " + id);
			}
			else if (role.equals("student"))
			{
				id++;
				request.setAttribute("id", id);
			}
			out.println("Uploaded Filename: " + fileName + "<br>");
			
		 }
		 else {
			if (fi.getFieldName().equals("name"))
			{
				courseName = fi.getString();
			}
		 }
		}
		out.println("</body>");
		out.println("</html>");
		request.setAttribute("message", "Submit Assignment");
		request.setAttribute("fileList", fileItems.iterator());
		request.getRequestDispatcher("succeed.jsp").forward(request, response);
		}catch(Exception ex) {
			System.out.println(ex);
			out.println(ex.toString());
		}
		finally {
			file = new File("");
		}
	}
}
