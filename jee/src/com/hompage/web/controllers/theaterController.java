package com.hompage.web.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.homepage.web.serviceimpls.HelloServiceImpl;
import com.homepage.web.services.HelloService;

/**
* Servlet implementation class theaterController
*/
@WebServlet({"/theaterInput.do","/theaterInfo.do"})
public class theaterController extends HttpServlet {
     private static final long serialVersionUID = 1L;
      
     /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
     protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	 switch (request.getServletPath()) {
 		case "/theaterInput.do":goTheaterInput(request, response); break;
 		case "/theaterInfo.do":goTheaterInfo(request, response); break;
 		default:
 			break;
 		} 
     }
    
    
     private void goTheaterInfo(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
    	 String[] property = {"theater","title","date","time"};
         for(int i=0 ; i<property.length; i++){
              String value = request.getParameter(property[i]);
              request.setAttribute(property[i], value);
         }         
    	 RequestDispatcher dispatcher = request.getRequestDispatcher("/views/theater/reservation.jsp");  // 절대경로
         dispatcher.forward(request, response);
	}


	private void goTheaterInput(HttpServletRequest request,
               HttpServletResponse response) throws ServletException, IOException {
         
          String[] property = {"theater","title","date","time"};
          for(int i=0 ; i<property.length; i++){
               String value = request.getParameter(property[i]);
               request.setAttribute(property[i], value);
          }         

          RequestDispatcher dispatcher = request.getRequestDispatcher("/views/model2/ReservationForm.jsp");  // 절대경로
          dispatcher.forward(request, response);
     }
}