package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import negocio.Cliente;

@WebServlet("/ClienteController")
public class ClienteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public ClienteController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Erro encontrado ao executar o programa: The server encountered an unexpected condition that prevented it from fulfilling the request.
		Cliente cliente = new Cliente(request.getParameter("nome"), 
				request.getParameter("email"),
				request.getParameter("user"),
				request.getParameter("password"));
		
		cliente.setCpf(request.getParameter("cpf"));
		cliente.setIdade(Integer.parseInt(request.getParameter("idade")));
		cliente.setGenero(request.getParameter("genero"));
		cliente.setNotificacoes(request.getParameterValues("servicos"));
		
		cliente.impressao();
		
		request.getRequestDispatcher("confirmacao.html").forward(request, response);
		
	}

}