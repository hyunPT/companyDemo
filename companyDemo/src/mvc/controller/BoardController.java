package mvc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import mvc.model.BoardDAO;
import mvc.model.BoardDTO;

public class BoardController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	static final int LISTCOUNT = 10; // 페이지당 보여지는 행의 수 지정
	
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,
	IOException {
		doPost(request, response);
	}
	
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
		IOException {
		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		
		/* http://localhost:8080/BoardList.do?pageNum=1 에서
		 *   /BoardList.do를 잘라내기 위해 사용 */
		String command = RequestURI.substring(contextPath.length());

		/* 등록된 글 목록 페이지 출력하기 */
		if (command.equals("/BoardListAction.do")) {
			requestBoardList(request);
			RequestDispatcher rd = request.getRequestDispatcher("./board/board/list.jsp");
			rd.forward(request, response);
		} 
		
		/* 글 등록 페이지 출력하기 */
		else if (command.equals("/BoardWriteForm.do")) { 
			RequestDispatcher rd = request.getRequestDispatcher("/board/board/writeForm.jsp");
			rd.forward(request, response);
		} 
		
		/* 새로운 글 등록하기 */
		else if (command.equals("/BoardWriteAction.do")) {
			requestBoardWrite(request);
			RequestDispatcher rd = request.getRequestDispatcher("/BoardListAction.do");
			rd.forward(request, response);
		} 
		
		
		
		/* 선택된 글 조회 페이지 가져오기 */
		else if (command.equals("/BoardShowAction.do")) {
			requestBoardView(request);
			RequestDispatcher rd = request.getRequestDispatcher("/BoardShow.do");
			rd.forward(request, response);
		} 
		

		/* 글 조회 페이지 가져오기 */
		else if (command.equals("/BoardShow.do")) { 
			RequestDispatcher rd = request.getRequestDispatcher("./board/board/show.jsp");
			rd.forward(request, response);
		} 
		
		
		
		
		
		/* 선택된 글 수정 페이지 가져오기 */
		else if (command.equals("/BoardViewAction.do")) {
			requestBoardView(request);
			RequestDispatcher rd = request.getRequestDispatcher("/BoardView.do");
			rd.forward(request, response);
		} 
		
		/* 글 수정 페이지 가져오기 */
		else if (command.equals("/BoardView.do")) { 
			RequestDispatcher rd = request.getRequestDispatcher("./board/board/view.jsp");
			rd.forward(request, response);
		} 
		
		/* 선택된 글의 조회수 증가하기 */
		else if (command.equals("/BoardUpdateAction.do")) { 
			requestBoardUpdate(request);
			RequestDispatcher rd = request.getRequestDispatcher("/BoardListAction.do");
			rd.forward(request, response);
		}
		
		/* 선택된 글 삭제하기 */
		else if (command.equals("/BoardDeleteAction.do")) { 
			requestBoardDelete(request);
			RequestDispatcher rd = request.getRequestDispatcher("/BoardListAction.do");
			rd.forward(request, response);
		}
	}
	
	
	/* 등록된 글 목록 가져오기 */
	public void requestBoardList(HttpServletRequest request){
		BoardDAO dao = BoardDAO.getInstance();
		List<BoardDTO> boardlist = new ArrayList<BoardDTO>();
		
		int pageNum=1;
		int limit=LISTCOUNT;
		
		if(request.getParameter("pageNum")!=null) pageNum=Integer.parseInt(request.getParameter("pageNum"));
		
		String items = request.getParameter("items");
		String text = request.getParameter("text");
		String category = request.getParameter("category");
		
		int total_record=dao.getListCount(items, text, category);
		boardlist = dao.getBoardList(pageNum,limit, items, text, category);
		
		int total_page; // 총 페이지 개수
		
		/* 보여줄 행의 개수가 5개씩 나누어질때 페이지 증가없이 구현*/
		if (total_record % limit == 0){
			total_page =total_record/limit;
			Math.floor(total_page);
		}
		
		/* 보여줄 행의 개수가 5개식 나누어지지 않을때, 페이지 1 증가하여 구현*/
		else{
			total_page =total_record/limit;
			Math.floor(total_page); // Math.floor : 소수점 반올림하여 정수로 
			total_page = total_page + 1;
		}
		request.setAttribute("pageNum", pageNum); // 현재 페이지 
		request.setAttribute("total_page", total_page); // 전체 페이지 수
		request.setAttribute("total_record",total_record); // 전체 행의 수
		request.setAttribute("boardlist", boardlist); // 조회된 ArrayList형태의 자료 
		request.setAttribute("category", category); // 카테고리 
	}
	
	
	
	/* 새로운 글 등록하기 */
	public void requestBoardWrite(HttpServletRequest request) throws IOException{
		BoardDAO dao = BoardDAO.getInstance();
		BoardDTO board = new BoardDTO();
		
		String filename="";
		String realFolder="/var/lib/tomcat8/webapps/company/resources/upload";
		int maxSize=5*1024*1024; 
		String encType = "utf-8";
		
		MultipartRequest multi = new MultipartRequest(request,realFolder,maxSize,encType,new DefaultFileRenamePolicy());
		
		
		String id = multi.getParameter("id");
		String name = multi.getParameter("name");
		String title = multi.getParameter("title");
		String content = multi.getParameter("content");
		String category = multi.getParameter("category");

		
		Enumeration files = multi.getFileNames();
		String fname = (String) files.nextElement();
		String fileName = multi.getFilesystemName(fname);
		
		board.setId(id);
		board.setName(name);
		board.setTitle(title);
		board.setContent(content);
		board.setCategory(category);
		board.setFilename(fileName);
		
		
		System.out.println(id);
		System.out.println(name);
		System.out.println(title);
		System.out.println(content);
		System.out.println(category);
		System.out.println(fileName);
		
		java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd(HH:mm:ss)");
		String regdate = formatter.format(new java.util.Date());
		
		board.setHit(0);
		board.setRegdate(regdate);
		dao.insertBoard(board,request);
	}
	
	
	/* 선택된 글 상세 페이지 가져오기 */
	public void requestBoardView(HttpServletRequest request){
		BoardDAO dao = BoardDAO.getInstance();
		int num = Integer.parseInt(request.getParameter("num"));
		int pageNum = Integer.parseInt(request.getParameter("pageNum"));
		
		BoardDTO board = new BoardDTO();
		
		board = dao.getBoardByNum(num, pageNum);
		request.setAttribute("num", num);
		request.setAttribute("page", pageNum);
		request.setAttribute("board", board);
	}
	
	
	/* 선택된 글 내용 수정하기 */
	public void requestBoardUpdate(HttpServletRequest request) throws IOException{
		int num = Integer.parseInt(request.getParameter("num"));
		int pageNum = Integer.parseInt(request.getParameter("pageNum"));
		
		BoardDAO dao = BoardDAO.getInstance();
		BoardDTO board = new BoardDTO();
		
		
		String filename="";
		String realFolder="/var/lib/tomcat8/webapps/company/resources/upload";
		int maxSize=5*1024*1024; 
		String encType = "utf-8";
		
		MultipartRequest multi = new MultipartRequest(request,realFolder,maxSize,encType,new DefaultFileRenamePolicy());
		
		
		String id = multi.getParameter("id");
		String name = multi.getParameter("name");
		String title = multi.getParameter("title");
		String content = multi.getParameter("content");
		String category = multi.getParameter("category");

		
		Enumeration files = multi.getFileNames();
		String fname = (String) files.nextElement();
		String fileName = multi.getFilesystemName(fname);
		
		board.setNum(num);
		board.setName(name);
		board.setTitle(title);
		board.setContent(content);
		board.setFilename(fileName);
		
		java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd(HH:mm:ss)");
		String regdate = formatter.format(new java.util.Date());
		
		board.setHit(0);
		board.setRegdate(regdate);
		dao.updateBoard(board);
	}
	
	
	/* 선택된 글 삭제하기 */
	public void requestBoardDelete(HttpServletRequest request){
		int num = Integer.parseInt(request.getParameter("num"));
		int pageNum = Integer.parseInt(request.getParameter("pageNum"));
		
		BoardDAO dao = BoardDAO.getInstance();
		dao.deleteBoard(num);
	}

}
