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
 * Servlet implementation class Pedidos
 */
@WebServlet("/Pedidos")
public class Pedidos extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Pedidos() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		MysqlConnect c = MysqlConnect.getDbCon();

		String cantidad = request.getParameter("cantidad");
		String id_pr = request.getParameter("id_pr");

		// LO PRIMERO, ES COMPROBAR SI EXISTE ALGUN PEDIDO QUE NO ESTE
		// CONFIRMADO

		ResultSet rs = null;

		int id_d = Integer.parseInt(request.getSession().getAttribute("id_client").toString());

		try {
			rs = c.query("SELECT * FROM pedido WHERE confirmado = 0 AND cliente_id = "+ id_d + ";");

			if (rs.next()) { //hay cesta

				String id_p = rs.getString("id");
				String query = "INSERT INTO producto_pedido ( pedido_id, producto_id, cantidad ) VALUES ('" + id_p + "','" + id_pr + "','" + cantidad
						+ "')";

				c.insert(query);
				request.getRequestDispatcher("jsp/pedidoterminado.jsp").forward(request, response);

			} else { //no hay cesta


				String query1 = "INSERT INTO pedido (cliente_id, confirmado) VALUES ('" + id_d + "',0)";
				c.insert(query1);

				// UNA VEZ CREADO, HABRA QUE AÑADIR EL PRODUCTO DESEADO Y LA
				// CANTIDAD SELECCIONADA

				ResultSet re = null;
				re = c.query("SELECT * FROM pedido WHERE confirmado = 0 AND cliente_id = " + id_d + ";");

				re.next();
				String id_p = re.getString("id");

				String query2 = "INSERT INTO prodcuto_pedido ( pedido_id, producto_id, cantidad ) VALUES ('" + id_p + "','" + id_pr + "','" + cantidad
						+ "')";

				c.insert(query2);
				request.getRequestDispatcher("jsp/pedidoterminado.jsp").forward(request, response);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
