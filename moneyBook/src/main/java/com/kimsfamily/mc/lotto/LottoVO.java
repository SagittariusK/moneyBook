package com.kimsfamily.mc.lotto;

public class LottoVO {

	int drwNo;
	int drwtNo1;
	int drwtNo2;
	int drwtNo3;
	int drwtNo4;
	int drwtNo5;
	int drwtNo6;
	int bnusNo;

	public LottoVO() {
		super();
	}

	public LottoVO(int drwNo, int drwtNo1, int drwtNo2, int drwtNo3, int drwtNo4, int drwtNo5, int drwtNo6,
			int bnusNo) {
		super();
		this.drwNo = drwNo;
		this.drwtNo1 = drwtNo1;
		this.drwtNo2 = drwtNo2;
		this.drwtNo3 = drwtNo3;
		this.drwtNo4 = drwtNo4;
		this.drwtNo5 = drwtNo5;
		this.drwtNo6 = drwtNo6;
		this.bnusNo = bnusNo;
	}

	public int getDrwNo() {
		return drwNo;
	}

	public void setDrwNo(int drwNo) {
		this.drwNo = drwNo;
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

	@Override
	public String toString() {
		return "LottoVO [drwNo=" + drwNo + ", drwtNo1=" + drwtNo1 + ", drwtNo2=" + drwtNo2 + ", drwtNo3=" + drwtNo3
				+ ", drwtNo4=" + drwtNo4 + ", drwtNo5=" + drwtNo5 + ", drwtNo6=" + drwtNo6 + ", bnusNo=" + bnusNo + "]";
	}

}
