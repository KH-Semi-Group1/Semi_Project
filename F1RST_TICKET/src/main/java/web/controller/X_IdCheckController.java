package web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import web.dto.User;
import web.service.face.UserService;
import web.service.impl.UserServiceImpl;

@WebServlet()
public class X_IdCheckController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// 서비스 객체
	private UserService userService = new UserServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		req.getRequestDispatcher("/WEB-INF/views/user/findid.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("utf-8");
		
//		User user = userService.getUserId(req);
//		System.out.println(user); 
//		
//		int idCheck = userService.idCheck(user);
//		
//		HttpSession session = req.getSession();
//		
//		if(idCheck == 0) {
//			System.out.println("아이디 존재");
//		} else {
//			System.out.println("아이디 존재 하지 않음");
//		}
//		
//		session.setAttribute("isId", idCheck);
//
	}
	
	
}
