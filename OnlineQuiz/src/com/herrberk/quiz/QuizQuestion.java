package com.herrberk.quiz;

public class QuizQuestion {
	
	int questionNumber;
	String question;
	String questionOptions[];
	int correctOptionIndex;
	String image;
	
	
	public String getQuestion()
	{ 
		return question;
	}
	public String getImage()
	{ 
		return image;
	}
	public int getQuestionNumber()
	{
		return questionNumber;
	}
	
	public void setQuestionNumber(int i)
	{
		questionNumber=i;
	}
	public void setImage(String im)
	{
		image=im;
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
