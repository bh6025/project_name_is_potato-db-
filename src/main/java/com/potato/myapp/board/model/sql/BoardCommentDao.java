package com.potato.myapp.board.model.sql;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.potato.myapp.board.model.vo.BoardCommentVO;

@Repository("boardCommentDao")
public class BoardCommentDao {
	
	@Resource(name = "sqlSession")
	private SqlSession	session;
	
	public List<BoardCommentVO> boardCommentlist(int board_num) {
		
		System.out.println("boardDao boardlist start");
		System.out.println(board_num);
		List <BoardCommentVO> result = session.selectList("model.sql.board.boardCommentlist", board_num);
		
		System.out.println("boardDao boardlist finish");
		
		return result;
		
	}
		
	
	public int boardCommentinsert(BoardCommentVO boardcomment) {
		
		System.out.println("!!!!!!!!!!!!!!!boardDao boardinsert start");
		
		int result = session.insert("model.sql.board.boardCommentinsert", boardcomment);
		
		System.out.println("boardDao board insert finish");
		return result;
		
	}

	
	
	public int boardCommentdelete(int comment) {
		
		System.out.println("boardDao boarddelete start");
		
		int result = session.delete("model.sql.board.boardCommentdelete", comment);
		
		System.out.println("boardDao board delete finish");
		return result;
		
	}
	
	
}
