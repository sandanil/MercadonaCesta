package servlet;

import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.MysqlConnect;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.MysqlConnect;
/**
 * Servlet implementation class DetalleProducto
 */
@WebServlet("/DetalleProducto")
public class DetalleProducto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetalleProducto() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		MysqlConnect c = MysqlConnect.getDbCon();
		ResultSet rs = null;
		String id_d = request.getParameter("id");
		
		try {
			//rs=c.query("Select * from producto where id="+request.parameter(id)");
			rs=c.query("SELECT * FROM producto WHERE id = "+ id_d +";");
			request.setAttribute("resultados", rs);
			
		} catch ( SQLException e) {
			e.printStackTrace();			
		}
		
		
		request.getRequestDispatcher("jsp/detalle.jsp").forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
