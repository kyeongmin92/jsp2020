package chap17;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap11.Member;


@WebServlet("/thread1")
public class ThreadServletEx1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private int i = 0;
       private Member member = new Member();

    public ThreadServletEx1() {
        super();       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		i++;                     - 위험
		member.setName("name");  - 위험
		*/
		
		/*
		request     - 안전
		session     - 안전하지 않음 (불가피하게 쓰는 경우 가끔있음)
		application - 위험
		*/
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
