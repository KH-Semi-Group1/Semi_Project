package web.dao.face;

import java.sql.Connection;
import java.util.List;

import web.dto.Cart;

public interface CartDao {

	/**
	 * 뮤지컬 테이블 전체 조회
	 * 
	 * @param conn - DB 연결 객체
	 * @return List<Cart> - 테이블 전체 조회 결과 목록
	 */
	List<Cart> selectAll(Connection conn);

}
