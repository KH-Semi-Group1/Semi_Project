package web.service.face;

import javax.servlet.http.HttpServletRequest;

import web.dto.User;

public interface UserService {

	public User getJoinUser(HttpServletRequest req);

	public void Join(User user);
	
	/**
	 * 로그인 정보 추출
	 * 
	 * @param req - 요청 정보 객체
	 * @return User - 로그인 정보(userid, userpw)
	 */
	public User getLoginUser(HttpServletRequest req);

	/**
	 * 로그인 인증 처리
	 * 
	 * @param user - 로그인 정보(userid, userpw)
	 * @return boolean - true 인증 성공 / false 인증 실패
	 */
	public boolean login(User user);

	/**
	 * 유저 정보 가져오기
	 * 
	 * @param user - 조회할 회원 아이디 가진 객체
	 * @return User - 조회된 회원 정보(userid, userpw, ...)
	 */
	public User info(User user);


	/**
	 * 
	 * @param userId - 아이디 중복체크
	 * @return boolean - true 중복값 없음 / false 아이디 중복
	 */

	
}


