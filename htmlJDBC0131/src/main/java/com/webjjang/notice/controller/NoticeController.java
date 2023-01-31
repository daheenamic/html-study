package com.webjjang.notice.controller;

import com.webjjang.main.Main;

// 예외처리, 무한반복, 메뉴처리
public class NoticeController {

	public void execute() {
		// 무한 반복
		while(true) {
			//예외처리
			try {
				// 관리자인지 확인 boolean
				// 계속 나오는건 변수로 만들거나 메서드로 만들어서 return 해줘라~
//				boolean smallCar = carVO.getCarType == "경형";
				boolean isAdmin = Main.login != null && Main.login.getGradeNo() == 9;
				// 메뉴 출력
				// 모든 사용자 메뉴
				System.out.println("\n1.공지리스트 2.공지보기");
				// 관리자 메뉴
				if(isAdmin) {
					System.out.println("3.공지등록 4.공지수정 5.공지삭제");
				}
				// 다같이 보는 메뉴
				System.out.println("0.이전메뉴");
				
				// 메뉴 선택
				System.out.print("메뉴 입력 --> ");
				String menu = Main.scanner.nextLine();
				
				// 메뉴 처리
				switch (menu) {
				case "1":
					break;
				case "2":
					break;
				case "0":
					return;
				case "3":
					if (isAdmin) {				
						break;
					}
				case "4":
					if (isAdmin) {						
						break;
					}	
				case "5":
					if (isAdmin) {						
						break;
					}
				default:
					System.out.println("\n*** 잘못된 메뉴입니다. 다시 입력해 주세요.");
					System.out.println("숫자 1~" + ((isAdmin)?"5":"2") + ",0을 입력하셔야 합니다.");
					break;
				}// end of switch
			} catch (Exception e) {
				// 개발자를 위한 코드 - 개발이 완료되면 주석처리
				e.printStackTrace();
				
				// 사용자를 위한 코드
				System.out.println("\n******************************");
				// 오류 메시지 출력
				System.out.println(" 오류 메시지 : " + e.getMessage());
				// 조치 사항
				System.out.println(" 조치 : 다시 한번 시도해 주세요.");
				System.out.println("     : 오류가 계속 발생되면 전산담당자에게 연락 주세요.");
				System.out.println("     : master@webjjang.com");
				System.out.println("******************************");
			} // end of try~catch
		} // end of while
	} // end of execute()
}// end of BoardController class
