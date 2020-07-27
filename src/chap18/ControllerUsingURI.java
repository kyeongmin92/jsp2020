package chap18;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ControllerUsingURI
 */
//@WebServlet("/ControllerUsingURI")
public class ControllerUsingURI extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// <커맨드, 핸들러인스턴스> 매핑 정보 저장
	private Map<String, CommandHandler> map = new HashMap<>();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerUsingURI() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    public void init() throws ServletException {
    	super.init();
    	// FileInputStream클래스는 InputStream 클래스를 상속받은 후손 클래스로, 스트림을 생성하는 클래스
    	FileInputStream fis = null;
    	try {
    		String filePath = getInitParameter("configFile");
    		String realPath = getServletContext().getRealPath(filePath);
    		
    		fis = new FileInputStream(realPath);
    		
    		//Properties는 프로퍼티를 관리할 때 사용하는 클래스 (이름, 값)으로 구성
    		Properties props = new Properties();
    		//load 메서드를 사용하면 설정 파일로부터 프로퍼티 정보를 읽어올 수 있음
    		props.load(fis);
    		
    		//Enumeration 인터페이스는 객체들의 집합(Vector)에서 각각의 객체들을 한순간에 하나씩 처리할 수 있는 메소드를 제공하는 켈렉션
    		Enumeration<String> keys = (Enumeration<String>) 
    				props.propertyNames();
    		
    		//hasMoreElements => Vector로 부터 생성된 Enumeration의 요소가 있으면 true, 아니면 false 반환
    		while (keys.hasMoreElements()) {
    			//nextElement =>  Enumeration 내의 다음 요소를 반환한다. 
    			String key = keys.nextElement();
    			String className = props.getProperty(key);
    			
    			Class<CommandHandler> clazz 
    			= (Class<CommandHandler>) Class.forName(className);
    			// forName("클래스명")에 무엇을 넣느냐에 따라 객체가 다름    			
    			
    			CommandHandler comm = clazz.newInstance();
    			// newInstance() 메소드는 Class가 나타내는  클래스의 인스턴스 생성
    			
    			map.put(key, comm);
    		}
    		
    	} catch (Exception e) {
    		e.printStackTrace();
    	} finally {
			if (fis != null) {
				try {
					fis.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 어떤 경로로 왔는 지 파악
		// ex) /a.do, /b.do, /c.do
		String requestUri = request.getRequestURI();
		
		// localhost:8080/contextPath/some/a.do
		
		String contextPath = request.getContextPath();
		int startIndex = requestUri.indexOf(contextPath);
		
		String command 
		= requestUri.substring(startIndex + contextPath.length());
		
		CommandHandler com = map.get(command);
		String res = com.process(request, response);
		
		request.setAttribute("result", res);
		
		request.getRequestDispatcher("/chap18/simpleView.jsp")
			.forward(request, response);
	}

}








