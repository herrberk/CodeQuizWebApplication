package com.herrberk.quiz.controller;

import java.io.IOException;
import java.util.LinkedList;
import java.util.ListIterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.herrberk.quiz.DatabaseConnectionFactory;

@WebServlet("/userPanel")
public class UserPanelController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserPanelController() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// Get the username information from the Http Session
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("user");
		session.setAttribute("user", username);

		// Retrieve User Test Results from the database and return it as a LinkedList
		LinkedList<Integer> tests = DatabaseConnectionFactory.retrieveUserData(username);

		ListIterator<Integer> listIterator = tests.listIterator();
		Integer[] array = new Integer[20];
		int i = 0;

		// Iterate through the list and get the data 
		while (listIterator.hasNext()) {
			array[i] = listIterator.next();
			i++;
		}
		// set the data as attributes of the request
		request.setAttribute("java", array[0]);
		request.setAttribute("javascript", array[1]);
		request.setAttribute("sequel", array[2]);
		request.setAttribute("python", array[3]);
		request.setAttribute("css", array[4]);
		request.setAttribute("php", array[5]);
		request.setAttribute("c", array[6]);
		request.setAttribute("ruby", array[7]);

		// Send this information to the userPanel.jsp
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsps/userPanel.jsp");
		rd.forward(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
}
