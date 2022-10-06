package web.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBCTemplate;
import util.Paging;
import web.dao.face.NoticeDao;
import web.dto.Notice;

public class NoticeDaoImpl implements NoticeDao {
	
	private PreparedStatement ps = null;
	private ResultSet rs = null;
	
	@Override
	public int selectCntAll(Connection conn) {
		//SQL 작성
		String sql = "";
		sql += "SELECT count(*) cnt FROM notice";
		
		//총 게시글 수
		int count = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while( rs.next() ) {
				count = rs.getInt("cnt");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		
		return count;
	}
	
	@Override
	public List<Notice> selectAll(Connection conn, Paging paging) {
		
		//--- SQL ---
		String sql = "";
		sql += "SELECT * FROM (";
		sql += "	SELECT rownum rnum, N.* FROM (";
		sql += "		SELECT";
		sql += "			notino, adminid, notitype, notititle";
		sql += "			, opendate, noticontent, notihit, notidate";
		sql += "		FROM notice";
		sql += "	ORDER BY notino DESC";
		sql += "	) N";
		sql += " ) NOTICE";
		sql += " WHERE rnum BETWEEN ? AND ?";
		
		//--- 조회 결과 저장할 List 객체 ---
		List<Notice> noticeList = new ArrayList<>();
		
		try {
			
			//--- SQL 수행 객체 생성 ---
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, paging.getStartNo());
			ps.setInt(2, paging.getEndNo());
			
			//--- SQL 수행 및 결과 저장 ---
			rs = ps.executeQuery();
			
			//--- 조회 결과 처리 ---
			while( rs.next() ) {
				Notice n = new Notice();
				
				n.setNotino( rs.getInt("notino") );
				n.setAdminid( rs.getString("adminid") );
				n.setNotitype( rs.getString("notitype") );
				n.setNotititle( rs.getString("notititle") );
				n.setOpendate( rs.getDate("opendate") );
				n.setNoticontent( rs.getString("noticontent") );
				n.setNotihit( rs.getInt("notihit") );
				n.setNotidate( rs.getDate("notidate") );
				
				noticeList.add(n);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		
		//--- 최종 결과 반환 ---
		return noticeList;

	}
}
