package com.bigbell.servletdemo.mvctwo;

import java.util.ArrayList;
import java.util.List;

public class StudentDataUtil {
	
	public static List<Student> getStudents(){
		
		// create an empty list
		List<Student> students = new ArrayList<>();
		
		// add sample data
		students.add(new Student("Bukayo", "Saka", "saka@arsenal.com"));
		students.add(new Student("Granit", "Xhaka", "Xhaca@arsenal.com"));
		students.add(new Student("Ben", "White", "Ben@arsenal.com"));
		
		//  return the list
		return students;
	}
}
