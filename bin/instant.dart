import 'dart:io';
import 'dart:math';

import 'package:instant/instant.dart' as instant;

void main() {
//task one 
  print('enter ypur number');
  final int num = int.parse(stdin.readLineSync()!);
  int checkPrime = 0 ;
  print('min number = 1');
  print('min number = $num');
  stdout.write('even numbers: ');
  for (int i = 1; i <= num; i++) {
    if (i % 2 == 0) {
      stdout.write('$i ');
    }
  }
  print('');
  stdout.write('odd numbers: ');
  for (int i = 1; i <= num; i++) {
    if (i % 2 != 0) {
      stdout.write('$i ');
    }
  }
  print('');
  stdout.write('primry numbers: ');
  for (int i = 1; i <= num; i++,checkPrime=0) {
    for (int p = 2; p < i; p++) {
      if (i % p == 0) {
        checkPrime++;
      }
    }
    if (checkPrime == 0 && i!=1 && i!=2) {
      stdout.write('$i ');
    }
    
  }
  
  print('\naverge = ${num/2}');
  



//==============================================================================================
//task two



  print('please, enter years of study');
  final int studyYears = int.parse(stdin.readLineSync()!);
  final double numberOfSemesters = studyYears * 2;
  double gpa;
  double cgpa = 0;
  // this loop for scaping numbr above 4 and number 0 and make repeative sum 
  for (int i = 0; i < numberOfSemesters; i++) {
    print('please, enter the gpa for semster ${i + 1}');
    gpa = double.parse(stdin.readLineSync()!);
    if (gpa == 0 || gpa > 4) {
      print('error gpa,try again');
      i--;
    }
    if (gpa > 0 && gpa <= 4){
      cgpa += gpa;
    }
  }
  print(cgpa / numberOfSemesters );
  String degree=switch(cgpa / numberOfSemesters){
     <= 4 && >=3.5=> 'A',
     <= 3.4 && >=3=> 'B',
     <= 2.9 && >=2.5=> 'C',
     <= 2.4 && >=2=> 'D',
    _=> 'F'
  };
  print('your degree is $degree');
}
  
