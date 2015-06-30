package com.hompage.web.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.homepage.web.beans.MemberBean;
import com.homepage.web.serviceimpls.MemberServiceImpl;
import com.homepage.web.services.MemberService;

/**
* @ Date : 2015.06.15
* @ Author :
* @ Story : 회원 가입과 로그인 담당하는 컨트롤러
*/
@WebServlet({"/model2/join.do","/model2/login.do"
               ,"/member/searchIdForm.do","/member/searchPassForm.do"
               ,"/member/searchAllMembers.do"}) // 경로
public class MemberController extends HttpServlet {
     private static final long serialVersionUID = 1L;
     MemberBean bean = new MemberBean();
     Map<String, Object> map = new HashMap<String, Object>();
     MemberService service = MemberServiceImpl.getInstance();

     protected void doGet(HttpServletRequest request, HttpServletResponse response)
               throws ServletException, IOException {
          request.setCharacterEncoding("UTF-8");
          String path = request.getServletPath();
          switch (path) {
          case "/member/searchIdForm.do" :
               RequestDispatcher dispatcher3 = request.getRequestDispatcher("/views/model2/searchIdForm.jsp");
               dispatcher3.forward(request, response);
               break;
          case "/member/searchPassForm.do" :
               RequestDispatcher dispatcher4 = request.getRequestDispatcher("/views/model2/searchPassForm.jsp");
               dispatcher4.forward(request, response);
               break;
          case "/member/searchAllMembers.do" :
               List<MemberBean> list = new ArrayList<MemberBean>();
               list = service.getList();
               request.setAttribute("memberList", list);
               RequestDispatcher dispatcher5 = request.getRequestDispatcher("/views/model2/memberList.jsp");
               dispatcher5.forward(request, response);
               break;
          default : break;
          }
     }
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          request.setCharacterEncoding("UTF-8");
          switch(request.getServletPath()){ // 경로에 따라 케이스 줌.
          case "/model2/join.do" : goJoin(request,response);break;
          case "/model2/login.do" : goLogin(request,response); break;
          default : break;
          }
     }
     private void goJoin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          String nameParam = request.getParameter("name");
          String idParam = request.getParameter("id");
          String passParam = request.getParameter("password");
          String ageParam = request.getParameter("age");
          String addressParam = request.getParameter("address");
          String emailParam = request.getParameter("email");
         
          bean.setName(nameParam); // DB저장
          bean.setId(idParam);
          bean.setPassword(passParam);
          bean.setAge(ageParam);
          bean.setAddr(addressParam);
          bean.setEmail(emailParam);
         
         int result = service.join(bean);
         String joinmsg = "";
         if(result !=0){
        	 joinmsg = nameParam + " 님 환영합니다.";
        	 
         }else{
        	 	joinmsg = "회원가입에 실패했습니다.";
         }
         request.setAttribute("msg",joinmsg);
        
         
          RequestDispatcher dispatcher = request.getRequestDispatcher("/views/model2/main.jsp");
          dispatcher.forward(request, response); // 멤버폼에 가서 다시 회원가입 로그인 화면.
         
     }
     private void goLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          String idParam2 = request.getParameter("id");
          String passParam2 = request.getParameter("password");
          String msg = service.login(idParam2, passParam2);
          if(msg.equals("환영합니다.")){ // login 메소드 > msg 리턴 가능하게 수정.
               request.setAttribute("name", bean.getName()); //field에 공유한 bean에서 값을 get한다.
               request.setAttribute("id", bean.getId());
               request.setAttribute("age", bean.getAge());
               request.setAttribute("address", bean.getAddr());
               request.setAttribute("emailParam", bean.getEmail());
              
               RequestDispatcher dispatcher = request.getRequestDispatcher("/views/model2/member.jsp");
               dispatcher.forward(request, response);
          }else{
               request.setAttribute("msg", msg); //msg값을 request
               RequestDispatcher dispatcher2 = request.getRequestDispatcher("/views/model2/loginFail.jsp");
               dispatcher2.forward(request, response);
          }

         
     }
}