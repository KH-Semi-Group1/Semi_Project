package web.service.face;

import java.util.List;

import web.dto.Cart;

public interface CartService {

	/**
	 * 뮤지컬 전체 조회
	 * 
	 * @return List<Cart> - 뮤지컬 전체 조회 결과 목록
	 */
	List<Cart> getAllCart();
}
