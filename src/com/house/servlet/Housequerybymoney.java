package com.house.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.HouandUse;
import houanduseservcieimpl.HouanduseServiceimpl;
import ihouanduseservice.IhouanduseService;

/**
 * Servlet implementation class Housequerybymoney
 */
public class Housequerybymoney extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int salemoney=Integer.parseInt(request.getParameter("salemoney"));
		int salemoney1=Integer.parseInt(request.getParameter("salemoney1"));
		IhouanduseService houanduseservice=new HouanduseServiceimpl();
		List<HouandUse> houses=new ArrayList<HouandUse>();
		houses=houanduseservice.queryhousebymoney(salemoney, salemoney1);
		PrintWriter out =response.getWriter();
		for(int i=0;i<houses.size();i++) {
			
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
