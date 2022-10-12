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

	/**
	 * 지정된 mcno의 뮤지컬 조회하기
	 * 
	 * @param conn - DB 연결 객체
	 * @param mcno - 조회할 뮤지컬의 mcno를 가진 DTO객체
	 * @return Musical - 조회된 뮤지컬의 상세정보 DTO객체
	 */
	public Musical selectMusicalByMusical(Connection conn, Musical mcno);

}
