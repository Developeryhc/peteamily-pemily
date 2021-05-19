package ca.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import ca.model.service.CaService;
import ca.model.vo.Adopt;
import ca.model.vo.TotalAdopt;
import inca.model.service.IncaService;

/**
 * Servlet implementation class CaViewServlet
 */
@WebServlet(name = "CaView", urlPatterns = { "/caView" })
public class CaViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CaViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 
		request.setCharacterEncoding("UTF-8");
		// 2.
		int incaNo = Integer.parseInt(request.getParameter("incaNo"));
		int start = Integer.parseInt(request.getParameter("start"));
		// 3.
		ArrayList<Adopt> adopt = new IncaService().selectOneTypeInca(incaNo, start);
		int totalCount = new CaService().totalCount(incaNo);
		TotalAdopt totalAdopt = new TotalAdopt(adopt, totalCount);
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		new Gson().toJson(totalAdopt, response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
