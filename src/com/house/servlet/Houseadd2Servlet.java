package com.house.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.House;
import houseserviceimpl.HouseServiceimpl;
import ihouseservice.IhouseService;

/**
 * Servlet implementation class Houseadd2Servlet
 */
public class Houseadd2Servlet extends HttpServlet {

   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int username=Integer.parseInt(request.getParameter("username"));
		String address=request.getParameter("address");
		int leasemoney=Integer.parseInt(request.getParameter("leasemoney"));
		int area=Integer.parseInt(request.getParameter("area"));
		String houtype=request.getParameter("houtype");
		String floor=request.getParameter("floor");
	    String zhuangxiu=request.getParameter("zhuangxiu");
	    String chaoxiang=request.getParameter("chaoxiang");
	    boolean csqk=Boolean.parseBoolean(request.getParameter("csqk"));
	    House house=new House();
	    house.setUsername(username);
	    house.setAddress(address);
	    house.setLeasemoney(leasemoney);
	    house.setArea(area);
	    house.setHoutype(houtype);
	    house.setChaoxiang(chaoxiang);
	    house.setCsqk(csqk);
	    house.setFloor(floor);
	    house.setZhuangxiu(zhuangxiu);
	    IhouseService houseservice=new HouseServiceimpl();
	    boolean count=houseservice.addhouse2(house);
	    if(count) {
	    	response.sendRedirect("HouandUseServlet");
	    }else {
	    	response.sendRedirect("faile.jsp");
	    }
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
