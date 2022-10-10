package web.service.face;

import javax.servlet.http.HttpServletRequest;

import web.dto.Admin;

public interface AdminService {

	// 관리자 로그인
	/**
	 * 관리자 로그인 정보 추출
	 * 
	 * @param req - 요청 정보 객체
	 * @return Admin - 로그인 정보(adminid, adminpw)
	 */
	public Admin getLoginAdmin(HttpServletRequest req);

	/**
	 * 관리자 로그인 인증 처리
	 * 
	 * @param admin - 로그인 정보(adminid, adminpw)
	 * @return boolean - true 인증성공 / false 인증실패
	 */
	public boolean login(Admin admin);

	/**
	 * 조회된 관리자 정보 가져오기
	 * 
	 * @param admin  - 로그인 정보(adminid, adminpw)
	 * @return Admin - 로그인 정보(adminid, adminpw)
	 */
	public Admin info(Admin admin);

}
