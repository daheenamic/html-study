package com.webjjang.io.board;

import java.util.List;

import com.webjjang.board.vo.BoardVO;

public class BoardPrint {

	// 1. list
	public static void print(List<BoardVO> list) {
		System.out.println("\n=========================================================");
		System.out.println(" 번호  |         제목       | 작성자 |   작성일   | 조회수");
		System.out.println("=========================================================");
		if(list == null || list.size() == 0) {
			System.out.println("데이터 없습니다.");
			return;
		}
		for(BoardVO vo : list) {
			System.out.print(" " + vo.getNo());
			System.out.print(" | " + vo.getTitle());
			System.out.print(" | " + vo.getWriter());
			System.out.print(" | " + vo.getWriteDate());
			System.out.print(" | " + vo.getHit());
			System.out.println();
		}
		System.out.println("=========================================================");
	}
	// 2. view
	public static void print(BoardVO vo) {
		if(vo == null) {
			System.out.println("데이터 없습니다.");
			return;
		}
		System.out.println("\n=========================================================");
		System.out.println(" - 번호 : " + vo.getNo());
		System.out.println(" - 제목 : " + vo.getTitle());
		System.out.println(" - 내용 : " + vo.getContent());
		System.out.println(" - 작성자 : " + vo.getWriter());
		System.out.println(" - 작성일 : " + vo.getWriteDate());
		System.out.println(" - 조회수 : " + vo.getHit());
		System.out.println("=========================================================");
	}
	
}
