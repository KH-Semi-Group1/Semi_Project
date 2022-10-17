package web.service.face;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import util.Paging;
import web.dto.ReservationPay;
import web.dto.User;

public interface ReservationPayService {

	public List<ReservationPay> selectedMusical();

	public void write(HttpServletRequest req);
	
	public Paging getPaging(HttpServletRequest req, User user);

	public ReservationPay getMcname(HttpServletRequest req);

	public List<ReservationPay> getRsPayList(Paging paging, User user);

	public boolean findMcname(User user);

	public ReservationPay info(ReservationPay res, User user);

	public ReservationPay selectMcno(HttpServletRequest req, User user);

	public List<ReservationPay> getRsPayListMain(Paging paging, User user);

	public List<ReservationPay> getMcSearchList(String keyword, User user);

	public boolean searchMc(String keyword, User user);

	public ReservationPay selectSearchMc(HttpServletRequest req, User user);

	public ReservationPay info(ReservationPay res, User user, String keyword);

	public void searchRpMc(HttpServletRequest req);




}
