package com.mohammadazadeh.ems.domain;

public class Assignment
{
	private int assignmentNumber;
	private String courseName;
	private String deadline;
	private String content;
	private String attachment;
	
	public Assignment(int assignmentNumber, String courseName, String deadline, String content, String attachment)
	{
		this.assignmentNumber = assignmentNumber;
		this.courseName = courseName;
		this.deadline = deadline;
		this.content = content;
		this.attachment = attachment;
	}
	
	public int getAssignmentNumber()
	{
		return assignmentNumber;
	}
	
	public String getCourseName()
	{
		return courseName;
	}
	
	public String getDeadline()
	{
		return deadline;
	}
	
	public String getContent()
	{
		return content;
	}
	
	public String getAttachment()
	{
		return attachment;
	}
}