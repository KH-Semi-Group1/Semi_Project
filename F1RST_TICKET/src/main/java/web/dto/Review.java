package web.dto;

import java.util.Date;

public class Review {
	
	private int reviewno;
	private String userid;
	private int resno;
	private String reviewtitle;
	private String reviewcontent;
	private int reviewscope;
	private Date writedate;
	
	public Review() {}

	public Review(int reviewno, String userid, int resno, String reviewtitle, String reviewcontent, int reviewscope,
			Date writedate) {
		super();
		this.reviewno = reviewno;
		this.userid = userid;
		this.resno = resno;
		this.reviewtitle = reviewtitle;
		this.reviewcontent = reviewcontent;
		this.reviewscope = reviewscope;
		this.writedate = writedate;
	}

	@Override
	public String toString() {
		return "Review [reviewno=" + reviewno + ", userid=" + userid + ", resno=" + resno + ", reviewtitle="
				+ reviewtitle + ", reviewcontent=" + reviewcontent + ", reviewscope=" + reviewscope + ", writedate="
				+ writedate + "]";
	}

	public int getReviewno() {
		return reviewno;
	}

	public void setReviewno(int reviewno) {
		this.reviewno = reviewno;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public int getResno() {
		return resno;
	}

	public void setResno(int resno) {
		this.resno = resno;
	}

	public String getReviewtitle() {
		return reviewtitle;
	}

	public void setReviewtitle(String reviewtitle) {
		this.reviewtitle = reviewtitle;
	}

	public String getReviewcontent() {
		return reviewcontent;
	}

	public void setReviewcontent(String reviewcontent) {
		this.reviewcontent = reviewcontent;
	}

	public int getReviewscope() {
		return reviewscope;
	}

	public void setReviewscope(int reviewscope) {
		this.reviewscope = reviewscope;
	}

	public Date getWritedate() {
		return writedate;
	}

	public void setWritedate(Date writedate) {
		this.writedate = writedate;
	}
	
}
