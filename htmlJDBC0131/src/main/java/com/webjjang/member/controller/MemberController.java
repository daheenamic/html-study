package com.webjjang.member.controller;

import com.webjjang.main.Execute;
import com.webjjang.main.Main;
import com.webjjang.member.service.MemberLoginServiceImpl;
import com.webjjang.member.vo.LoginVO;

// 예외처리, 무한반복, 메뉴처리
public class MemberController {
	public void execute() {
		// 무한 반복
		while (true) {
			// 예외처리
			try {
				// 메뉴 출력
				// logout 상태 - 1.로그인 2.회원가입 3.아이디찾기 4.비밀번호찾기 0.이전메뉴
				// login 상태 - 1.로그아웃 2.내정보보기 3.내정보수정 4.회원탈퇴 0.이전메뉴
				if (Main.login == null) { // 로그인 하기 전에 나오는 메뉴
					System.out.println();
					System.out.println("1.로그인 2.회원가입 3.아이디찾기");
					System.out.println("4.비밀번호찾기 0. 이전메뉴");
				} else { // 로그인 하면 나오는 메뉴
					System.out.println();
					System.out.println("1.로그아웃 2.내정보보기 3.내정보수정");
					// 일반 회원일 때는 아예 관리자메뉴 창이 보이지 않게 삼항 연산자로 구현.
					System.out.println("4.회원탈퇴 "+((Main.login.getGradeNo() == 9)?"5.관리자메뉴":"") + "0.이전메뉴");

				}
				// 메뉴 선택
				System.out.print("메뉴 입력 --> ");
				String menu = Main.scanner.nextLine();
				// 메뉴 처리
				if (Main.login == null) {
					switch (menu) {
					case "1": // 로그아웃상태 - 아이디 비밀번호 받기
						// 아이디 비밀번호 받기 -> loginVO 
						// : MemberLoginServiceImpl - MemberDAOImpl.login(LoginVO vo)
						//출력
						LoginVO vo = new LoginVO();
						System.out.print("\n아이디 -> ");
						vo.setId(Main.scanner.nextLine());
						System.out.print("비밀번호 -> ");
						vo.setPw(Main.scanner.nextLine());
						LoginVO loginVO =(LoginVO) Execute.run(new MemberLoginServiceImpl(), vo);
						// 로그인 처리
						if (loginVO == null) { // 입력 정보가 틀렸다.
							System.out.println("\n** 입력하신 정보가 없습니다.");
							System.out.println("** 아이디나 비밀번호를 다시 확인 해 주세요.");
						} else { // 로그인 처리를 한다.
							Main.login = loginVO;
						}
						break;
					case "2":
						break;
					case "3":
						break;
					case "4":
						break;
					case "0":
						return;
					default:
						System.out.println("\n*** 잘못된 메뉴입니다. 다시 입력해 주세요.");
						System.out.println("숫자 1~4, 0을 입력하셔야 합니다.");
						break;
					} // end of switch
				} else { // 로그인이 되어있는 상태
					switch (menu) {
					case "1": // 로그아웃
						// 로그인 데이터를 지운다
						Main.login = null; // 로그아웃 처리
						System.out.println();
						System.out.println("********************");
						System.out.println("*  로그아웃 되었습니다.  *");
						System.out.println("********************");
						break;
					case "2": // 내정보보기
						break;
					case "3": // 내정보수정
						break;
					case "4": // 회원탈퇴
						break;
					case "0":
						return;
					// 관리자만 사용하는 메뉴. 일반회원은 default로 넘어가게 한다.
					case "5": // 관리자메뉴
						// 일반 회원이 5번을 누를 경우 등급이 9가 아니므로 바로 default로 넘어간다.
						if (Main.login.getGradeNo() == 9) {
							// 관리자 리스트 처리
							System.out.println("\n** 관리자 메뉴 입니다.");
							// break를 if문 바깥에 놓으면 일반 회원이 5번을 누를 경우 default로 가지 않고 switch가 멈춘다.
							// if문 안에 넣어줘야 일반 회원이 5번을 눌렀을 경우 break 되지 않고 default로 간다.
							break;
						}
					default:
						System.out.println("\n** 잘못된 메뉴입니다. 다시 입력해 주세요.");
						System.out.println("숫자 1~4, 0을 입력하셔야 합니다.");
						break;
					} // end of switch
				} // end of if
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
