package notice.model.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import notice.model.service.NoticeService;
import notice.model.vo.Notice;

/**
 * Servlet implementation class NoticeWriteServlet
 */
@WebServlet(name = "NoticeWrite", urlPatterns = { "/noticeWrite" })
public class NoticeWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeWriteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		//1. 
		request.setCharacterEncoding("utf-8");
		//2. 
		int noticeCom = Integer.parseInt(request.getParameter("noticeCom"));
		String noticeWriter = request.getParameter("noticeWriter");
		String noticeTitle = request.getParameter("noticeTitle");
		String noticeContent = request.getParameter("noticeContent");
		Notice n = new Notice();
		n.setNoticeCom(noticeCom);
		n.setNoticeContent(noticeContent);
		n.setNoticeTitle(noticeTitle);
		n.setNoticeWriter(noticeWriter);
		//3.
		int result = new NoticeService().insertNotice(n);
		int noticeNo = new NoticeService().searchOneNoticeNo(noticeCom);
		//4. 여기서는 실제로 구현될 결과/페이지 지정 처리를 해야됨
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/common/msg.jsp");
		if(result>0) {
			request.setAttribute("msg", "등록완료");
			request.setAttribute("loc", "/noticeEmpView?noticeNo="+noticeNo);
		}else {
			request.setAttribute("msg", "등록실패");
			request.setAttribute("loc", "/insertPage");
		}
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
