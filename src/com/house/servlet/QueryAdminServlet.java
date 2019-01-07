package com.house.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.house.entity.Admin;
import com.house.service.IAdminService;
import com.house.service.impl.AdminServiceImpl;
import com.mysql.cj.Session;

/**
 * Servlet implementation class QueryAdminServlet
 */
public class QueryAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QueryAdminServlet() {
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
		
		String name=request.getParameter("uname");
		String pwd=request.getParameter("upwd");
		Admin admin = new Admin(name, pwd);
		admin.setName(name);
		admin.setPwd(pwd);
		
		//接口实现
		IAdminService adminService = new AdminServiceImpl();
		boolean count = adminService.QueryAdmin(admin); //管理员登录
		int number = adminService.getTotalCount();  //查询管理员人数
		int unumber = adminService.getUTotalCount(); //查询用户总人数
		if(count) {
			HttpSession session = request.getSession();
			session.setAttribute("name", name);
			session.setAttribute("pwd", pwd);
			session.setAttribute("number", number);
			session.setAttribute("unumber", unumber);
			response.sendRedirect("index.jsp");
		}else {
			response.sendRedirect("adminLogin.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
