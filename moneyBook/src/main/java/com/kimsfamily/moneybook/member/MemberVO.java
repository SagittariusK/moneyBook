package com.kimsfamily.moneybook.member;

public class MemberVO {
	private String user_seq;
	private String user_id;
	private String user_password;
	private String user_name;
	private String user_nickname;
	private String user_email;
	private String user_gubun;
	private String user_gubun_update;
	private String user_gender;
	private String user_bdate;
	private String user_tel;
	private String user_phone;
	private String user_zipcode_seq;
	private String user_zipcode;
	private String user_addr;
	private String user_addr2;
	private String user_addr_detail;
	private String reg_date;
	private String last_update;
	private String auth_vnumber;
	private String auth_name;
	private String auth_bdate;
	private String auth_gender;
	private String di_no;
	private String ci_no;
	private String etc_1;
	private String etc_2;
	private String etc_3;
	private String etc_4;
	private String etc_5;

	public MemberVO() {
		super();
	}

	public MemberVO(String user_seq, String user_id, String user_password, String user_name, String user_nickname,
			String user_email, String user_gubun, String user_gubun_update, String user_gender, String user_bdate,
			String user_tel, String user_phone, String user_zipcode_seq, String user_zipcode, String user_addr,
			String user_addr2, String user_addr_detail, String reg_date, String last_update, String auth_vnumber,
			String auth_name, String auth_bdate, String auth_gender, String di_no, String ci_no, String etc_1,
			String etc_2, String etc_3, String etc_4, String etc_5) {
		super();
		this.user_seq = user_seq;
		this.user_id = user_id;
		this.user_password = user_password;
		this.user_name = user_name;
		this.user_nickname = user_nickname;
		this.user_email = user_email;
		this.user_gubun = user_gubun;
		this.user_gubun_update = user_gubun_update;
		this.user_gender = user_gender;
		this.user_bdate = user_bdate;
		this.user_tel = user_tel;
		this.user_phone = user_phone;
		this.user_zipcode_seq = user_zipcode_seq;
		this.user_zipcode = user_zipcode;
		this.user_addr = user_addr;
		this.user_addr2 = user_addr2;
		this.user_addr_detail = user_addr_detail;
		this.reg_date = reg_date;
		this.last_update = last_update;
		this.auth_vnumber = auth_vnumber;
		this.auth_name = auth_name;
		this.auth_bdate = auth_bdate;
		this.auth_gender = auth_gender;
		this.di_no = di_no;
		this.ci_no = ci_no;
		this.etc_1 = etc_1;
		this.etc_2 = etc_2;
		this.etc_3 = etc_3;
		this.etc_4 = etc_4;
		this.etc_5 = etc_5;
	}

	public String getUser_seq() {
		return user_seq;
	}

	public void setUser_seq(String user_seq) {
		this.user_seq = user_seq;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_nickname() {
		return user_nickname;
	}

	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_gubun() {
		return user_gubun;
	}

	public void setUser_gubun(String user_gubun) {
		this.user_gubun = user_gubun;
	}

	public String getUser_gubun_update() {
		return user_gubun_update;
	}

	public void setUser_gubun_update(String user_gubun_update) {
		this.user_gubun_update = user_gubun_update;
	}

	public String getUser_gender() {
		return user_gender;
	}

	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}

	public String getUser_bdate() {
		return user_bdate;
	}

	public void setUser_bdate(String user_bdate) {
		this.user_bdate = user_bdate;
	}

	public String getUser_tel() {
		return user_tel;
	}

	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public String getUser_zipcode_seq() {
		return user_zipcode_seq;
	}

	public void setUser_zipcode_seq(String user_zipcode_seq) {
		this.user_zipcode_seq = user_zipcode_seq;
	}

	public String getUser_zipcode() {
		return user_zipcode;
	}

	public void setUser_zipcode(String user_zipcode) {
		this.user_zipcode = user_zipcode;
	}

	public String getUser_addr() {
		return user_addr;
	}

	public void setUser_addr(String user_addr) {
		this.user_addr = user_addr;
	}

	public String getUser_addr2() {
		return user_addr2;
	}

	public void setUser_addr2(String user_addr2) {
		this.user_addr2 = user_addr2;
	}

	public String getUser_addr_detail() {
		return user_addr_detail;
	}

	public void setUser_addr_detail(String user_addr_detail) {
		this.user_addr_detail = user_addr_detail;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}

	public String getLast_update() {
		return last_update;
	}

	public void setLast_update(String last_update) {
		this.last_update = last_update;
	}

	public String getAuth_vnumber() {
		return auth_vnumber;
	}

	public void setAuth_vnumber(String auth_vnumber) {
		this.auth_vnumber = auth_vnumber;
	}

	public String getAuth_name() {
		return auth_name;
	}

	public void setAuth_name(String auth_name) {
		this.auth_name = auth_name;
	}

	public String getAuth_bdate() {
		return auth_bdate;
	}

	public void setAuth_bdate(String auth_bdate) {
		this.auth_bdate = auth_bdate;
	}

	public String getAuth_gender() {
		return auth_gender;
	}

	public void setAuth_gender(String auth_gender) {
		this.auth_gender = auth_gender;
	}

	public String getDi_no() {
		return di_no;
	}

	public void setDi_no(String di_no) {
		this.di_no = di_no;
	}

	public String getCi_no() {
		return ci_no;
	}

	public void setCi_no(String ci_no) {
		this.ci_no = ci_no;
	}

	public String getEtc_1() {
		return etc_1;
	}

	public void setEtc_1(String etc_1) {
		this.etc_1 = etc_1;
	}

	public String getEtc_2() {
		return etc_2;
	}

	public void setEtc_2(String etc_2) {
		this.etc_2 = etc_2;
	}

	public String getEtc_3() {
		return etc_3;
	}

	public void setEtc_3(String etc_3) {
		this.etc_3 = etc_3;
	}

	public String getEtc_4() {
		return etc_4;
	}

	public void setEtc_4(String etc_4) {
		this.etc_4 = etc_4;
	}

	public String getEtc_5() {
		return etc_5;
	}

	public void setEtc_5(String etc_5) {
		this.etc_5 = etc_5;
	}

	@Override
	public String toString() {
		return "MemberVO [user_seq=" + user_seq + ", user_id=" + user_id + ", user_password=" + user_password
				+ ", user_name=" + user_name + ", user_nickname=" + user_nickname + ", user_email=" + user_email
				+ ", user_gubun=" + user_gubun + ", user_gubun_update=" + user_gubun_update + ", user_gender="
				+ user_gender + ", user_bdate=" + user_bdate + ", user_tel=" + user_tel + ", user_phone=" + user_phone
				+ ", user_zipcode_seq=" + user_zipcode_seq + ", user_zipcode=" + user_zipcode + ", user_addr="
				+ user_addr + ", user_addr2=" + user_addr2 + ", user_addr_detail=" + user_addr_detail + ", reg_date="
				+ reg_date + ", last_update=" + last_update + ", auth_vnumber=" + auth_vnumber + ", auth_name="
				+ auth_name + ", auth_bdate=" + auth_bdate + ", auth_gender=" + auth_gender + ", di_no=" + di_no
				+ ", ci_no=" + ci_no + ", etc_1=" + etc_1 + ", etc_2=" + etc_2 + ", etc_3=" + etc_3 + ", etc_4=" + etc_4
				+ ", etc_5=" + etc_5 + "]";
	}

}
