package web.service.face;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import web.dto.Musical;

public interface McService {

	/**
	 * 뮤지컬 전체 조회
	 * 
	 * @return List<Musical> - 뮤지컬 전체 조회 결과 목록
	 */
	List<Musical> getAllMusical();

	/**
	 * 뮤지컬 신규 조회
	 * 
	 * @return List<Musical> - 뮤지컬 신규 조회 결과 목록
	 */
	List<Musical> getNewMusical();

	/**
	 * 뮤지컬 인기 조회
	 * 
	 * @return List<Musical> - 뮤지컬 인기 조회 결과 목록
	 */
	List<Musical> getLikeMusical();

	/**
	 * 뮤지컬 MD-pick 조회
	 * 
	 * @return List<Musical> - 뮤지컬 MD-pick 조회 결과 목록
	 */
	List<Musical> getMdMusical();

	/**
	 * 전달파라미터를 Musical DTO로 저장하여 반환
	 * 
	 * @param req - 요청 정보 객체
	 * @return Musical - 전달파라미터 mcno를 저장한 객체
	 */
	public Musical getMcno(HttpServletRequest req);

	/**
	 * 전달된 mcno를 이용하여 뮤지컬을 조회한다
	 * 
	 * @param mcno - mcno - 조회할 mcno를 가진 DTO객체
	 * @return Musical - 조회된 뮤지컬 정보
	 */
	public Musical view(Musical mcno);

	/**
	 * 전달된 keyword를 이용하여 뮤지컬을 검색한다
	 * 
	 * @param keyword - 검색어
	 * @return List<Musical> - 검색결과 뮤지컬 목록
	 */
	List<Musical> getSearchList(String keyword);

}
