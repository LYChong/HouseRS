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
import com.house.service.impl.AdminServiceImpl;

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
		IAdminService adminService = new AdminServiceImpl();
		Integer uCount = adminService.getUTotalCount();
		System.out.println(uCount);
		Map<String, Object> map = new HashMap<>();
		map.put("uCount", uCount);
		Integer[] age = {30};
		Integer b = 100;
		map.put("age", age);
		map.put("b", b);
		response.getWriter().println(JSON.toJSONString(map));
		System.out.println(age);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
