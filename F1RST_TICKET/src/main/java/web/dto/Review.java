package web.dto;

import java.util.Date;

public class Review {
	
	private int reviewno;
	private String userid;
	private int nuserno;
	private int mcno;
	private String reviewtitle;
	private String reviewcontent;
	private int reviewscope;
	private Date writedate;
	
	public Review() {}

	public Review(int reviewno, String userid, int nuserno, int mcno, String reviewtitle, String reviewcontent,
			int reviewscope, Date writedate) {
		super();
		this.reviewno = reviewno;
		this.userid = userid;
		this.nuserno = nuserno;
		this.mcno = mcno;
		this.reviewtitle = reviewtitle;
		this.reviewcontent = reviewcontent;
		this.reviewscope = reviewscope;
		this.writedate = writedate;
	}

	@Override
	public String toString() {
		return "Review [reviewno=" + reviewno + ", userid=" + userid + ", nuserno=" + nuserno + ", mcno=" + mcno
				+ ", reviewtitle=" + reviewtitle + ", reviewcontent=" + reviewcontent + ", reviewscope=" + reviewscope
				+ ", writedate=" + writedate + "]";
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

	public int getNuserno() {
		return nuserno;
	}

	public void setNuserno(int nuserno) {
		this.nuserno = nuserno;
	}

	public int getMcno() {
		return mcno;
	}

	public void setMcno(int mcno) {
		this.mcno = mcno;
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
