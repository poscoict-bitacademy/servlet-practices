package jstlel;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class _02Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/**
		 * 1. scope(범위)
		 * 객체가 존재하는 범위
		 * 
		 * 2. 객체가 오래 지속되는 순서
		 * Application(Context) Scope > Session Scope > Request Scope > Page Context
		 * 
		 * 3. EL이 이름으로 객체를 찾는 순서
		 * Application(Context) Scope < Session Scope < Request Scope < Page Context
		 * 
		 * 주의: 같은 이름으로 여러 범위에 객체를 저장할 경우, 주의가 필요
		 */

		// request scope
		UserVo vo1 = new UserVo();
		vo1.setNo(1L);
		vo1.setName("둘리1");
		request.setAttribute("vo", vo1);
		
		// session scope
		UserVo vo2 = new UserVo();
		vo2.setNo(2L);
		vo2.setName("둘리2");
		request.getSession(true).setAttribute("vo", vo2);
		
		request.getRequestDispatcher("/WEB-INF/views/02.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}