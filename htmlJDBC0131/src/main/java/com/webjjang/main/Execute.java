package com.webjjang.main;

public class Execute {

	public static Object run(ServiceInterface service, Object data) throws Exception{
		// 구분 줄
		System.out.println("\n+=========================================================+");
		// 실행 객체이름.
		System.out.println("+ 실행 객체 :  " + service.getClass().getSimpleName());
		// 넘어가는 데이터
		System.out.println("+ 넘어가는 데이터 : " + data);
		// 실행
		System.out.println("------------------------------------------------------");
		Object result = service.service(data); // data를 가지고 service를 실행하자.
		System.out.println("------------------------------------------------------");
		// 실행 결과
		System.out.println("+ 실행결과 : " + result);
		// 구분 줄
		System.out.println("+=========================================================+");
		// 결과 리턴
		return result;
	}
	
}
