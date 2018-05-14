package com.potato.myapp.board.ctrl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.potato.myapp.board.model.vo.BoardCommentVO;
import com.potato.myapp.board.model.vo.BoardVO;
import com.potato.myapp.board.service.BoardCommentService;
import com.potato.myapp.board.service.BoardService;
import com.potato.myapp.user.model.vo.UserVO;

@Controller
@RequestMapping("/board")
public class BoardCtrl {
	
	
	@Resource(name ="boardService")
	private BoardService boardservice;
	
	@Resource(name="boardCommentService")
	private BoardCommentService boardcommentservice;
	
	
	@RequestMapping(value="/board.dbinc", method=RequestMethod.GET)
	public String board(Model model, HttpServletRequest request ) {
		
	
		System.out.println("boardctrl start");
		
		String string_page=request.getParameter("page");
		int page = Integer.parseInt(string_page);
		

		List<BoardVO> result = boardservice.boardlist(page);	
		
		List<BoardVO> list = new ArrayList<BoardVO>();
		List<BoardVO> rlist = new ArrayList<BoardVO>();
		
	
		
		int i =0;
		for(BoardVO instance : result ){
			list.add(i++, instance);
		System.out.println(list.size());
		}
		
		
		int g=0;
		
		if( (int)(list.size()/20) ==page) {
			for(int k=(page-1)*20; k<page*20; k++)
			{	
				rlist.add(g++,list.get(k));

			}
		
		System.out.println(rlist.size());
	
		}else
			{
			
			for(int k=0 ; k<(list.size()-(page-1)*20);k++) {
				
			rlist.add(g++,list.get( k+(page-1)*20));
		
			}
		}
		
		model.addAttribute("boardlist", rlist);		
		model.addAttribute("page",page);
		model.addAttribute("countlast", (int)((list.size()-1)/20)+1);
		model.addAttribute("prepage", page-1);
		model.addAttribute("nextpage",page+1);
		
		
		System.out.println("boardctrl finish");
		return "/board/board";
		
	}
	
	
	@RequestMapping(value="/boardRead.dbinc", method=RequestMethod.GET)
	public String boardRead(Model model, HttpServletRequest request ) {
		
	
		System.out.println("boardctrl start");
		
		String String_one_board = request.getParameter("oneboard");
		int one_board = Integer.parseInt(String_one_board);
		
		System.out.println("check1"+one_board);
		BoardVO result1 = boardservice.board(one_board);
		model.addAttribute("oneboard", result1);	
		
		List<BoardCommentVO> result2 = boardcommentservice.boardCommentlist(one_board);			
	    model.addAttribute("comments", result2);	
		
		System.out.println("boardctrl finish");
		return "/board/boardRead";
		
	}
	
	

	
	
	@RequestMapping(value="/board_comment_insert", method=RequestMethod.POST)
	public String postboardcommentinsert(BoardCommentVO comment, HttpServletRequest request ) {

		
		System.out.println("post  board ctrl comment_insert start");
		
		
		boardcommentservice.boardCommentinsert(comment);
		
		System.out.println("post  board ctrl comment_insert finish");
		
		return "redirect:/board/boardRead.dbinc?oneboard="+comment.getBoard_numm();
	}
	

	@RequestMapping(value="/board_comment_delete", method=RequestMethod.GET)
	public String deleteboardcommentinsert(BoardCommentVO comment, HttpServletRequest request, HttpSession session ) {
		
		UserVO user = (UserVO)session.getAttribute("loginUser");

		if(user.getUser_id().equals(comment.getComment_writer()) ) {				
		System.out.println("get delte  board ctrl comment_delete start");
		String String_one_board = request.getParameter("board_numm");
		int board = Integer.parseInt(String_one_board);
	
		
		
		
		
		String String_one_comment = request.getParameter("comment_num");
		int comm = Integer.parseInt(String_one_comment);
			System.out.println(comm);
			
			
		boardcommentservice.boardCommentdelete(comm);
		
		System.out.println("get  board ctrl comment_delete finish");
		
		return "redirect:/board/boardRead.dbinc?oneboard="+board;
		};
		return "redirect:/board/board.dbinc?page=1";
		
	}
	
	@RequestMapping(value="/boardwrite", method=RequestMethod.GET)
	public String writeboard(HttpServletRequest request ) {

		
		System.out.println("get  board ctrl write start");
		
		System.out.println("get  board ctrl write finish");
		
		return "/board/boardwrite";
	}
	
	@RequestMapping(value="/boardwrite", method=RequestMethod.POST)
	public String postwriteboard(BoardVO board, HttpServletRequest request ) {

		
		System.out.println("post  board ctrl write start");
		
		int result = boardservice.boardinsert(board);
		
		
		System.out.println("post  board ctrl write finish : " + result);
		
		return "redirect:/board/board.dbinc?page=1";
	}
	
	
	@RequestMapping(value="/boarddelete", method=RequestMethod.GET)
	public String postdeleteboard(HttpServletRequest request, HttpSession session ) {

		UserVO user = (UserVO)session.getAttribute("loginUser");
		
		
		if(user.getUser_id().equals(request.getParameter("user_id")) ) {
			
		
		System.out.println("post  board ctrl write start");
		
		
		String String_one_board = request.getParameter("board_numm");
		int board = Integer.parseInt(String_one_board);
		boardservice.boarddelete(board);
		
		
		System.out.println("post  board ctrl write finish ");
	}
		return "redirect:/board/board.dbinc?page=1";
	}
	
	@RequestMapping(value="/boardupdate", method=RequestMethod.GET)
	public String getupdateboard(Model model, HttpServletRequest request ) {

		
		System.out.println("getupdateboard ctrl write start");
		
		String String_one_board = request.getParameter("board_numm");
		int one_board = Integer.parseInt(String_one_board);
		
		System.out.println("check1"+one_board);
		BoardVO result1 = boardservice.board(one_board);
		model.addAttribute("oneboard", result1);	
		
		
		System.out.println("getupdateboard ctrl write finish ");
		
		return "/board/boardupdate";
		
	}
	
	@RequestMapping(value="/boardupdate", method=RequestMethod.POST)
	public String postupdateboard(BoardVO board, Model model, HttpServletRequest request, HttpSession session ) {

		
		UserVO user = (UserVO)session.getAttribute("loginUser");

		System.out.println(request.getParameter("user_id"));
		System.out.println(request.getParameter("board_numm"));
		
		if(user.getUser_id().equals(request.getParameter("user_id")) ) {			
		System.out.println("postupdateboard ctrl write start");
		
		boardservice.boardupdate(board);
		
		
		System.out.println("postupdateboard ctrl write finish ");
		}
		return "redirect:/board/board.dbinc?page=1";
		
		
	}
	
}




