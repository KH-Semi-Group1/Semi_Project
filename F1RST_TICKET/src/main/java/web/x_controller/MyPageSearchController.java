package web.x_controller;
//package web.controller;
//
//import java.io.IOException;
//import java.util.List;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import util.Paging;
//import web.dto.ReservationPay;
//import web.dto.User;
//import web.service.face.ReservationPayService;
//import web.service.impl.ReservationPayServiceImpl;
//
//@WebServlet("/mypage/search")
//public class MyPageSearchController extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//
//	private ReservationPayService reservationpayService = new ReservationPayServiceImpl(); 
//
//	@Override
//	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		
//		User user = new User();
//		user.setUserid((String) req.getSession().getAttribute("userid"));
//		System.out.println(user);
//		
//		Paging paging = reservationpayService.getPaging(req, user);
//		
//		ReservationPay res = reservationpayService.selectSearchMc(req,user);
//		System.out.println(res);
//
//		String keyword = req.getParameter("keyword");
//		
//		List<ReservationPay> mcSearchList = reservationpayService.getMcSearchList(keyword, user);
//		System.out.println(mcSearchList);
//		
//		req.setAttribute("mcSearchList", mcSearchList);
//		req.setAttribute("paging", paging);
//		
////		boolean isSearchMc = reservationpayService.searchMc(keyword,user);
////		
////		if(isSearchMc) {
////			
////			res = reservationpayService.info(res, user, keyword);
////			
////			HttpSession session = req.getSession();
////			session.setAttribute("keyword", keyword);
////			session.setAttribute("isSearchMc", isSearchMc);
////			session.setAttribute("mcSearchList", mcSearchList);
////			
////			session.setAttribute("userid", user.getUserid());
////			
//			// true 일 경우
//			req.getRequestDispatcher("/WEB-INF/views/user/watchmc.jsp").forward(req, resp);
//		}
//			// false인경우
////		req.getRequestDispatcher("/WEB-INF/views/user/watchmc_err.jsp").forward(req, resp);
//		
////	}
//	
//	@Override
//	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		req.setCharacterEncoding("UTF-8");
//		
//		reservationpayService.searchRpMc(req);
//	
//		resp.sendRedirect("/mypage/search_ok");
//	}
//
//
//}
