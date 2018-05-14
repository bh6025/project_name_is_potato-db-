package com.potato.myapp.board.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.potato.myapp.board.model.sql.BoardDao;
import com.potato.myapp.board.model.vo.BoardVO;

@Service("boardService")
public class BoardService {

	@Resource(name = "boardDao")
	private BoardDao boarddao;
	
	public List<BoardVO> boardlist(int page) {
		System.out.println("boardlist service start");
		
		List<BoardVO> result = boarddao.boardlist(page); 
		
		System.out.println("board service finish");
		return result;
	}
	
	
	public BoardVO board(int one_board) {
		System.out.println("board service start");
		
		BoardVO result = boarddao.board(one_board); 
		
		System.out.println("board service finish");
		return result;
	}

	public int boardinsert(BoardVO board) {
		System.out.println("boardinsert service start");
		
		int result = boarddao.boardinsert(board); 
		
		System.out.println("board service finish");
		return result;
	}

	public int boardupdate(BoardVO board) {
		System.out.println("boardupdate service start");
		
		int result = boarddao.boardupdate(board); 
		
		System.out.println("boardupdate service finish");
		return result;
	}
	
	public int boarddelete(int board) {
		System.out.println("boarddelete service start");
		
		int result = boarddao.boarddelete(board); 
		
		System.out.println("boarddelete service finish");
		return result;
	}
	 
}

