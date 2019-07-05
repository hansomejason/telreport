package neusoft.hrsys.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import neusoft.hrsys.dao.HrAdminDAO;
import neusoft.hrsys.entity.HrAdmin;

/**好
 * Servlet implementation class LoginServlet
 黄河入海流*/
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /** 123
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//1.获取数据
		request.setCharacterEncoding("utf-8");
		String custel = request.getParameter("adminname");
		String cuspwd = request.getParameter("adminpwd");
		int level = Integer.parseInt(request.getParameter("adminlevel"));
		//2.处理数据
		HrAdminDAO adao = new HrAdminDAO();
		System.out.println(adao.login(custel, cuspwd, level ));
		if(adao.login(custel, cuspwd, level )) {
			HttpSession session = request.getSession();
			HrAdmin admin = new HrAdmin();
			admin.setCustel(custel);
			admin.setCuspwd(cuspwd);
			admin.setLevel(level);
			session.setAttribute("admin", admin);
			//3.跳转
			response.sendRedirect("admin/default.jsp");
			
			
		}else {
			response.sendRedirect("login.jsp");
			System.out.println("111");
			
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
