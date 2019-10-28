package com.kimsfamily.mc.lotto;

public class statisticsVO {

	int drwNo;
	String drwNoDate;
	String drwtNo1;
	String drwtNo2;
	String drwtNo3;
	String drwtNo4;
	String drwtNo5;
	String drwtNo6;
	String bnusNo;
	String firstPrzwnerCo;
	String totSellamnt;
	String firstAccumamnt;
	String firstWinamnt;
	String returnValue;

	public statisticsVO() {
		super();
	}

	public statisticsVO(int drwNo, String drwNoDate, String drwtNo1, String drwtNo2, String drwtNo3, String drwtNo4,
			String drwtNo5, String drwtNo6, String bnusNo, String firstPrzwnerCo, String totSellamnt,
			String firstAccumamnt, String firstWinamnt, String returnValue) {
		super();
		this.drwNo = drwNo;
		this.drwNoDate = drwNoDate;
		this.drwtNo1 = drwtNo1;
		this.drwtNo2 = drwtNo2;
		this.drwtNo3 = drwtNo3;
		this.drwtNo4 = drwtNo4;
		this.drwtNo5 = drwtNo5;
		this.drwtNo6 = drwtNo6;
		this.bnusNo = bnusNo;
		this.firstPrzwnerCo = firstPrzwnerCo;
		this.totSellamnt = totSellamnt;
		this.firstAccumamnt = firstAccumamnt;
		this.firstWinamnt = firstWinamnt;
		this.returnValue = returnValue;
	}

	public int getDrwNo() {
		return drwNo;
	}

	public void setDrwNo(int drwNo) {
		this.drwNo = drwNo;
	}

	public String getDrwNoDate() {
		return drwNoDate;
	}

	public void setDrwNoDate(String drwNoDate) {
		this.drwNoDate = drwNoDate;
	}

	public String getDrwtNo1() {
		return drwtNo1;
	}

	public void setDrwtNo1(String drwtNo1) {
		this.drwtNo1 = drwtNo1;
	}

	public String getDrwtNo2() {
		return drwtNo2;
	}

	public void setDrwtNo2(String drwtNo2) {
		this.drwtNo2 = drwtNo2;
	}

	public String getDrwtNo3() {
		return drwtNo3;
	}

	public void setDrwtNo3(String drwtNo3) {
		this.drwtNo3 = drwtNo3;
	}

	public String getDrwtNo4() {
		return drwtNo4;
	}

	public void setDrwtNo4(String drwtNo4) {
		this.drwtNo4 = drwtNo4;
	}

	public String getDrwtNo5() {
		return drwtNo5;
	}

	public void setDrwtNo5(String drwtNo5) {
		this.drwtNo5 = drwtNo5;
	}

	public String getDrwtNo6() {
		return drwtNo6;
	}

	public void setDrwtNo6(String drwtNo6) {
		this.drwtNo6 = drwtNo6;
	}

	public String getBnusNo() {
		return bnusNo;
	}

	public void setBnusNo(String bnusNo) {
		this.bnusNo = bnusNo;
	}

	public String getFirstPrzwnerCo() {
		return firstPrzwnerCo;
	}

	public void setFirstPrzwnerCo(String firstPrzwnerCo) {
		this.firstPrzwnerCo = firstPrzwnerCo;
	}

	public String getTotSellamnt() {
		return totSellamnt;
	}

	public void setTotSellamnt(String totSellamnt) {
		this.totSellamnt = totSellamnt;
	}

	public String getFirstAccumamnt() {
		return firstAccumamnt;
	}

	public void setFirstAccumamnt(String firstAccumamnt) {
		this.firstAccumamnt = firstAccumamnt;
	}

	public String getFirstWinamnt() {
		return firstWinamnt;
	}

	public void setFirstWinamnt(String firstWinamnt) {
		this.firstWinamnt = firstWinamnt;
	}

	public String getReturnValue() {
		return returnValue;
	}

	public void setReturnValue(String returnValue) {
		this.returnValue = returnValue;
	}

	@Override
	public String toString() {
		return "LottoVO [drwNo=" + drwNo + ", drwNoDate=" + drwNoDate + ", drwtNo1=" + drwtNo1 + ", drwtNo2=" + drwtNo2
				+ ", drwtNo3=" + drwtNo3 + ", drwtNo4=" + drwtNo4 + ", drwtNo5=" + drwtNo5 + ", drwtNo6=" + drwtNo6
				+ ", bnusNo=" + bnusNo + ", firstPrzwnerCo=" + firstPrzwnerCo + ", totSellamnt=" + totSellamnt
				+ ", firstAccumamnt=" + firstAccumamnt + ", firstWinamnt=" + firstWinamnt + ", returnValue="
				+ returnValue + "]";
	}

}
