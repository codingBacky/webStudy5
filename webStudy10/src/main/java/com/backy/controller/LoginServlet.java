package com.backy.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.backy.dao.MemberDAO;
import com.backy.dto.MemberVO;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dis = request.getRequestDispatcher("member/login.jsp");
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String userId = request.getParameter("userId");
		String pwd = request.getParameter("pwd");
		String url = "member/login.jsp";
		System.out.println(userId);
		System.out.println(pwd);
		
		MemberDAO mDao = MemberDAO.getInstance();
		
		//result 1 -> 로그인성공
		//result 0 -> 암호 틀림 
		//result -1 -> 아이디 틀림 
		int result = mDao.userCheck(userId, pwd);
		
		if(result == 1) {
			MemberVO vo = mDao.getMember(userId);
			System.out.println("MemberVO : " + vo);
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", vo);
			request.setAttribute("message", "회원가입에 성공하셨습니다");
			url ="member/main.jsp";
		}else if(result == 0) {
			request.setAttribute("message", "비밀번호가 틀립니다");
		}else if(result == -1) {
			request.setAttribute("message", "아이디가 존재하지 않습니다");
			
		}
		RequestDispatcher dis = request.getRequestDispatcher(url);
		dis.forward(request, response);
	}

}
