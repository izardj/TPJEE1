package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exceptions.ClientExistePasException;
import metier.Client;
import service.ClientService;
import service.IClientService;

/**
 * Servlet implementation class MaServlet
 */
@WebServlet("/ModifierClient")
public class ModifierClient extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IClientService ics = new ClientService();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ModifierClient() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		// 1- récupérer les paramètres
		int id = Integer.parseInt(request.getParameter("id"));
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		
		// 2- traitements avec la couche service		
		Client c = new Client();
		
		ics.modifierClient(id, nom, prenom);
		try {
			c = ics.chercherClient(id);
		} catch (ClientExistePasException e) {
			e.printStackTrace();
		}
		
		// 3- préparation envoi
		request.setAttribute("nom", c.getNom());
		request.setAttribute("prenom", c.getPrenom());
		request.setAttribute("couleuryeux", c.getCouleurYeux());
		request.setAttribute("age", c.getAge());
		
		// 4- envoi
		request.getRequestDispatcher("/afficher_client.jsp").forward(request, response);

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
