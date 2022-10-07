package web.service.impl;

import java.sql.Connection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import common.JDBCTemplate;
import util.Paging;
import web.dao.face.ReviewDao;
import web.dao.impl.ReviewDaoImpl;
import web.dto.Review;
import web.dto.ReviewFile;
import web.service.face.ReviewService;

public class ReviewServiceImpl implements ReviewService {
	
	//DAO 객체
	ReviewDao reviewDao = new ReviewDaoImpl();
	
	//Connection객체
	private Connection conn = JDBCTemplate.getConnection();
	
	@Override
	public Paging getPaging(HttpServletRequest req) {
		
		String param = req.getParameter("curPage");
		int curPage = 0;
		if( param != null && !"".equals(param) ) {
			curPage = Integer.parseInt(param);
		} else {
			System.out.println("[WARN] BoardService getPaging() - curPage가 null이거나 비어있음");
		}
		
		//총 게시글 수 조회하기
		int totalCount = reviewDao.selectCntAll(JDBCTemplate.getConnection());
		
		//Paging 객체 생성
		Paging paging = new Paging(totalCount, curPage);
		
		return paging;
	}
	
	@Override
	public List<Review> getList(Paging paging) {
		return reviewDao.selectAll(conn, paging);
	}
	
	@Override
	public Review getReviewno(HttpServletRequest req) {
		
		//전달 파라미터를 저장할 객체 생성
		Review review = new Review();
		
		String param = req.getParameter("reviewno");
		
		if( param != null && !"".equals(param) ) {
			review.setReviewno( Integer.parseInt(param) );
		} else {
			System.out.println("[WARN] ReviewService getReviewno() - reviewno값이 null이거나 비어있음");
		}
		
		return review;		
		
	}
	
	@Override
	public Review view(Review reviewno) {
		return reviewDao.selectReviewByReviewno(conn, reviewno);
	}

	@Override
	public ReviewFile viewFile(Review viewReview) {
		return reviewDao.selectFile(conn, viewReview);
	}
	
}
