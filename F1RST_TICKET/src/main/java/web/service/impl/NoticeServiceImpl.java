package web.service.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import common.JDBCTemplate;
import util.Paging;
import web.dao.face.NoticeDao;
import web.dao.impl.NoticeDaoImpl;
import web.dto.Notice;
import web.service.face.NoticeService;

public class NoticeServiceImpl implements NoticeService {
	
	//DAO객체
	private NoticeDao noticeDao = new NoticeDaoImpl();
	
	@Override
	public Paging getPaing(HttpServletRequest req) {
		//전달파라미터 curPage 추출하기
		String param = req.getParameter("curPage");
		int curPage = 0;
		if( param != null && !"".equals(param) ) {
			curPage = Integer.parseInt(param);
		} else {
			System.out.println("[WARN] NoticeService getPaging() - curPage가 null이거나 비어있음");
		}
		
		//총 게시글 수 조회하기
		int totalCount = noticeDao.selectCntAll(JDBCTemplate.getConnection());
		
		//Paging 객체 생성
		Paging paging = new Paging(totalCount, curPage);
		
		return paging;
	}
	
	@Override
	public List<Notice> getList(Paging paging) {
		return noticeDao.selectAll(JDBCTemplate.getConnection(), paging);
	}

}
