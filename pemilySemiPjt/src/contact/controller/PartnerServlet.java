package contact.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import contact.model.service.ContactService;
import contact.model.vo.Contact;

/**
 * Servlet implementation class PartnerServlet
 */
@WebServlet(name = "Partner", urlPatterns = { "/partner" })
public class PartnerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PartnerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		Contact c = new Contact();
		c.setContent(request.getParameter("content"));
		c.setEmail(request.getParameter("email"));
		c.setPartnerEmp(request.getParameter("partnerEmp"));
		c.setPartnerName(request.getParameter("partnerName"));
		c.setPhone(request.getParameter("phone"));
		//로직처리
		int result = new ContactService().insertPartner(c);
		//결과처리
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/common/msg.jsp");
		request.setAttribute("msg", "신청이 정상적으로 처리되었습니다.");
		request.setAttribute("loc", "/");
		rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
