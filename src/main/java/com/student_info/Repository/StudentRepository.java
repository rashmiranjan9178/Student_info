package com.student_info.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.student_info.Entity.Student;

public interface StudentRepository extends JpaRepository<Student, Long> {

}
