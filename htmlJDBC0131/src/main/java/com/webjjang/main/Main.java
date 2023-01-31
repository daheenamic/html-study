package com.webjjang.main;

import java.util.Scanner;

import com.webjjang.board.controller.BoardController;
import com.webjjang.member.controller.MemberController;
import com.webjjang.member.vo.LoginVO;
import com.webjjang.notice.controller.NoticeController;

public class Main { // Front Controller

	// 키보드 입력 객체 - Main.scanner.nextLine()
	public static Scanner scanner = new Scanner(System.in);
	
	// 로그인 정보 저장 변수
	// login 변수가 null 이면 로그아웃 상태, 데이터가 있으면(null이 아니면) 로그인 상태.
	public static LoginVO login = null;
	
	public static void main(String[] args) {
		// 무한 반복 - 끝낼 0을 입력한다.
		while(true) {
			// 로그인 정보 보여 주기
			System.out.println();
			System.out.println("+-------------------------------+");
			if(login == null) {
				System.out.println("로그인이 되어있지 않습니다.");
				System.out.println("6.회원관리 > 1. 로그인을 하세요");
			} else {
				System.out.println(login.getId() + "(" + login.getName() + ")님 환영합니다.");
				System.out.println(login.getGradeName() + "권한으로 로그인 되셨습니다.");
			}

			System.out.println("+-------------------------------+");
			// 메뉴 출력
			System.out.println("\n<<------------------->> Main <<--------------------->>");
			System.out.println("1. 공지사항 2. 쇼핑몰 3. 장바구니");
			System.out.println("4. 구매관리 5. 게시판 6. 회원관리 \n0. 종료");
			// 메뉴 입력
			System.out.print("메뉴 선택 -> ");
			String menu = scanner.nextLine();
			// 메뉴 처리
			switch (menu) {
			case "1":
				NoticeController noticeController = new NoticeController();
				noticeController.execute();
				break;
			case "2":
				
				break;
			case "3":
				
				break;
			case "4":
				break;
			case "5": //게시판 - 생성 - 호출
				BoardController boardController = new BoardController();
				boardController.execute();
				break;
			case "6": //회원관리 - 생성 - 호출 - MemberController
				MemberController memberController = new MemberController();
				memberController.execute();
				break;
			case "0":
				// 종료 메시지
				System.out.println("\n*** 프로그램을 종료 합니다.");
				// 종료
				System.exit(0);
				
			default: // 잘못됨.
				System.out.println("\n*** 잘못된 메뉴입니다. 다시 입력해 주세요.");
				System.out.println("숫자 1~5, 0을 입력하셔야 합니다.");
				break;
			} // end of switch
		}// end of while
	}// end of main()
	
}// end of Main class
