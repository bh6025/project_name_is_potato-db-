package com.potato.myapp.board.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.potato.myapp.board.model.sql.BoardCommentDao;
import com.potato.myapp.board.model.vo.BoardCommentVO;

@Service("boardCommentService")
public class BoardCommentService {
	@Resource(name = "boardCommentDao")
	private BoardCommentDao boardcommentdao;


	public List<BoardCommentVO> boardCommentlist(int one_board) {
		System.out.println("boardcommentlist service start one_board :"+ one_board);
		
		List<BoardCommentVO> result = boardcommentdao.boardCommentlist(one_board);
		
		System.out.println("boardcommentlist service finish");
		return result;
	}

	public int boardCommentinsert(BoardCommentVO boardcomment) {
		System.out.println("board comment insert service start");
		
		int result = boardcommentdao.boardCommentinsert(boardcomment);
		
		System.out.println("board comment insert service finish");
		return result;
	}

	
	
	
	public int boardCommentdelete( int comment) {
		System.out.println("board comment delete service start");
		
		int result = boardcommentdao.boardCommentdelete (comment);
		
		System.out.println("board comment delete service finish");
		return result;
	}

}




