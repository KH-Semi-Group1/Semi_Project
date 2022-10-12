package web.dto;

public class Cart {
	private int cartno;
	private String cartname;
	private String cartdate;
	private int qty;
	private String cartcon;
	private int price;
	
	public Cart() {}
	
	public Cart(int cartno, String cartname, String cartdate, int qty, String cartcon, int price) {
		super();
		this.cartno = cartno;
		this.cartname = cartname;
		this.cartdate = cartdate;
		this.qty = qty;
		this.cartcon = cartcon;
		this.price = price;
	}

	public int getCartno() {
		return cartno;
	}

	public void setCartno(int cartno) {
		this.cartno = cartno;
	}

	public String getCartname() {
		return cartname;
	}

	public void setCartname(String cartname) {
		this.cartname = cartname;
	}

	public String getCartdate() {
		return cartdate;
	}

	public void setCartdate(String cartdate) {
		this.cartdate = cartdate;
	}

	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	public String getCartcon() {
		return cartcon;
	}

	public void setCartcon(String cartcon) {
		this.cartcon = cartcon;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
	

}
