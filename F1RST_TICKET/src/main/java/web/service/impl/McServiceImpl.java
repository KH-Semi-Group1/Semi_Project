package web.service.impl;

import java.util.List;

import common.JDBCTemplate;
import web.dao.face.McDao;
import web.dao.impl.McDaoImpl;
import web.dto.Musical;
import web.service.face.McService;

public class McServiceImpl implements McService {

	//DAO 객체 생성
	private McDao adminDao = new McDaoImpl();
	
	@Override
	public List<Musical> getAllMusical() {
		
		return adminDao.selectAll(JDBCTemplate.getConnection());
	}

	@Override
	public List<Musical> getNewMusical() {
		
		return adminDao.selectNew(JDBCTemplate.getConnection());
	}
	
	@Override
	public List<Musical> getLikeMusical() {

		return adminDao.selectLike(JDBCTemplate.getConnection());
	}
	
	@Override
	public List<Musical> getMdMusical() {

		return adminDao.selectMd(JDBCTemplate.getConnection());
	}
}
