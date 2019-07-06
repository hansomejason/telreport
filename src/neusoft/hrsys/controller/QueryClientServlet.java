package neusoft.hrsys.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import neusoft.hrsys.dao.ClientDAO;

//@WebServlet("/admin/QueryFYEmpServlet")

public class QueryClientServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
    public QueryClientServlet() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ClientDAO ddao = new ClientDAO();
		//ArrayList list = ddao.queryDept();	//从查询部门方法中得到list集合
		HttpSession session = request.getSession();
		Object client = null;
		session.setAttribute("client", client);
		response.sendRedirect("ClientView.jsp");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}
}
