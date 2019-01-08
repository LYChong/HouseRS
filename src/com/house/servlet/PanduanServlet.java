package com.house.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PanduanServlet
 */
public class PanduanServlet extends HttpServlet {
	
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cookie[] cookies=request.getCookies();
		String ck=null;
		for(int i=0;i<cookies.length;i++) {
			if(cookies[i].getName().equals("username")) {
			ck=cookies[i].getValue();	
			}
		}
		if(ck==null) {
			response.sendRedirect("sign_in.jsp");
		}else {
			response.sendRedirect("HouandUseServlet");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
