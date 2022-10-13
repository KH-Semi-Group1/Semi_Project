package web.service.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import common.JDBCTemplate;
import web.dao.face.McDao;
import web.dao.impl.McDaoImpl;
import web.dto.Musical;
import web.service.face.McService;

public class McServiceImpl implements McService {

	//DAO 객체 생성
	private McDao mcDao = new McDaoImpl();
	
	@Override
	public List<Musical> getAllMusical() {
		
		return mcDao.selectAll(JDBCTemplate.getConnection());
	}

	@Override
	public List<Musical> getNewMusical() {
		
		return mcDao.selectNew(JDBCTemplate.getConnection());
	}
	
	@Override
	public List<Musical> getLikeMusical() {

		return mcDao.selectLike(JDBCTemplate.getConnection());
	}
	
	@Override
	public List<Musical> getMdMusical() {

		return mcDao.selectMd(JDBCTemplate.getConnection());
	}
	
	@Override
	public Musical getMcno(HttpServletRequest req) {
		//전달파라미터를 저장할 객체 생성
		Musical musical = new Musical();
		
		String param = req.getParameter("mcno");
		if( param != null && !"".equals(param) ) {
			musical.setMcno( Integer.parseInt(param) );
		} else {
			System.out.println("mcno값 null이거나 비어있음");
		}
		return musical;
	}
	
	@Override
	public Musical view(Musical mcno) {

		return mcDao.selectMusicalByMusical(JDBCTemplate.getConnection(), mcno);
	}

	@Override
	public List<Musical> getSearchList(String keyword) {
		return mcDao.searchList(JDBCTemplate.getConnection(), keyword);
	}
}
