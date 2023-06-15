package com.student_info.services;

import java.util.List;

import com.student_info.Entity.Student;

public interface StudentServices {

	void saveOneLead(Student student);

	public List<Student> listAllStudent();

    public Student getOneLead(long id);

	void deleteOneLead(long id);

}
