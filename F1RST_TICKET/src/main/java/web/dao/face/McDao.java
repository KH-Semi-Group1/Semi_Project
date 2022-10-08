package web.dao.face;

import java.sql.Connection;
import java.util.List;

import web.dto.Musical;

public interface McDao {

	/**
	 * 뮤지컬 테이블 전체 조회
	 * 
	 * @param conn - DB 연결 객체
	 * @return List<Musical> - 테이블 전체 조회 결과 목록
	 */
	List<Musical> selectAll(Connection conn);

	/**
	 * 뮤지컬 테이블 신규 조회
	 * 
	 * @param conn - DB 연결 객체
	 * @return List<Musical> - 테이블 신규 조회 결과 목록(제일 최근 업로드된 7개 반환)
	 */
	List<Musical> selectNew(Connection conn);

	/**
	 * 뮤지컬 테이블 인기 조회
	 * 
	 * @param conn - DB 연결 객체
	 * @return List<Musical> - 테이블 인기 조회 결과 목록(like순)
	 */
	List<Musical> selectLike(Connection conn);

	/**
	 * 뮤지컬 테이블 MD-pick 조회
	 * 
	 * @param conn - DB 연결 객체
	 * @return List<Musical> - 테이블 MD-pick 조회 결과 목록(img가 null이 아닌 뮤지컬)
	 */
	List<Musical> selectMd(Connection conn);

}
