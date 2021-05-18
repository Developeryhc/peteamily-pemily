package ca.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import ca.model.service.CaService;
import ca.model.vo.Adopt;
import ca.model.vo.Ca;
import inca.model.service.IncaService;
import inca.model.vo.Inca;

/**
 * Servlet implementation class AdoptServlet
 */
@WebServlet(name = "Ca", urlPatterns = { "/ca" })
public class CaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 인코딩
		request.setCharacterEncoding("UTF-8");
		// 2. 값 추출
		int incaNo = Integer.parseInt(request.getParameter("incaNo"));
		int start = Integer.parseInt(request.getParameter("start"));
		// 3. 비즈니스 로직
		ArrayList<Adopt> adopt = new IncaService().IncaOneTypeSelect(incaNo, start);
		// 4. 결과처리
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		new Gson().toJson(adopt, response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
