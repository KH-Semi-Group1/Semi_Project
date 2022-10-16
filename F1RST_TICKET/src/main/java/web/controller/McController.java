package web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.dto.Musical;
import web.service.face.McService;
import web.service.impl.McServiceImpl;


@WebServlet("/musical/mcList")
public class McController extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	//서비스 객체 생성
	private McService adminService = new McServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//뮤지컬 전체 조회
		List<Musical> musicalList = adminService.getAllMusical();
		
		//조회결과 전달
		req.setAttribute("musicalList", musicalList);
		
		//view 지정 및 응답
		req.getRequestDispatcher("/WEB-INF/views/musical/mcList.jsp").forward(req, resp);
	
	}
	

}
