package com.dahee.main;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DispatcherServelet
 */
// @WebServlet("/DispatcherServelet") -> web.xml에 매핑 정보를 등록해서 사용할 것이기 때문에 주석처리한다. (둘중에 하나만 사용 가능)
// 서블릿이라고 인정 받으려면 매핑 정보가 등록 되어야 한다.
// web.xml 위치 : servlet\src\main\webapp\WEB-INF\web.xml
public class DispatcherServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	// 기본생성자
    public DispatcherServelet() {
        super();
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
    // 보통 init() 메서드에서는 oracle 드라이버 확인이나 처리에 필요한 객체생성(service,DAO,controller 등)을 한다.
	public void init(ServletConfig config) throws ServletException {
		System.out.println("DispatcherServlet.init() - 서버가 동작되면서 같이 처음 한 번 동작되는 초기화 메서드");
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 메인 역할을 함
		System.out.println("DispatcherServlet.service() - 실행되고 있음.");
		// 사용자가 요청한 페이지(자원)
		System.out.println("요청한 페이지 : " + request.getRequestURI());
	}
}
