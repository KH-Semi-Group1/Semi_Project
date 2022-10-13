package web.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBCTemplate;
import web.dao.face.McDao;
import web.dto.Musical;

public class McDaoImpl implements McDao {
	
	private PreparedStatement ps; //SQL수행 객체
	private ResultSet rs; //SQL조회 결과 객체

	@Override
	public List<Musical> selectAll(Connection conn) {
		
		String sql = "";
		sql += "SELECT * FROM musical";
		sql += " ORDER BY mcno DESC";
		
		//결과 저장할 List객체
		List<Musical> musicalList = new ArrayList<>();
		
		try {
			ps = conn.prepareStatement(sql); //SQL수행 객체
			rs = ps.executeQuery(); //SQL수행 및 결과 집합 저장
			
			//조회결과 처리
			while (rs.next()) {
				Musical musical = new Musical(); //결과값 저장 객체
				
				musical.setMcno(rs.getInt("mcno"));
				musical.setMcname(rs.getString("mcname"));
				musical.setMcage(rs.getString("mcage"));
				musical.setMctime(rs.getString("mctime"));
				musical.setMcstart(rs.getString("mcstart"));
				musical.setMcend(rs.getString("mcend"));
				musical.setMcact(rs.getString("mcact"));
				musical.setMcloc(rs.getString("mcloc"));
				musical.setMclike(rs.getInt("mclike"));
				musical.setMcimg(rs.getString("mcimg"));
				musical.setMcimgcas(rs.getString("mcimgcas"));
				musical.setMcimginfo(rs.getString("mcimginfo"));
				musical.setMcimgchk(rs.getString("mcimgchk"));
				musical.setMcimgsale(rs.getString("mcimgsale"));
				
				//리스트에 결과값 저장
				musicalList.add(musical);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			//DB객체 닫기
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		//결과값 반환
		return musicalList;
	}
	
	@Override
	public List<Musical> selectNew(Connection conn) {

		String sql = "";
		sql += "SELECT * FROM (SELECT * FROM musical ORDER BY mcno DESC) WHERE ROWNUM < 8";
		
		//결과 저장할 List객체
		List<Musical> mcNewList = new ArrayList<>();
		
		try {
			ps = conn.prepareStatement(sql); //SQL수행 객체
			rs = ps.executeQuery(); //SQL수행 및 결과 집합 저장
			
			//조회결과 처리
			while (rs.next()) {
				Musical musical = new Musical(); //결과값 저장 객체
				
				musical.setMcno(rs.getInt("mcno"));
				musical.setMcname(rs.getString("mcname"));
				musical.setMcage(rs.getString("mcage"));
				musical.setMctime(rs.getString("mctime"));
				musical.setMcstart(rs.getString("mcstart"));
				musical.setMcend(rs.getString("mcend"));
				musical.setMcact(rs.getString("mcact"));
				musical.setMcloc(rs.getString("mcloc"));
				musical.setMclike(rs.getInt("mclike"));
				musical.setMcimg(rs.getString("mcimg"));
				musical.setMcimgcas(rs.getString("mcimgcas"));
				musical.setMcimginfo(rs.getString("mcimginfo"));
				musical.setMcimgchk(rs.getString("mcimgchk"));
				musical.setMcimgsale(rs.getString("mcimgsale"));
				
				//리스트에 결과값 저장
				mcNewList.add(musical);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			//DB객체 닫기
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		//결과값 반환
		return mcNewList;
	}
	
	@Override
	public List<Musical> selectLike(Connection conn) {
		String sql = "";
		sql += "SELECT * FROM (SELECT * FROM musical ORDER BY mclike DESC) ";
		
		//결과 저장할 List객체
		List<Musical> mcLikeList = new ArrayList<>();
		
		try {
			ps = conn.prepareStatement(sql); //SQL수행 객체
			rs = ps.executeQuery(); //SQL수행 및 결과 집합 저장
			
			//조회결과 처리
			while (rs.next()) {
				Musical musical = new Musical(); //결과값 저장 객체
				
				musical.setMcno(rs.getInt("mcno"));
				musical.setMcname(rs.getString("mcname"));
				musical.setMcage(rs.getString("mcage"));
				musical.setMctime(rs.getString("mctime"));
				musical.setMcstart(rs.getString("mcstart"));
				musical.setMcend(rs.getString("mcend"));
				musical.setMcact(rs.getString("mcact"));
				musical.setMcloc(rs.getString("mcloc"));
				musical.setMclike(rs.getInt("mclike"));
				musical.setMcimg(rs.getString("mcimg"));
				musical.setMcimgcas(rs.getString("mcimgcas"));
				musical.setMcimginfo(rs.getString("mcimginfo"));
				musical.setMcimgchk(rs.getString("mcimgchk"));
				musical.setMcimgsale(rs.getString("mcimgsale"));
				
				//리스트에 결과값 저장
				mcLikeList.add(musical);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			//DB객체 닫기
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		//결과값 반환
		return mcLikeList;
	}
	
	@Override
	public List<Musical> selectMd(Connection conn) {
		String sql = "";
		sql += "SELECT * FROM musical WHERE mcimg IS NOT NULL ORDER BY mcno DESC";
		
		//결과 저장할 List객체
		List<Musical> mcMdList = new ArrayList<>();
		
		try {
			ps = conn.prepareStatement(sql); //SQL수행 객체
			rs = ps.executeQuery(); //SQL수행 및 결과 집합 저장
			
			//조회결과 처리
			while (rs.next()) {
				Musical musical = new Musical(); //결과값 저장 객체
				
				musical.setMcno(rs.getInt("mcno"));
				musical.setMcname(rs.getString("mcname"));
				musical.setMcage(rs.getString("mcage"));
				musical.setMctime(rs.getString("mctime"));
				musical.setMcstart(rs.getString("mcstart"));
				musical.setMcend(rs.getString("mcend"));
				musical.setMcact(rs.getString("mcact"));
				musical.setMcloc(rs.getString("mcloc"));
				musical.setMclike(rs.getInt("mclike"));
				musical.setMcimg(rs.getString("mcimg"));
				musical.setMcimgcas(rs.getString("mcimgcas"));
				musical.setMcimginfo(rs.getString("mcimginfo"));
				musical.setMcimgchk(rs.getString("mcimgchk"));
				musical.setMcimgsale(rs.getString("mcimgsale"));
				
				//리스트에 결과값 저장
				mcMdList.add(musical);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			//DB객체 닫기
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		//결과값 반환
		return mcMdList;
	}
	
	@Override
	public Musical selectMusicalByMusical(Connection conn, Musical mcno) {
		String sql = "";
		sql += "SELECT * FROM musical WHERE mcno = ?";
		
		Musical viewMC = null;
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, mcno.getMcno());
			
			rs = ps.executeQuery();
			
			while( rs.next() ) {
				viewMC = new Musical();
				
				viewMC.setMcno(rs.getInt("mcno"));
				viewMC.setMcname(rs.getString("mcname"));
				viewMC.setMcage(rs.getString("mcage"));
				viewMC.setMctime(rs.getString("mctime"));
				viewMC.setMcstart(rs.getString("mcstart"));
				viewMC.setMcend(rs.getString("mcend"));
				viewMC.setMcact(rs.getString("mcact"));
				viewMC.setMcloc(rs.getString("mcloc"));
				viewMC.setMclike(rs.getInt("mclike"));
				viewMC.setMcimg(rs.getString("mcimg"));
				viewMC.setMcimgcas(rs.getString("mcimgcas"));
				viewMC.setMcimginfo(rs.getString("mcimginfo"));
				viewMC.setMcimgchk(rs.getString("mcimgchk"));
				viewMC.setMcimgsale(rs.getString("mcimgsale"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		return viewMC;
	}
	
	@Override
	public List<Musical> searchList(Connection conn, String keyword) {
		//결과 저장할 List객체
		List<Musical> mcSearchList = new ArrayList<>();
		
		String sql = "";
		sql += "SELECT * FROM musical WHERE mcname ";
		
		try {
			 if(keyword != null && !keyword.equals("") ){
	                sql +=" LIKE '%"+keyword+"%' order by mcno desc";
	            }


			ps = conn.prepareStatement(sql); //SQL수행 객체
			
			rs = ps.executeQuery(); //SQL수행 및 결과 집합 저장
			
			//조회결과 처리
			while (rs.next()) {
				Musical musical = new Musical(); //결과값 저장 객체
				
				musical.setMcno(rs.getInt("mcno"));
				musical.setMcname(rs.getString("mcname"));
				musical.setMcage(rs.getString("mcage"));
				musical.setMctime(rs.getString("mctime"));
				musical.setMcstart(rs.getString("mcstart"));
				musical.setMcend(rs.getString("mcend"));
				musical.setMcact(rs.getString("mcact"));
				musical.setMcloc(rs.getString("mcloc"));
				musical.setMclike(rs.getInt("mclike"));
				musical.setMcimg(rs.getString("mcimg"));
				musical.setMcimgcas(rs.getString("mcimgcas"));
				musical.setMcimginfo(rs.getString("mcimginfo"));
				musical.setMcimgchk(rs.getString("mcimgchk"));
				musical.setMcimgsale(rs.getString("mcimgsale"));
				
				//리스트에 결과값 저장
				mcSearchList.add(musical);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			//DB객체 닫기
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		//결과값 반환
		return mcSearchList;
		
	}
}
