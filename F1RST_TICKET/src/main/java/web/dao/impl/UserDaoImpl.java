package web.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.JDBCTemplate;
import web.dao.face.UserDao;
import web.dto.User;

public class UserDaoImpl implements UserDao {

	private PreparedStatement ps;
	private ResultSet rs;
	
	@Override
	public int insert(Connection conn, User user) {
		
		String sql = "";
		sql += "INSERT INTO usertable ( username, userid, userpw, gender, userbirth, uphone, address, email )";
		sql += " VALUES ( ?, ?, ?, ?, ?, ?, ?, ?)";
		
		int ress = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getUserid());
			ps.setString(3, user.getUserpw());
			ps.setString(4, user.getGender());
			ps.setString(5, user.getUserbirth());
			ps.setString(6, user.getUphone());
			ps.setString(7, user.getAddress());
			ps.setString(8, user.getEmail());
			
			ress = ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(ps);
		}
		
		return ress;
		
	}
	@Override
	public int selectCntUserByUseridUserpw(Connection conn, User user) {

		String sql = "";
		sql += "SELECT count(*) cnt FROM usertable";
		sql += " WHERE userid = ?";
		sql += " 	AND userpw = ?";
		
		int cnt = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, user.getUserid());
			ps.setString(2, user.getUserpw());
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				cnt=rs.getInt("cnt");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		return cnt;
	}
	
	@Override
	public User selectUserByUserid(Connection conn, User user) {

		String sql = "";
		sql += "SELECT * FROM usertable";
		sql += " WHERE userid = ?";
		
		User res = null;
		
		try {
			ps=conn.prepareStatement(sql);
			ps.setString(1, user.getUserid());
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				
				res = new User();
				
				res.setUserid(rs.getString("username"));
				res.setUserid(rs.getString("userid"));
				res.setUserpw(rs.getString("userpw"));
				res.setGender(rs.getString("gender"));
				res.setUserbirth(rs.getString("userbirth"));
				res.setUphone(rs.getString("uphone"));
				res.setAddress(rs.getString("address"));
				res.setEmail(rs.getString("email"));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		
		return res;
	}
	
//	@Override
//	public User selectOne(Connection conn, String userid) {
//
//		User u = null;
//		PreparedStatement pstmt = null;
//		ResultSet rset = null;
//		
//		String query = "select * from usertable where userid=?";
//
//		try {
//			pstmt = conn.prepareStatement(query);
//			pstmt.setString(1, userid);
//			rset = pstmt.executeQuery();
//			if (rset.next()) {
//				u = new User();
//				u.setUserid(rset.getString("username"));
//				u.setUserid(rset.getString("userid"));
//				u.setUserpw(rset.getString("userpw"));
//				u.setGender(rset.getString("gender"));
//				u.setUserbirth(rset.getString("userbirth"));
//				u.setUphone(rset.getString("uphone"));
//				u.setAddress(rset.getString("address"));
//				u.setEmail(rset.getString("email"));
//
//			}
//		} catch (SQLException e) {
//
//			e.printStackTrace();
//		} finally {
//			JDBCTemplate.close(rset);
//			JDBCTemplate.close(pstmt);
//		}
//		return u;
	
	@Override
	public int IdCheckController(User u) {
		Connection conn = JDBCTemplate.getConnection();
		String sql = "";
		sql += "SELECT * FROM USERTABLE WHERE userid = ?";
	
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, u.getUserid());
			rs = ps.executeQuery();
			if(rs.next()) {
				return 0;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		return 1;


	}
		
}