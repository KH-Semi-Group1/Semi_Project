package web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.Paging;
import web.dto.Reservation;
import web.dto.User;
import web.service.face.ReservationService;
import web.service.impl.ReservationServiceImpl;

@WebServlet("/mypage")
public class MyPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ReservationService reservationSerivce = new ReservationServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		Paging paging = reservationSerivce.getPaging(req);
//		System.out.println(paging);

		User user = new User();
		user.setUserid((String) req.getSession().getAttribute("userid"));
		System.out.println(user);

		List<Reservation> resvList = reservationSerivce.getListMain(paging,user);
		System.out.println(resvList);
		
		req.setAttribute("resvList", resvList);
		req.setAttribute("paging", paging);


		Reservation resv = reservationSerivce.getResv(req);
		
		
		req.getRequestDispatcher("/WEB-INF/views/user/mypage.jsp").forward(req, resp);
	}
}
