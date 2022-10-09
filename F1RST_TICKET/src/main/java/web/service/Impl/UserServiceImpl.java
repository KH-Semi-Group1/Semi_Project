package web.service.Impl;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;

import common.JDBCTemplate;
import web.dao.Impl.UserDaoImpl;
import web.dao.face.UserDao;
import web.dto.User;
import web.service.face.UserService;

public class UserServiceImpl implements UserService {

	private UserDao userDao = new UserDaoImpl();
	
	@Override
	public User getJoinUser(HttpServletRequest req) {
		
		User user = new User();
		
		user.setUsername( req.getParameter("username") );
		user.setUserid( req.getParameter("userid") );
		user.setUserpw( req.getParameter("userpw") );
		user.setGender( req.getParameter("gender") );
		user.setUserbirth( req.getParameter("userbirth") );
		user.setUphone( req.getParameter("uphone") );
		user.setAddress( req.getParameter("address") );
		user.setEmail( req.getParameter("email") );
		
		return user;
	}

	@Override
	public void Join(User user) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		if( userDao.insert(conn, user) > 0 ) {
			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);
		}
		
	}

	@Override
	public User getLoginUser(HttpServletRequest req) {
		
		User user = new User();
		
		user.setUserid(req.getParameter("userid"));
		user.setUserpw(req.getParameter("userpw"));
		
		return user;
	}
	
	@Override
	public boolean login(User user) {

		// 로그인 인증 성공
		if(userDao.selectCntUserByUseridUserpw(JDBCTemplate.getConnection(), user) > 0 ) {
			return true;
		}
		// 로그인 인증 실패
		return false;
	}
	
	@Override
	public User info(User user) {
		return userDao.selectUserByUserid(JDBCTemplate.getConnection(), user);
	}




}
