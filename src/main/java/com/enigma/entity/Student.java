package com.enigma.entity;

public class Student {
    private String studentId;
    private String studentName;
    private String department;
    private int marks;

    public Student(String studentId, String studentName, String department, int marks) {
        this.studentId = studentId;
        this.studentName = studentName;
        this.department = department;
        this.marks = marks;
    }

    public String getStudentId() {
        return studentId;
    }

    public String getStudentName() {
        return studentName;
    }

    public String getDepartment() {
        return department;
    }

    public int getMarks() {
        return marks;
    }

    public boolean isPass() {
        return marks >= 40;
    }
}


