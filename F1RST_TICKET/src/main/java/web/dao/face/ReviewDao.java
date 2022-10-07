package web.dao.face;

import java.sql.Connection;
import java.util.List;

import util.Paging;
import web.dto.Review;
import web.dto.ReviewFile;

public interface ReviewDao {

	/**
	 * 총 게시글 수 조회
	 * 
	 * @param conn - DB연결 객체
	 * @return int - 테이블의 전체 행 수
	 */
	public int selectCntAll(Connection conn);

	/**
	 * 테이블 전체 조회 (페이징처리)
	 * 
	 * @param conn - DB연결 객체
	 * @param paging - 페이징 정보 객체
	 * @return List<Review> - 테이블 페이징 목록 조회 결과
	 */
	public List<Review> selectAll(Connection conn, Paging paging);

	/**
	 * 지정된 reviewno의 게시글 조회하기
	 * 
	 * @param conn - DB연결 객체
	 * @param reviewno - 조회할 게시글의 reviewno를 가진 DTO 객체
	 * @return Review - 조회된 게시글의 상세정보 DTO객체
	 */
	public Review selectReviewByReviewno(Connection conn, Review reviewno);

	/**
	 * 첨부파일 정보 조회
	 * 
	 * @param conn - DB연결 객체
	 * @param viewReview - 조회할 게시글 번호
	 * @return ReviewFile - 첨부파일 정보
	 */
	public ReviewFile selectFile(Connection conn, Review viewReview);

}
