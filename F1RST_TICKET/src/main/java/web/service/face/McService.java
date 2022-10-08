package web.service.face;

import java.util.List;

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

}
