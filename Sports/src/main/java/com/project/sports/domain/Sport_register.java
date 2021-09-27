package com.project.sports.domain;

public class Sport_register {
	private String REGISTER_ID;  //글 작성자
	private int    REGISTER_NUM; //게시글 번호
	private int    SPORTS_NUM;   //스포츠번호
	private int    MATCH_PRS;    //매칭인원
	private String MATCH_ADR;	 //지역
	private String MATCH_DTL_ADR;//세부지역
	private String MATCH_TIME;   //매칭시간/날짜
	private String MATCH_SKL;    //매칭실력
	private int    REGISTER_STUS;//매칭상황
	
	
	public String getREGISTER_ID() {
		return REGISTER_ID;
	}
	public void setREGISTER_ID(String rEGISTER_ID) {
		REGISTER_ID = rEGISTER_ID;
	}
	public int getREGISTER_NUM() {
		return REGISTER_NUM;
	}
	public void setREGISTER_NUM(int rEGISTER_NUM) {
		REGISTER_NUM = rEGISTER_NUM;
	}
	public int getSPORTS_NUM() {
		return SPORTS_NUM;
	}
	public void setSPORTS_NUM(int sPORTS_NUM) {
		SPORTS_NUM = sPORTS_NUM;
	}
	public int getMATCH_PRS() {
		return MATCH_PRS;
	}
	public void setMATCH_PRS(int mATCH_PRS) {
		MATCH_PRS = mATCH_PRS;
	}
	public String getMATCH_ADR() {
		return MATCH_ADR;
	}
	public void setMATCH_ADR(String mATCH_ADR) {
		MATCH_ADR = mATCH_ADR;
	}
	public String getMATCH_DTL_ADR() {
		return MATCH_DTL_ADR;
	}
	public void setMATCH_DTL_ADR(String mATCH_DTL_ADR) {
		MATCH_DTL_ADR = mATCH_DTL_ADR;
	}
	public String getMATCH_TIME() {
		return MATCH_TIME;
	}
	public void setMATCH_TIME(String mATCH_TIME) {
		MATCH_TIME = mATCH_TIME;
	}
	public String getMATCH_SKL() {
		return MATCH_SKL;
	}
	public void setMATCH_SKL(String mATCH_SKL) {
		MATCH_SKL = mATCH_SKL;
	}
	public int getREGISTER_STUS() {
		return REGISTER_STUS;
	}
	public void setREGISTER_STUS(int rEGISTER_STUS) {
		REGISTER_STUS = rEGISTER_STUS;
	}
	
	
}
