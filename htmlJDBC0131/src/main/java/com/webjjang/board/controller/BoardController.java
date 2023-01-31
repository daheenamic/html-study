package com.webjjang.board.controller;

import java.util.List;

import com.webjjang.board.service.BoardDeleteServiceImpl;
import com.webjjang.board.service.BoardListServiceImpl;
import com.webjjang.board.service.BoardUpdateServiceImpl;
import com.webjjang.board.service.BoardViewServiceImpl;
import com.webjjang.board.service.BoardWriteServiceImpl;
import com.webjjang.board.vo.BoardVO;
import com.webjjang.io.board.BoardPrint;
import com.webjjang.main.Execute;
import com.webjjang.main.Main;

// 예외처리, 무한반복, 메뉴처리
public class BoardController {

	@SuppressWarnings("unchecked")
	public void execute() {
		// 무한 반복
		while(true) {
			//예외처리
			try {
				// 메뉴 출력
				System.out.println("1.리스트 2.보기 3.등록");
				System.out.println("4.수정 5.삭제 0.이전메뉴");
				// 메뉴 선택
				System.out.print("메뉴 입력 --> ");
				String menu = Main.scanner.nextLine();
				// 메뉴 처리
				switch (menu) {
				case "1":
					// 리스트 서비스
					Object result = Execute.run(new BoardListServiceImpl(), null);
					BoardPrint.print((List<BoardVO>)result);
					// 출력
					break;
				case "2":
					// 글번호
					System.out.print("보기를 위한 글번호 --> ");
					long no = Long.parseLong(Main.scanner.nextLine());
					// 보기 서버스 - 글번호, 증가 여부(증가한다.:1)
					result = Execute.run(new BoardViewServiceImpl(), new Object[] {no,1});
					BoardPrint.print((BoardVO)result);
					// 출력
					break;
				case "3": //글쓰기
					// 데이터 수집
					BoardVO writeVO = new BoardVO();
					System.out.print("제목 : ");
					writeVO.setTitle(Main.scanner.nextLine());
					System.out.print("내용 : ");
					writeVO.setContent(Main.scanner.nextLine());
					System.out.print("작성자 : ");
					writeVO.setWriter(Main.scanner.nextLine());
					System.out.print("비밀번호 : ");
					writeVO.setPw(Main.scanner.nextLine());
					// 쓰기 서비스
					result = Execute.run(new BoardWriteServiceImpl(), writeVO);
					System.out.println("글쓰기가 되었습니다.");
					break;
				case "4": // 글수정
					// 글번호
					System.out.print("수정를 위한 글번호 --> ");
					no = Long.parseLong(Main.scanner.nextLine());
					// 보기 서비스 - no, 0:조회수 1증가 하지 않는다.
					BoardVO updateVO 
					= (BoardVO) Execute.run(new BoardViewServiceImpl(), new Object[] {no, 0});
					// 원본 데이터 확인
					BoardPrint.print(updateVO);
					
					// 수정 내용 받기
					// updateVO() 메서드를 updateVO변수를 넣어서 호출한다.
					updateVO(updateVO);
					
					// 수정 서비스
					result = Execute.run(new BoardUpdateServiceImpl(), updateVO);
					if((Integer)result == 1)
						System.out.println("수정이 되었습니다.");
					else
						System.out.println("번호나 비밀번호를 다시 한번 확인해 주세요.");
					break;
				case "5": // 글삭제
					BoardVO deleteVO = new BoardVO();
					// 글번호
					System.out.print("삭제를 위한 글번호 --> ");
					no = Long.parseLong(Main.scanner.nextLine());
					deleteVO.setNo(no);
					System.out.print("비밀번호 --> ");
					deleteVO.setPw(Main.scanner.nextLine());
					// 삭제 서비스
					result = Execute.run(new BoardDeleteServiceImpl(), deleteVO);
					if((Integer)result == 1)
						System.out.println("삭제가 되었습니다.");
					else
						System.out.println("번호나 비밀번호를 다시 한번 확인해 주세요.");
					break;
				case "0":
					return;

				default:
					System.out.println("\n*** 잘못된 메뉴입니다. 다시 입력해 주세요.");
					System.out.println("숫자 1~5, 0을 입력하셔야 합니다.");
					break;
				}// end of switch
			} catch (Exception e) {
				// TODO: handle exception
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
	
	private void updateVO(BoardVO vo) {
		// 무한루프 - 0을 입력하면 비밀번호를 입력받고 빠져 나온다. 
		while(true) {
			// 수정할 항목을 선택한다.
			System.out.println("\n---------------------------------");
			System.out.println("  1.제목  2.내용  3.작성자  0.수정완료  ");
			System.out.println("---------------------------------");
			System.out.print("수정 할 항목의 번호 입력 -> ");
			String item = Main.scanner.nextLine();
			
			// 항목 수정을 한다.
			switch(item) {
			case "1" :
				System.out.print("제목 : ");
				vo.setTitle(Main.scanner.nextLine());
				break;
			case "2" :
				System.out.print("내용 : ");
				vo.setContent(Main.scanner.nextLine());
				break;
			case "3" :
				System.out.print("작성자 : ");
				vo.setWriter(Main.scanner.nextLine());
				break;
			case "0" :
				System.out.println("수정을 하시려면 비밀번호를 입력 해 주세요.");
				System.out.print("비밀번호 :");
				vo.setPw(Main.scanner.nextLine());
				return;
			default :
				System.out.println("잘못 입력하셨습니다.");
			} // end of switch		
		} // end of while		
	} // end of updateVO()	
}// end of BoardController class
