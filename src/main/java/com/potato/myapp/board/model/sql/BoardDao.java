package com.potato.myapp.board.model.sql;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.potato.myapp.board.model.vo.BoardVO;

@Repository("boardDao")
public class BoardDao {
	@Resource(name = "sqlSession")
	private SqlSession	session;
	
	public List<BoardVO> boardlist(int page) {
		
		System.out.println("boardDao boardlist start");
		
		List <BoardVO> result = session.selectList("model.sql.board.boardlist", page);
		
		System.out.println("boardDao boardlist finish");
		return result;
		
	}
	
	public BoardVO board(int one_board) {
		
		System.out.println("boardDao board start");
		
		BoardVO result = (BoardVO) session.selectOne("model.sql.board.board", one_board);
		
		System.out.println("boardDao board finish");
		return result;
		
	}
	
	
	public int boardinsert(BoardVO board) {
		
		System.out.println("boardDao boardinsert start");
		
		int result = session.insert("model.sql.board.boardinsert", board);
		
		System.out.println("boardDao board insert finish");
		return result;
		
	}

	public int boardupdate(BoardVO board) {
		
		System.out.println("boardDao boardupdate start");
		
		int result = session.update("model.sql.board.boardupdate", board);
		
		System.out.println("boardDao boardupdate finish");
		return result;
		
	}
	
	public int boarddelete(int board) {
		
		System.out.println("boardDao boarddelete start");
		
		int result = session.delete("model.sql.board.boarddelete", board);
		
		System.out.println("boardDao board delete finish");
		return result;
		
	}
	
	
}
