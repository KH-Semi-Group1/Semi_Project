package web.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import common.JDBCTemplate;
import web.dao.face.ReservationPayDao;
import web.dto.ReservationPay;
import web.dto.User;

public class ReservationPayDaoImpl implements ReservationPayDao {

	private PreparedStatement ps = null;
	private ResultSet rs = null;
	
	@Override
	public List<ReservationPay> selectAllM(Connection conn) {

		String sql = "";
		sql = "SELECT mcname,mcno FROM MUSICAL";
		List<ReservationPay> mlist = new ArrayList<>();
		
		try {
			ps = conn.prepareStatement(sql);
			
			rs = ps.executeQuery();
			while(rs.next()) {
				ReservationPay r = new ReservationPay();
				
				r.setMcname(rs.getString("mcname"));
				r.setMcno(rs.getInt("mcno"));
				
				mlist.add(r);
				System.out.println("mlist =" + mlist);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		return mlist;
	
	}


	@Override
	public int selectMcno(Connection conn, String mcname) {
		String sql = "";
		sql = "SELECT mcno FROM musical WHERE mcname = ?";
		
		int res = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, mcname);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				
			ReservationPay r = new ReservationPay();
			res = rs.getInt("mcno");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);

		}
		return res;
	
	}


	@Override
	public int selectSinfoid(Connection conn) {
		String sql = "";
		sql = "SELECT ScheduleInfo_seq.nextval FROM dual";
		
		int nextScheduleInfono = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while(rs.next() ) {
				nextScheduleInfono = rs.getInt("nextval");
			}
		
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		return nextScheduleInfono;
	}


	@Override
	public int writeReservation(Connection conn, ReservationPay rvpay, User user) {
		
//		INSERT INTO reservation (resno,scheduleinfoid,userid,resdate,ticketcount,payment,paymoney
//				) VALUES (99, 1,'test',(CURRENT_TIMESTAMP),3,'카드', 300000);
		
		String sql = "";
		sql = "INSERT INTO reservation (resno,scheduleinfoid,userid,resdate,ticketcount,payment,paymoney)";
		sql += " VALUES( reservation_seq.nextval, ?, ?,(CURRENT_TIMESTAMP), ?, ?, ?)";
		int res = 0;
		
		System.out.println(rvpay.getScheduleInfoid());
		System.out.println(user.getUserid());
		System.out.println(rvpay.getResdate());
		System.out.println(rvpay.getTicketcount());
		System.out.println(rvpay.getPayment());
		System.out.println(rvpay.getPaymoney());
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, rvpay.getScheduleInfoid());
			ps.setString(2, user.getUserid());
//			ps.setTimestamp(3, rvpay.getResdate());
			ps.setInt(3, rvpay.getTicketcount());
			ps.setString(4, rvpay.getPayment());
			ps.setInt(5, rvpay.getPaymoney());
			
			System.out.println(ps);
			res = ps.executeUpdate();
			System.out.println(res+"!@#!@$!@%$!@%!@%@!%!@%@!%");
			System.out.println(sql);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			JDBCTemplate.close(ps);
		}
		return res;
	
	
	}


	@Override
	public int writeScheduleInfo(Connection conn, ReservationPay rvpay) {
		String sql = "";
		sql = "INSERT INTO scheduleinfo (scheduleinfoid, mcno, scheduledate, scheduletime)";
		sql += " VALUES( SCHEDULEINFO_SEQ.NEXTVAL, ?, (CURRENT_TIMESTAMP), ?)";
		int res = 0;
		
		
		try {
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd"); 
        	//원하는 데이터 포맷 지정
			String strNowDate = simpleDateFormat.format(rvpay.getScheduledate()); 
		
			ps = conn.prepareStatement(sql);
			
//			ps.setInt(1, rvpay.getScheduleInfoid());
			ps.setInt(1, rvpay.getMcno());
			ps.setDate(2, java.sql.Date.valueOf(strNowDate));
			ps.setString(3, rvpay.getScheduletime());
			
			res = ps.executeUpdate();

			System.out.println(rvpay.getScheduledate());
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			JDBCTemplate.close(ps);
		}
		return res;
	
	
	}


//	@Override
//	public int writeSeat(Connection conn, ReservationPay rvpay) {
//		String sql = "";
//		sql = "INSERT INTO seat (seatno, scheduleinfoid)";
//		sql += " VALUES( TO_DATE(?), ?)";
//		int res = 0;
//		
//		try {
//			ps = conn.prepareStatement(sql);
//			
//			ps.setInt(1, rvpay.getSeatno());
//			ps.setInt(2, rvpay.getScheduleInfoid());
//
//			res = ps.executeUpdate();
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//
//			JDBCTemplate.close(ps);
//		}
//		return res;
//	
//	}


}