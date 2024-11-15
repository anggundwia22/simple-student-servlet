package com.enigma.service;

import com.enigma.entity.Student;
import java.util.ArrayList;
import java.util.List;

public class StudentService {
    private List<Student> students = new ArrayList<>();

    public StudentService() {
        students.add(new Student("S1", "Anugerah", "Dep 1", 35));
        students.add(new Student("S2", "Bambang", "Dep 1", 70));
        students.add(new Student("S3", "Cecep", "Dep 1", 60));
        students.add(new Student("S4", "Delima", "Dep 1", 90));
        students.add(new Student("S5", "Epan", "Dep 2", 30));
        students.add(new Student("S6", "Fulan", "Dep 2", 32));
        students.add(new Student("S7", "Gilang", "Dep 3", 70));
        students.add(new Student("S8", "Halimah", "Dep 3", 20));
    }

    public List<Student> getAllStudents() {
        return students;
    }

    public List<Student> getStudentsByDepartment(String department) {
        List<Student> deptStudents = new ArrayList<>();
        for (Student student : students) {
            if (student.getDepartment().equals(department)) {
                deptStudents.add(student);
            }
        }
        return deptStudents;
    }

    public double getPassPercentage(String department) {
        List<Student> deptStudents = getStudentsByDepartment(department);
        int passCount = 0;

        // Periksa kelulusan berdasarkan marks >= 40
        for (Student student : deptStudents) {
            if (student.getMarks() >= 40) {
                passCount++;
            }
        }

        // Hitung persentase kelulusan
        return deptStudents.isEmpty() ? 0 : (passCount / (double) deptStudents.size()) * 100;
    }
}


