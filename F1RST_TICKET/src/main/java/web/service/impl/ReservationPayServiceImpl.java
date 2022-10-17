package web.service.impl;

import java.sql.Connection;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import common.JDBCTemplate;
import util.Paging;
import web.dao.face.ReservationPayDao;
import web.dao.impl.ReservationPayDaoImpl;
import web.dto.ReservationPay;
import web.dto.User;
import web.service.face.ReservationPayService;

public class ReservationPayServiceImpl implements ReservationPayService {
	
	DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	private ReservationPayDao rpayDao = new ReservationPayDaoImpl();
	
	@Override
	public List<ReservationPay> selectedMusical() {
		
		Connection conn = JDBCTemplate.getConnection();
		
		return rpayDao.selectAllM(conn);
	}

	@Override
	public void write(HttpServletRequest req) {
		Connection conn = JDBCTemplate.getConnection();
		ReservationPay rvpay = new ReservationPay();
		User user = new User();
		String mcname = req.getParameter("mcname");
		rvpay.setMcname(req.getParameter("mcname"));

		int mcno = rpayDao.selectMcno(conn, mcname);
		rvpay.setMcno(mcno);
		rvpay.setScheduletime("scheduleTime");
		try {
			rvpay.setScheduledate(sdf.parse(req.getParameter("scheduleDate")));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
//		rvpay.setResno("");
		int wrs = rpayDao.writeScheduleInfo(conn, rvpay);
		int setScheduleInfoid = rpayDao.selectSinfoid(conn);
		rvpay.setScheduleInfoid(setScheduleInfoid);
		rvpay.setPayment(req.getParameter("payment"));
		rvpay.setPaymoney(Integer.parseInt(req.getParameter("paymoney")));
		rvpay.setResdate(new Timestamp(System.currentTimeMillis()));
		rvpay.setTicketcount(Integer.parseInt(req.getParameter("ticketcount")));

//		rvpay.setSeatno(Integer.parseInt(req.getParameter("seatno")));
		
		user.setUserid( (String)req.getSession().getAttribute("loginid") );

		System.out.println(req.getSession().getAttribute("loginid"));
		int wrt = rpayDao.writeReservation(conn, rvpay, user);

//		int wrseat = rpayDao.writeSeat(conn, rvpay);
		}
}




