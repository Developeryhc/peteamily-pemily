
package pro.model.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BuyServlet
 */
@WebServlet(name = "Buy", urlPatterns = { "/buy" })
public class BuyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//상세페이지에서 구매하기 버튼 누르면!!
		request.setCharacterEncoding("utf-8");
		//값추출 (이름 가격 수량)
		String inProName = request.getParameter("inProName");
		System.out.println(inProName);
		//int count = Integer.parseInt(request.getParameter("count"));
		String count = request.getParameter("count");
		System.out.println(count);
		String inProPrice = request.getParameter("inProPrice");
		
		System.out.println(inProPrice);
		//비즈니스로직
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/shop/buy.jsp");
		rd.forward(request, response);
		
		request.setAttribute(inProName, "inProName");
		request.setAttribute(inProPrice, "inProPrice");
		request.setAttribute(count, "count");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
