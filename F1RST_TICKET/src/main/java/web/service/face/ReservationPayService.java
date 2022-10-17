package web.service.face;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import util.Paging;
import web.dto.ReservationPay;

public interface ReservationPayService {

	public List<ReservationPay> selectedMusical();

	public void write(HttpServletRequest req);

}
