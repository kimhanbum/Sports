package com.project.sports.domain;

public class Member {
	private String USER_ID;
	private String USER_PASS;
	private String USER_NAME;
	private String USER_JUMIN;
	private String USER_MOBILE;
	private String USER_ADDRESS;
	private String USER_EMAIL;
	private int USER_HEIGHT;	 //Ű
	private int USER_PWEIGHT;	 //���������
	private int USER_WWEIGHT;	 //��ǥ������
	private int USER_BMI;		 //BMI(���������/(Ű*Ű)*10000)
	private int USER_RMR;		 //���ʴ�緮
	//(����:66.47+(13.75*���������)+(5*Ű)-(6.75*����)
	//(����:655.1+(9.56*���������)+(1.85*Ű)-(4.68*����)
	private int USER_WATER;		 //�����뷮
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
