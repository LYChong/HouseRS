package com.house.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.house.entity.House;
import com.house.service.IHouseService;
import com.house.service.impl.HouseServiceImpl;

/**
 * Servlet implementation class AddHouseServlet
 */
public class AddHouseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddHouseServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		int username=Integer.parseInt(request.getParameter("uusername"));
		String address=request.getParameter("uaddress");
		int salemoney=Integer.parseInt(request.getParameter("usalemoney"));
		int area=Integer.parseInt(request.getParameter("uarea"));
		String houtype=request.getParameter("uhoutype");
		String floor=request.getParameter("ufloor");
	    String zhuangxiu=request.getParameter("uzhuangxiu");
	    String chaoxiang=request.getParameter("uchaoxiang");
	    int leasemoney = Integer.parseInt(request.getParameter("uleasemoney"));
	    int csqk = Integer.parseInt(request.getParameter("ucsqk"));
	    System.out.println(username);
	    System.out.println(address);
	    System.out.println(salemoney);
	    System.out.println(area);
	    System.out.println(houtype);
	    System.out.println(floor);
	    System.out.println(zhuangxiu);
	    System.out.println(chaoxiang);
	    System.out.println(csqk);
	    System.out.println(leasemoney);
	    House house = new House();
	    house.setUsername(username);
	    house.setAddress(address);
	    house.setSalemoney(salemoney);
	    house.setArea(area);
	    house.setHoutype(houtype);
	    house.setChaoxiang(chaoxiang);
	    house.setLeasemoney(leasemoney);
	    if(csqk==1) {
	    house.setCsqk(true);
	    }else {
	    	house.setCsqk(false);
	    }
	    house.setFloor(floor);
	    house.setZhuangxiu(zhuangxiu);
	    
	    //接口实现喽
	    IHouseService houseService = new HouseServiceImpl();
	    boolean count = houseService.addHouse(house);
	    if(count) {
	    	System.out.println("添加成功");
	    }else {
	    	System.out.println("添加失败");
	    }
	    response.sendRedirect("addInfo.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
