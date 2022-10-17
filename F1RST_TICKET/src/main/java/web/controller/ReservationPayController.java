package web.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.Paging;
import web.dto.ReservationPay;
import web.dto.User;
import web.service.face.ReservationPayService;
import web.service.impl.ReservationPayServiceImpl;

@WebServlet("/reservationpay")
public class ReservationPayController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private ReservationPayService reservationpayService = new ReservationPayServiceImpl(); 
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		List<ReservationPay> reservationpay = reservationpayService.selectedMusical();
		System.out.println(reservationpay);
		
		req.setAttribute("mlist", reservationpay);
//		req.getRequestDispatcher("/WEB-INF/views/reservation/reservationpay.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
		
		resp.setContentType("text/html;charset = utf-8");
		req.setCharacterEncoding("utf-8");
	
		
		
		reservationpayService.write(req);
		
		resp.sendRedirect("/");

//		String mcname = req.getParameter("mcname"); 
//		System.out.println(mcname);
//		String scheduleDate = req.getParameter("scheduleDate"); 
//		System.out.println(scheduleDate);
//		String scheduleTime = req.getParameter("scheduleTime"); 
//		System.out.println(scheduleTime);
//		int ticketcount = Integer.parseInt(req.getParameter("ticketcount")); 
//		System.out.println(ticketcount);
//		int paymoney = Integer.parseInt(req.getParameter("paymoney")); 
//		System.out.println(paymoney);
//		String[] seatno = req.getParameterValues("seatno"); 
//		System.out.println(seatno);
//		String resdate = req.getParameter("resdate");
//		System.out.println(resdate);
//		String payment = req.getParameter("payment");
//		System.out.println(payment);
		
		
	}

	
}
