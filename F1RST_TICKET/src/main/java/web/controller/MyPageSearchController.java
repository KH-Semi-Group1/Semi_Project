package web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.Paging;
import web.dto.Musical;
import web.dto.Reservation;
import web.dto.User;
import web.service.face.McService;
import web.service.face.ReservationService;
import web.service.impl.McServiceImpl;
import web.service.impl.ReservationServiceImpl;

@WebServlet("/mypage/search")
public class MyPageSearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ReservationService reservationSerivce = new ReservationServiceImpl();
	private McService mcService = new McServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		Paging paging = reservationSerivce.getPaging(req);
		Musical musical = mcService.getMcno(req);
//		System.out.println(paging);

		User user = new User();
		user.setUserid((String) req.getSession().getAttribute("userid"));
		System.out.println(user);

		
//		List<Reservation> searchList = reservationSerivce.getListSearch(paging, user, musical);
//		System.out.println(searchList);
		
//		req.setAttribute("searchList", searchList);
//		req.setAttribute("paging", paging);


		Reservation resv = reservationSerivce.getResv(req);
		System.out.println(resv);

		boolean isResv = reservationSerivce.findResv(resv, user);
		System.out.println(isResv);

		if (isResv) {
			
			resv = reservationSerivce.info(resv, user);
			
			HttpSession session = req.getSession();

			session.setAttribute("isResv", isResv);
			
			session.setAttribute("userid", user.getUserid());

			// 아이디와 예약 번호가 일치하면
			req.getRequestDispatcher("/WEB-INF/views/user/watchmc.jsp").forward(req, resp);
			
		} else {
			// 아이디와 예약 번호가 일치하지 않으면
			req.getRequestDispatcher("/WEB-INF/views/user/myReservation_err.jsp").forward(req, resp);
		}
	}


}
