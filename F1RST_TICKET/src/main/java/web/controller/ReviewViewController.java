package web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.dto.Comment;
import web.dto.Review;
import web.dto.ReviewFile;
import web.service.face.ReviewService;
import web.service.impl.ReviewServiceImpl;

@WebServlet("/review/view")
public class ReviewViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//서비스객체
	private ReviewService reviewService = new ReviewServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//전달파라미터 저장 객체 얻기
		Review reviewno = reviewService.getReviewno(req);
		
		//상세보기 결과 조회
		Review viewReview = reviewService.view(reviewno);
		
		//조회결과 MODEL값 전달
		req.setAttribute("viewReview", viewReview);
		
		//첨부파일 정보 조회
		ReviewFile reviewFile = reviewService.viewFile(viewReview);
		
		//첨부파일 MODEL값 전달
		req.setAttribute("reviewFile", reviewFile);
		
		//View 지정응답
		req.getRequestDispatcher("/WEB-INF/views/review/view.jsp").forward(req, resp);
		
		
	}

}
