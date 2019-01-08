package com.house.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import iuseservice.IuseService;
import useserviceimpl.UseServiceimpl;

/**
 * Servlet implementation class UseServlet
 */
public class UseServlet extends HttpServlet {
	  
 

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		int username= Integer.parseInt(request.getParameter("username"));
		String password=request.getParameter("password");
		String telephone=request.getParameter("telephone");
		String name=request.getParameter("name");
	    boolean saorzu=Boolean.parseBoolean(request.getParameter("int1"));
	    IuseService useservice=new UseServiceimpl();
	    boolean count=useservice.signup(username, password, telephone, name, saorzu);
	    if(count) {
	    	response.sendRedirect("sign_in.jsp");
	    }else {
	    	response.sendRedirect("sign_up1.jsp");
	    }
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
