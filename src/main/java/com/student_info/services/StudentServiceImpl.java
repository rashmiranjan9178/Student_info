package com.student_info.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.student_info.Entity.Student;
import com.student_info.Repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentServices {
   
	@Autowired
	private StudentRepository studentRepo;

	@Override
	public void saveOneLead(Student student) {
		studentRepo.save(student);
		
		
	}

	@Override
	public List<Student> listAllStudent() {
		List<Student> students = studentRepo.findAll();
		return students;
	}

	@Override
	public Student getOneLead(long id) {
		 Optional<Student> findById = studentRepo.findById(id);
		 Student students = findById.get();
		return students;
	}

	@Override
	public void deleteOneLead(long id) {
		studentRepo.deleteById(id);
		
	}

}
	

