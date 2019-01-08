package com.house.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import houseserviceimpl.HouseServiceimpl;
import ihouseservice.IhouseService;


public class HouseDeleteServlet2 extends HttpServlet {
	
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int username=Integer.parseInt(request.getParameter("uname"));
		IhouseService houservice=new HouseServiceimpl();
		boolean count=houservice.deletehouse(username);
		if(count) {
			response.sendRedirect("HouandUseServlet");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
