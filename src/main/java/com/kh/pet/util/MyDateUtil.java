package com.kh.pet.util;

import java.util.Calendar;

public class MyDateUtil {
	private static Calendar cal = Calendar.getInstance();
	
	//오늘날짜를 문자열로 리턴
	public static String getNowDateToString() {
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH) + 1;
		String strMonth = month / 10 == 0 ? "0" + month : "" + month;
		int date = cal.get(Calendar.DATE);
		String strDate = date / 10 == 0 ? "0" + date : "" + date;
		
		return year + "-" + strMonth + "-" + strDate;//2022-04-05
	}
	
	
	
	//오늘날짜의 년월 데이터를 문자열로 리턴
	public static String getNowYearMonthToString() {
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH) + 1;
		String strMonth = month / 10 == 0 ? "0" + month : "" + month;
		
		return year + "-" + strMonth;//2022-04-05
	}

		
	
	public static String getNowDateToString(String seperator) {
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH) + 1;
		String strMonth = month / 10 == 0 ? "0" + month : "" + month;
		int date = cal.get(Calendar.DATE);
		String strDate = date / 10 == 0 ? "0" + date : "" + date;
		
		return year + seperator + strMonth + seperator + strDate;//2022-04-05
	}
	
	//이달의 첫날을 문자열로 리턴
	public static String getFirstDateOfNowMonth() {
		return getNowDateToString().substring(0, 8) + "01";
	}
	

	
}










