package web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.dto.Musical;
import web.service.face.McService;
import web.service.impl.McServiceImpl;


@WebServlet("/musical/mcView")
public class McViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	//서비스 객체
	private McService mcService = new McServiceImpl();
		
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(req.getParameter("mcno"));
		
		//전달파라미터 저장 객체 얻기
		Musical mcno = mcService.getMcno(req);
		System.out.println("전달파라미터 객체 : " + mcno);
				
		//상세보기 결과 조회
		Musical viewMc = mcService.view(mcno);
		System.out.println("상세보기 객체 : " + viewMc);
				
		//조회결과 MODEL값 전달
		req.setAttribute("viewMc", viewMc);
				
		//VIEW 지정 및 응답
		req.getRequestDispatcher("/WEB-INF/views/musical/mcView.jsp").forward(req, resp);
		
	}
	

}
