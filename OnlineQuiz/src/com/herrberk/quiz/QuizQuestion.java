package com.herrberk.quiz;

public class QuizQuestion {
	
	int questionNumber;
	String question;
	String questionOptions[];
	int correctOptionIndex;
	
	
	public String getQuestion()
	{ 
		return question;
	}
	
	public int getQuestionNumber()
	{
		return questionNumber;
	}
	
	public void setQuestionNumber(int i)
	{
		questionNumber=i;
	}
	
	public int getCorrectOptionIndex()
	{
		return correctOptionIndex;
	}
	
	public String[] getQuestionOptions()
	{
		return questionOptions;
	}
	
	public void setQuestion(String s)
	{
		question=s;
	}
	public void setCorrectOptionIndex(int i)
	{
		correctOptionIndex=i;
	}
	public void setQuestionOptions(String[]s)
	{
		questionOptions=s;
	}

}
