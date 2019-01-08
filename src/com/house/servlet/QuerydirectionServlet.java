package com.house.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.house.entity.HouandUse;
import com.house.entity.House;
import com.house.service.IHouseService;
import com.house.service.impl.HouseServiceImpl;

/**
 * Servlet implementation class QuerydirectionServlet
 */
public class QuerydirectionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuerydirectionServlet() {
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
		String schaoxiang = "南";
		IHouseService houseService = new HouseServiceImpl();
		List<HouandUse> houandUses = houseService.queryHouseByDirection("南");
		System.out.println(houandUses);
		request.setAttribute("houandHouse", houandUses);
		request.getRequestDispatcher("one.jsp").forward(request, response);
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
