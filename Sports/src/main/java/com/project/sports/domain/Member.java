package com.project.sports.domain;

public class Member {
	private String USER_ID;
	private String USER_PASS;
	private String USER_NAME;
	private String USER_JUMIN;
	private String USER_MOBILE;
	private String USER_ADDRESS;
	private String USER_EMAIL;
	private int USER_HEIGHT;	 //키
	private int USER_PWEIGHT;	 //현재몸무게
	private int USER_WWEIGHT;	 //목표몸무게
	private int USER_BMI;		 //BMI(현재몸무게/(키*키)*10000)
	private int USER_RMR;		 //기초대사량
	//(남자:66.47+(13.75*현재몸무게)+(5*키)-(6.75*나이)
	//(여자:655.1+(9.56*현재몸무게)+(1.85*키)-(4.68*나이)
	private int USER_WATER;		 //물섭취량
	public String getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(String uSER_ID) {
		USER_ID = uSER_ID;
	}
	public String getUSER_PASS() {
		return USER_PASS;
	}
	public void setUSER_PASS(String uSER_PASS) {
		USER_PASS = uSER_PASS;
	}
	public String getUSER_NAME() {
		return USER_NAME;
	}
	public void setUSER_NAME(String uSER_NAME) {
		USER_NAME = uSER_NAME;
	}
	public String getUSER_JUMIN() {
		return USER_JUMIN;
	}
	public void setUSER_JUMIN(String uSER_JUMIN) {
		USER_JUMIN = uSER_JUMIN;
	}
	public String getUSER_MOBILE() {
		return USER_MOBILE;
	}
	public void setUSER_MOBILE(String uSER_MOBILE) {
		USER_MOBILE = uSER_MOBILE;
	}
	public String getUSER_ADDRESS() {
		return USER_ADDRESS;
	}
	public void setUSER_ADDRESS(String uSER_ADDRESS) {
		USER_ADDRESS = uSER_ADDRESS;
	}
	public String getUSER_EMAIL() {
		return USER_EMAIL;
	}
	public void setUSER_EMAIL(String uSER_EMAIL) {
		USER_EMAIL = uSER_EMAIL;
	}
	public int getUSER_HEIGHT() {
		return USER_HEIGHT;
	}
	public void setUSER_HEIGHT(int uSER_HEIGHT) {
		USER_HEIGHT = uSER_HEIGHT;
	}
	public int getUSER_PWEIGHT() {
		return USER_PWEIGHT;
	}
	public void setUSER_PWEIGHT(int uSER_PWEIGHT) {
		USER_PWEIGHT = uSER_PWEIGHT;
	}
	public int getUSER_WWEIGHT() {
		return USER_WWEIGHT;
	}
	public void setUSER_WWEIGHT(int uSER_WWEIGHT) {
		USER_WWEIGHT = uSER_WWEIGHT;
	}
	public int getUSER_BMI() {
		return USER_BMI;
	}
	public void setUSER_BMI(int uSER_BMI) {
		USER_BMI = uSER_BMI;
	}
	public int getUSER_RMR() {
		return USER_RMR;
	}
	public void setUSER_RMR(int uSER_RMR) {
		USER_RMR = uSER_RMR;
	}
	public int getUSER_WATER() {
		return USER_WATER;
	}
	public void setUSER_WATER(int uSER_WATER) {
		USER_WATER = uSER_WATER;
	}
}
