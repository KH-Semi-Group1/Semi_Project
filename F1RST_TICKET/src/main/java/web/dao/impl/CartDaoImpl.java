package web.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBCTemplate;
import web.dao.face.CartDao;
import web.dto.Cart;

public class CartDaoImpl implements CartDao{
	private PreparedStatement ps; //SQL수행 객체
	
	@Override
	public List<Cart> selectAll(Connection conn) {
		
		String sql = "";
		sql += "SELECT * FROM cart";
		sql += " ORDER BY mcno DESC";
		
		//결과 저장할 List객체
		List<Cart> cartList = new ArrayList<>();
		
		try {
			ps = conn.prepareStatement(sql); //SQL수행 객체
			ResultSet rs = ps.executeQuery(); //SQL수행 및 결과 집합 저장
		
		//조회결과 처리
		while (rs.next()) {
			Cart cart = new Cart(); //결과값 저장 객체
			
			cart.setCartno(rs.getInt("cartno"));
			cart.setCartname(rs.getString("cartname"));
			cart.setCartdate(rs.getString("cartdate"));
			cart.setQty(rs.getInt("qty"));
			cart.setCartcon(rs.getString("carcon"));
			cart.setPrice(rs.getInt("price"));
			
			//리스트에 결과값 저장
			
			cartList.add(cart);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Connection rs = null;
			//DB객체 닫기
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		//결과값 반환
		return cartList;
	}

}
