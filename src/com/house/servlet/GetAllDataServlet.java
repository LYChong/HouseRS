package com.house.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.house.service.IAdminService;
import com.house.service.IHouseService;
import com.house.service.IUserService;
import com.house.service.impl.AdminServiceImpl;
import com.house.service.impl.HouseServiceImpl;
import com.house.service.impl.UserServiceImpl;

/**
 * Servlet implementation class GetAllDataServlet
 */
public class GetAllDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetAllDataServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//查询用户总人数
		IUserService userService = new UserServiceImpl();
		int userCount = userService.getUserCount();
		Integer userCount1 = userCount;
		int landlordCount = userService.getLandlordCount();
		Integer landlordCount1 = landlordCount;
		
		
		IHouseService houseService = new HouseServiceImpl();
		//查询房子总数
		int houseCount = houseService.getHouseCount();
		//查询出租的房子数
		int RentalHouseCount = houseService.getRentalHouseCount();
		Integer RentalHouseCount1 = RentalHouseCount; 
		Integer houseCount1 = houseCount;
		//计算出出售的房子数
		Integer houseSale = houseCount1 - RentalHouseCount;
		System.out.println(houseCount);
		System.out.println(RentalHouseCount1);
		
		//json 数据存储
		Map<String, Object> map = new HashMap<>();
		map.put("houseCount", houseCount1);
		map.put("RentalHouseCount", RentalHouseCount);
		map.put("houseSale", houseSale);
		map.put("userCount", userCount1);
		map.put("landlordCount",landlordCount1 );
		response.getWriter().println(JSON.toJSONString(map));
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
