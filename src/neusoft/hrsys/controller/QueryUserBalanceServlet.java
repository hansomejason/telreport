package neusoft.hrsys.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import neusoft.hrsys.dao.UserBalanceDao;

/**
 * Servlet implementation class QueryUserBalanceServlet
 */
@WebServlet("/QueryUserBalanceServlet")
public class QueryUserBalanceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QueryUserBalanceServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//2.处理数据
		UserBalanceDao ddao = new UserBalanceDao();
		ArrayList list = ddao.queryUserBalance();	//从查询部门方法中得到list集合
		HttpSession session = request.getSession();
		session.setAttribute("blist", list);
		//3.跳转
		response.sendRedirect("UserBalanceView.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
