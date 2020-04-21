package com.java;

import java.util.ArrayList;
import java.util.List;

public class StudentDataUtil {

     public static List<Student> getStudent()
     {
         //create an empty list
         List<Student> students = new ArrayList<>();
         //add students
         students.add(new Student("Ahmed","Ali","ahmedAli@email.com"));
         students.add(new Student("Marium","Mukhtar","marium@email.com"));
         students.add(new Student("Maria","Ali","maria@email.com"));
         return students;
     }
}
