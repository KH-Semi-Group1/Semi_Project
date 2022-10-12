package web.service.impl;

import java.util.List;

import common.JDBCTemplate;
import web.dao.face.CartDao;
import web.dao.impl.CartDaoImpl;
import web.dto.Cart;

public class CartServiceImpl {

	//DAO 객체 생성
	private CartDao adminDao = new CartDaoImpl();
	
	public List<Cart> getAllCart() {
		
		return adminDao.selectAll(JDBCTemplate.getConnection());
	}
	
}
