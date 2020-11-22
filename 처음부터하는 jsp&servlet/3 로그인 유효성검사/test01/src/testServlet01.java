import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/** 서블릿은 자바 코드 내부에 html 코드가 들어가는 구조이지만,
 *  jsp는 이와 반대로 html 문서 내부에 자바 코드가 들어가는 구조이다.
 *  
 *  html 문서 일부분에서 자바를 사용할 수 있도록 하기 위해서 jsp는 다양한 태그를 제공하는데, 이에 스크립트릿, EL 등이 있다.
 *  
 *  보통 복잡한 로직은 서블릿에 기술해놓고 결과만을 JSP 페이지를 통해 클라이언트에 제공하는 형태로 개발한다.
 * */


/**어노테이션(Annotation)
 * 
 * 서블릿 3.0에서부터 제공되었으며,
 * 서블릿 클래스의 요청을 위한 URL매핑을 보다 쉽게 자바 클래스에서 설정할 수 있도록 제공된다.
 * */
@WebServlet("/testServlet01")


/** 서블릿 클래스 정의하기
 *  서블릿 클래스를 정의하는 것은 정형화(무조건 아래와 같이 해야 함) 되어있다.
 *  (1) 서블릿 클래스를 정의하기 위해서는 javax.servlet.http 패키지에서 제공하는 HttpServlet 클래스를 상속받아 구현해야 하고
 *  (2) 브라우저를 통해 외부에서 실행되기 때문에 접근 제한자는 반드시 public이어야 한다.
 * 
 * */
public class testServlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    

	/** 요청 메소드
	 *  요청 방식에 따라 doGet(), doPost()가 호출되기 때문에 요청 방식에 맞춰서 오버라이딩해야 한다.
	 *  
	 *  HttpServletRequest request : 클라이언트의 요청(req)을 처리
	 *  HttpServletResponse response : 요청 처리 결과를 클라이언트에게 되돌리기(응답)
	 * */
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//응답을 text나 html로 부여주겠다는 의미임. 또한 한글이 깨재지 않도록 utf-8로 인코딩한다.
		response.setContentType("text/html; charset=UTF-8"); 
		
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num1 = 20;
		int num2 = 10;
		int add = num1+num2;
		
		//출력할 데이터를 request 객체의 속성값으로 저장함
		request.setAttribute("num1", num1);
		request.setAttribute("num2", num2);
		request.setAttribute("add", add);
		
		//포워드 방식으로 result01.jsp 페이지로 이동함
		request.getRequestDispatcher("result01.jsp").forward(request, response);
	}

}
