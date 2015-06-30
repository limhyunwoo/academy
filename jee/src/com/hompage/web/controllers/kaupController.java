package com.hompage.web.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.homepage.web.beans.KaupBean;
import com.homepage.web.serviceimpls.KaupServiceImpl;
import com.homepage.web.services.KaupService;

/**
 * @ Date : someday;
 * @ Author : IT  ;
 * @ Story : 키와 몸무게가 입력되면 카우프지수와 메시지를 웹 브라우져에 랜더링 하는 역할 ;
 */
@WebServlet("/model2/kaup.do")
public class kaupController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getServletPath().equalsIgnoreCase("/model2/kaup.do")){
			goKaup(request,response);
		}
	}
	private void goKaup(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		KaupService service = new KaupServiceImpl();
		String heightParam = request.getParameter("height");
		String 	weightParam = request.getParameter("weight");
		double height = Double.parseDouble(heightParam);
		double weight = Double.parseDouble(weightParam);
		// KaupBean bean = new KaupBean();
		
		int index = service.getKaupIndex(height, weight);
		String msg = service.getResultMsg(index);
		request.setAttribute("height", height);
		request.setAttribute("weight", weight);
		request.setAttribute("index", index);
		request.setAttribute("msg",msg);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/model2/kaup.jsp");  
		dispatcher.forward(request, response);   // 47-48 라인은 암기 해야됨
		
	}
}
