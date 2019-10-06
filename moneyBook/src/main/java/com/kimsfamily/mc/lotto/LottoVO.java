package com.kimsfamily.mc.lotto;

public class LottoVO {

	int drwNo;
	String drwNodate;
	int drwtNo1;
	int drwtNo2;
	int drwtNo3;
	int drwtNo4;
	int drwtNo5;
	int drwtNo6;
	int bnusNo;
	int firstPrzwnerCo;
	int totSellamnt;
	int firstAccumamnt;
	int firstWinamnt;
	String returnValue;

	public LottoVO() {
		super();
	}

	public LottoVO(int drwNo, String drwNodate, int drwtNo1, int drwtNo2, int drwtNo3, int drwtNo4, int drwtNo5,
			int drwtNo6, int bnusNo, int firstPrzwnerCo, int totSellamnt, int firstAccumamnt, int firstWinamnt,
			String returnValue) {
		super();
		this.drwNo = drwNo;
		this.drwNodate = drwNodate;
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

	public String getDrwNodate() {
		return drwNodate;
	}

	public void setDrwNodate(String drwNodate) {
		this.drwNodate = drwNodate;
	}

	public int getDrwtNo1() {
		return drwtNo1;
	}

	public void setDrwtNo1(int drwtNo1) {
		this.drwtNo1 = drwtNo1;
	}

	public int getDrwtNo2() {
		return drwtNo2;
	}

	public void setDrwtNo2(int drwtNo2) {
		this.drwtNo2 = drwtNo2;
	}

	public int getDrwtNo3() {
		return drwtNo3;
	}

	public void setDrwtNo3(int drwtNo3) {
		this.drwtNo3 = drwtNo3;
	}

	public int getDrwtNo4() {
		return drwtNo4;
	}

	public void setDrwtNo4(int drwtNo4) {
		this.drwtNo4 = drwtNo4;
	}

	public int getDrwtNo5() {
		return drwtNo5;
	}

	public void setDrwtNo5(int drwtNo5) {
		this.drwtNo5 = drwtNo5;
	}

	public int getDrwtNo6() {
		return drwtNo6;
	}

	public void setDrwtNo6(int drwtNo6) {
		this.drwtNo6 = drwtNo6;
	}

	public int getBnusNo() {
		return bnusNo;
	}

	public void setBnusNo(int bnusNo) {
		this.bnusNo = bnusNo;
	}

	public int getFirstPrzwnerCo() {
		return firstPrzwnerCo;
	}

	public void setFirstPrzwnerCo(int firstPrzwnerCo) {
		this.firstPrzwnerCo = firstPrzwnerCo;
	}

	public int getTotSellamnt() {
		return totSellamnt;
	}

	public void setTotSellamnt(int totSellamnt) {
		this.totSellamnt = totSellamnt;
	}

	public int getFirstAccumamnt() {
		return firstAccumamnt;
	}

	public void setFirstAccumamnt(int firstAccumamnt) {
		this.firstAccumamnt = firstAccumamnt;
	}

	public int getFirstWinamnt() {
		return firstWinamnt;
	}

	public void setFirstWinamnt(int firstWinamnt) {
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
		return "LottoVO [drwNo=" + drwNo + ", drwNodate=" + drwNodate + ", drwtNo1=" + drwtNo1 + ", drwtNo2=" + drwtNo2
				+ ", drwtNo3=" + drwtNo3 + ", drwtNo4=" + drwtNo4 + ", drwtNo5=" + drwtNo5 + ", drwtNo6=" + drwtNo6
				+ ", bnusNo=" + bnusNo + ", firstPrzwnerCo=" + firstPrzwnerCo + ", totSellamnt=" + totSellamnt
				+ ", firstAccumamnt=" + firstAccumamnt + ", firstWinamnt=" + firstWinamnt + ", returnValue="
				+ returnValue + "]";
	}

}
