package chap17;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/init1")
public class InitMethodEx1 extends HttpServlet {
	private static final long serialVersionUID = 1L;       
    
    public InitMethodEx1() {
        super();       
    }
    @Override
    public void init() throws ServletException{
    	super.init();
    	System.out.println("InitMethodEx1 init 메소드 최초 실행");
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		System.out.println("init doget 실행");
		response.getWriter().append("init go get 실행").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
