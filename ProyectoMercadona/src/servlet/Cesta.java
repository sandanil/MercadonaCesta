package servlet;

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
 * Servlet implementation class Cesta
 */
@WebServlet("/Cesta")
public class Cesta extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cesta() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		MysqlConnect c = MysqlConnect.getDbCon();
		String id_d = request.getParameter("id");
		ResultSet rs = null;
		String idped=null;
		int id_s = Integer.parseInt(request.getSession().getAttribute("id").toString());
		
		
		try {
			rs = c.query("SELECT * FROM pedido WHERE cliente = "+id_s+" AND confirmado = 0;");
			idped=rs.getString("id");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			if (rs.next()) {
			//AÑADIR EL PRODUCTO A ESE PEDIDO
			
				String query= "INSERT INTO producto_pedido (pedido, producto) VALUES ('"+idped+"',"+id_d+")";
				
			
			} else {
			
			// HAY QUE CREAR LA CESTA
				String cest = "INSERT INTO pedido (cliente, confirmado) VALUES ('"+id_s+"',0)";
				c.insert(cest);
				
				rs=c.query("select * from pedido where cliente="+id_s+" and confirmado=0");
				idped=rs.getString("id");
				String query= "INSERT INTO producto_pedido (pedido, producto) VALUES ('"+idped+"',"+id_d+")";
					
			}
		} catch (SQLException e) {
				e.printStackTrace();
		}
			
		request.getRequestDispatcher("jsp/cesta.jsp").forward(request, response);

		
		
		
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
