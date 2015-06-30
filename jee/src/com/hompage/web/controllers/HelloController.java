package com.hompage.web.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.homepage.web.serviceimpls.HelloServiceImpl;
import com.homepage.web.services.HelloService;

/**
 * Servlet implementation class NowServlet
 */
@WebServlet({"/name/hello.nhn","/hi.do"}) // 가상의 경로로 보이게 함.  보안이 좋다.
public class HelloController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	// 애노테이션으로 매핑
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet은 페이지 이동할 때 사용
		System.out.println("경로 :"+request.getServletPath());
		switch (request.getServletPath()) {
		case "/name/hello.nhn":goHello(request,response); break;
		case "/hi.do":goHi(request,response); break;
		default:
			System.out.println("페이지 없음");
			break;
		}
	}

	private void goHi(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		request.setAttribute("name", name);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/model2/hi.jsp"); 
		dispatcher.forward(request, response);
	}

	private void goHello(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		HelloService service = new HelloServiceImpl();
		String msg = service.greet();
		System.out.println("msg :"+msg);
		String name = request.getParameter("name");
		request.setAttribute("name", msg+name);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/model2/hello.jsp");  // 절대경로
		dispatcher.forward(request, response);
	}
}
//dispatcher : 폴더 관리자