package com.house.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.HouandUse;
import houanduseservcieimpl.HouanduseServiceimpl;
import ihouanduseservice.IhouanduseService;

/**
 * Servlet implementation class HouseandUseServlet2
 */
public class HouseandUseServlet2 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cookie[] cookies=request.getCookies();
		String user=null;
		for(int i=0;i<cookies.length;i++) {
			if(cookies[i].getName().equals("username")) {
				user=cookies[i].getValue();
			}
			System.out.println(cookies[i].getName());
		}
		int user1=-1;
		if(user!=null) {
		user1=Integer.parseInt(user);
		}
		List<HouandUse> houanduses=new ArrayList<HouandUse>();
		houanduses=(List)request.getAttribute("houanduses");
		
		IhouanduseService houanduseservice=new HouanduseServiceimpl();
		List<HouandUse> houanduses2=new ArrayList<HouandUse>();
		houanduses2=houanduseservice.queryhandu2(user1);
		request.setAttribute("houanduses2", houanduses2);
		request.setAttribute("houanduses", houanduses);
		request.getRequestDispatcher("myperson.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
