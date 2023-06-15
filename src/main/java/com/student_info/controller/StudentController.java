package com.student_info.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.student_info.Entity.Student;
import com.student_info.dto.Studendto;
import com.student_info.services.StudentServices;

@Controller
public class StudentController {
   
	@Autowired
	private StudentServices studentService;
	
	@RequestMapping("/createStudent")
	public String createStudent_Info() {
		return"create_Student";
	}
	
	@RequestMapping("/saveStudent")
	public String saveStudent_info(Studendto studentdto,ModelMap model,@ModelAttribute("student") Student student) {
//		Student student=new Student();
//		student.setFirstName(studentdto.getFirstName());
//		student.setLastName(studentdto.getLastName());
//		student.setAge(studentdto.getAge());
//		student.setMobile(studentdto.getMobile());
//		studentService.saveOneLead(student);
//		model.addAttribute("student", student);
		studentService.saveOneLead(student);
		return"studentInfo";
		
	}
	
	@RequestMapping("/studentList")
	public String StudentList(ModelMap model) {
     List<Student>students=studentService.listAllStudent();
     model.addAttribute("students", students);
	 return"studentList";
	}
	
	@RequestMapping("/update" )
	public String UpdateStudentInfo(@RequestParam("id")long id,ModelMap model) {
		Student students = studentService.getOneLead(id);
		model.addAttribute("studentUpd", students);
		return"updateStudent_info";
	}
	
	@RequestMapping("/updateInfo")
	public String UpdateStudent(@ModelAttribute("student") Student student,ModelMap model) {
		studentService.saveOneLead(student);
		List<Student>students=studentService.listAllStudent();
	     model.addAttribute("students", students);
		 return"studentList";
		
		
	}
	
	@RequestMapping("/delete")
	public String deleteStudentInfo(@RequestParam("id")long id,ModelMap model) {
		studentService.deleteOneLead(id);
		List<Student>students=studentService.listAllStudent();
	     model.addAttribute("students", students);
		 return"studentList";
		
	}
	
	
	 
	
}
