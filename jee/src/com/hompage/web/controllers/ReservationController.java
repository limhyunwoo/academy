package com.hompage.web.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.homepage.web.serviceimpls.ReservationServiceImpl;
import com.homepage.web.services.ReservationService;

/**
 * @ Date : 2015-06-16
 * @ Author : JTJ
 * @ Story : 예약요청을 JSP 에서 받아서 처리하는 컨트롤러
 */
@WebServlet({"/reservation/checkIn.do",
						"/reservation/checkOut.do",
						"/reservation/showStatus.do"})
public class ReservationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	ReservationService service = new ReservationServiceImpl();
	public static String[][] seat = new String[3][5];

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int floor = Integer.parseInt(request.getParameter("floor"))-1;
		int row = Integer.parseInt(request.getParameter("row"))-1;
		String id = request.getParameter("id");
		String path = request.getServletPath();
		
				
		switch (path) {
		case "/reservation/checkIn.do":
			String msg= service.checkIn(floor, row, id);
			seat[floor][row] = id;  // 좌석 위치값
			request.setAttribute("msg", msg);
			request.setAttribute("seat", seat);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/views/model2/ReservationForm.jsp");
			dispatcher.forward(request, response);
			break; // 체크인
		case "/reservation/checkOut.do":
			String msg2= service.checkOut(floor, row, id);
			seat[floor][row] = null;  // 좌석 위치값
			request.setAttribute("msg", msg2);
			request.setAttribute("seat", seat);
			RequestDispatcher dispatcher2 = request.getRequestDispatcher("/views/model2/ReservationForm.jsp");
			dispatcher2.forward(request, response);
			break; // 체크아웃
		/*case "/reservation/inputCheck.do":
			service.process();
			break; // 현황보기      이건 태그에서 입력 받기 때문에 필요없다. */	
		case "/reservation/showStatus.do":
			request.setAttribute("floor", floor);
			request.setAttribute("row", row);
			RequestDispatcher dispatcher3 = request.getRequestDispatcher("");
			dispatcher3.forward(request, response);
			break;
			default: service.showStatus(); 
			RequestDispatcher dispatcher4 = request.getRequestDispatcher("");
			dispatcher4.forward(request, response);
			break;   // 이상한 명령이 들어오면 무조건 showStatus()로 옴
		}
		
	}
}
