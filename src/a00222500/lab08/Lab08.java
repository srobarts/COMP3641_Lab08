package a00222500.lab08;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import a00222500.lab08.data.DatabaseBean;

/**
 * Servlet implementation class lab08
 */
@WebServlet("/lab08")
public class Lab08 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DatabaseBean db;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Lab08() {
        super();
    }
    
    /**
	 * servletInit() retrieves database information from web.xml and connects to database
	 */
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		
		String url;
		String driver;
		String username;
		String password;
		
		db = new DatabaseBean();
		
		config = getServletConfig();
		driver = config.getInitParameter("driver");
		url = config.getInitParameter("url");
		username = config.getInitParameter("username");
		password = config.getInitParameter("password");
		
		//connect to database
		db.connect(url, username, password, driver);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		
	}
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

}
