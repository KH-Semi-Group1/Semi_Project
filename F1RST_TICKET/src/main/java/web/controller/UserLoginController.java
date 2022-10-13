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

@WebServlet("/user/login")
public class UserLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// 서비스 객체
	private UserService userService = new UserServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/user/login.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 전달 파라미터 로그인 정보 얻어오기
		User user = userService.getLoginUser(req);
	
		// 로그인 인증
		boolean isLogin = userService.login(user);
		
		// 로그인 인증 성공
		if( isLogin ) {
			
			user = userService.info(user);
			
			HttpSession session = req.getSession();
			
			session.setAttribute("login", isLogin);
			session.setAttribute("loginid", user.getUserid());
			
		}
		
		// 메인으로
		resp.sendRedirect("/");
	}
}
