package web.dao.face;

import java.sql.Connection;

import web.dto.User;

public interface UserDao {

	int insert(Connection conn, User user);

	/**
	 * userid와 userpw를 동시에 만족하는 회원의 수 조회
	 * 	-> 로그인 인증 값으로 사용
	 * 
	 * @param conn - DB 연결 객체
	 * @param user - 조회할 회원 정보
	 * @return int - 0 존재하지 않는 회원 / 1 존재하는 회원
	 */
	public int selectCntUserByUseridUserpw(Connection conn, User user);

	/**
	 * userid를 이용해 회원 정보 찾기
	 * 
	 * @param conn - DB 연결 객체
	 * @param user - 조회할 userid를 가진 객체
	 * @return User - 조회된 회원 정보
	 */
	public User selectUserByUserid(Connection conn, User user);

	public int IdCheckController(User u);


	

	



	


}


