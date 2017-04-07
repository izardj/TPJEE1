package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.Client;
import service.ClientService;
import service.IClientService;

/**
 * Servlet implementation class MaServlet
 */
@WebServlet("/AjouterClient")
public class AjouterClient extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AjouterClient() {
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
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		int age = Integer.parseInt(request.getParameter("age"));
		String couleurYeux = request.getParameter("couleuryeux");
		
		// 2- traitements avec la couche service
		IClientService ics = new ClientService();
		
		Client c = new Client();
		c.setAge(age);
		c.setCouleurYeux(couleurYeux);
		c.setNom(nom);
		c.setPrenom(prenom);
		
		ics.ajouterClient(c);
		
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
