package com.house.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Use;
import iuseservice.IuseService;
import useserviceimpl.UseServiceimpl;

/**
 * Servlet implementation class UseDLServlet
 */
public class UseDLServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		int username=Integer.parseInt(request.getParameter("user"));
		String password=request.getParameter("paswd");
		String uname=String.valueOf(username);
		Use use=new Use();
		use.setUsername(username);
		use.setPassword(password);
		IuseService useservice=new UseServiceimpl();
		boolean count=useservice.DL(use);
		if(count) {
			Cookie cookie=new Cookie("username",uname); 
			response.addCookie(cookie);
			response.sendRedirect("index.jsp");
		}else {
			response.sendRedirect("sign_in.jsp");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
