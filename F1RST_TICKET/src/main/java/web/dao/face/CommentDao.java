package web.dao.face;

import java.sql.Connection;
import java.util.List;

import util.Paging;
import web.dto.Comment;
import web.dto.Review;

public interface CommentDao {

	/**
	 * 총 댓글 수 조회
	 * 
	 * @param conn - DB연결 객체
	 * @return int - 테이블의 전체 행 수
	 */
	public int selectCntAll(Connection conn);

	/**
	 * 리뷰 댓글 수 조회
	 * 
	 * @param conn - DB연결 객체
	 * @param reviewno - 리뷰 번호
	 * @return int - 테이블의 전체 행 수
	 */
	public int selectCntAll(Connection conn, int reviewno);
	
	/**
	 * 댓글 전체 조회, 페이징처리
	 * 
	 * @param conn - DB연결 객체
	 * @param paging - 페이징 정보 객체
	 * @param viewReview - 조회할 게시글 번호
	 * @return List<Comment> - 테이블 페이징 목록 조회 결과
	 */
	public List<Comment> selectComment(Connection conn, Paging paging, Review viewReview);

}
