package com.student_info.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.student_info.Entity.Student;
import com.student_info.Repository.StudentRepository;

@RestController
@RequestMapping("/api/student")
public class StudentRestController {
	

	//http://localhost:8080/api/student	
  @Autowired
   private StudentRepository studentRepo;
  
  @GetMapping
  public List<Student> getAllStudent(){
	  List<Student> students = studentRepo.findAll();
	  return students;
  }
  @PostMapping
  public void SaveOneStudent(@RequestBody Student students) {
	  studentRepo.save(students);
  }
  
  @PutMapping
  public void UpdateOneStudent(@RequestBody Student students) {
	  studentRepo.save(students);
  }
  
  //http://localhost:8080/api/student/4
	@DeleteMapping("/{id}")
	public void deleteOneStudent(@PathVariable("id")long id) {
		studentRepo.deleteById(id);
	}
}
