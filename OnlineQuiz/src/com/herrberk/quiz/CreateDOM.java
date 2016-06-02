package com.herrberk.quiz;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URISyntaxException;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.xml.sax.SAXException;

public class CreateDOM {

	public static Document getDOM(String test)
			throws SAXException, ParserConfigurationException, IOException, URISyntaxException {
		Document dom = null;

		// Download the Online XML file for each quiz
		String quizFile = "http://berksoysal.vacau.com/" + test + "-quiz-1.xml";
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		DocumentBuilder db = dbf.newDocumentBuilder();
		try {
			dom = db.parse(quizFile);
		} catch (FileNotFoundException fileNotFound) {
			System.out.println("Error : Quiz File Not Found " + fileNotFound);
		}
		dom.getDocumentElement().normalize();
		return dom;
	}

}
