package web.dao.face;

import java.sql.Connection;
import java.util.List;

import web.dto.ReservationPay;
import web.dto.User;

public interface ReservationPayDao {

	public List<ReservationPay> selectAllM(Connection conn);

	public int selectMcno(Connection conn, String mcname);

	public int selectSinfoid(Connection conn);

	public int writeReservation(Connection conn, ReservationPay rvpay, User user);

	public int writeScheduleInfo(Connection conn, ReservationPay rvpay);

//	public int writeSeat(Connection conn, ReservationPay rvpay);



}
