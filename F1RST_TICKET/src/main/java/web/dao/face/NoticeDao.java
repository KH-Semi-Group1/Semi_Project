package web.dao.face;

import java.sql.Connection;
import java.util.List;

import util.Paging;
import web.dto.Notice;

public interface NoticeDao {

	/**
	 * 총 게시글 수 조회
	 * 
	 * @param conn - DB연결 객체
	 * @return int - 테이블의 전체 행 수
	 */
	public int selectCntAll(Connection conn);

	/**
	 * 테이블 전체 조회 -> 페이징 처리 추가
	 * 
	 * @param conn - DB연결 객체
	 * @param paging - 페이징 정보 객체
	 * @return List<Notice> - 테이블 페이징 목록 조회 결과
	 */
	public List<Notice> selectAll(Connection conn, Paging paging);

}
