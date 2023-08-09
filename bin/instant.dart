import 'dart:io';
import 'dart:math';

import 'package:instant/instant.dart' as instant;

void main() {
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
  /* task last seasion
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
  */

//   // int? x;
//   // int z = 5;
//   // if (z == 5) {
//   //   x = 5;
//   // }
//   // if (x !=null) {
//   //   int y = 5 + x;
//   //   print(y);
//   // }

//   // x = z != null ? z : 8;
//   // x = z ?? 8;
//   // x ??=5;

// /*
// abd elrahman
// //   int exp =2;
// //   double bonus;
// // print ("enter your track");
// // String track= stdin.readLineSync()!;
// // print('enter your salary');
// // double Salary =double.parse(stdin.readLineSync()!);
// // track = 'flutter';
// // switch (track) {
// //   case 'FlutterTrack' when exp <= 2:
// //   bonus = .1;
// //   Salary += Salary * bonus;
// //   print('bonus is ${bonus * 100}');
// //   print('your salary is $Salary');
// }
// */

//   // mohammed emad selim
//   // print('please, enter your track');
//   // String track = stdin.readLineSync()!;
//   // track = (track.toLowerCase()).toString();
//   // print('please, enter yoor salary');
//   // double salary = double.parse(stdin.readLineSync()!);
//   // print('please, enter yoor experince');
//   // final int exp = int.parse(stdin.readLineSync()!);
//   // final double bouns;
//   // bouns = switch (track) {
//   //   'flutter' when exp <= 2 => 0.10,
//   //   'back end ' when exp <= 2 => .15,
//   //   'flutter' when exp <= 4 => .20,
//   //   'back end ' when exp <= 4 => .25,
//   //   'flutter' when exp > 4 => .30,
//   //   'back end ' when exp >4 => .30,
//   //   _ => 0,
//   // };
//   // print(bouns);

//   // salary += salary*bouns;
//   // print(salary);
//   // print('your salary after bouns is $salary');

//   // const double bi = 3.14;
//   // print('enter the value of circle reduis');
//   // final double circleReduis = double.parse(stdin.readLineSync()!);
//   // final circleArea = (circleReduis * circleReduis) * bi;
//   // print("circle area = $circleArea cm");

//   // print('please, enter your bouns');
//   // final double bouns = double.parse(stdin.readLineSync()!);
//   // if (bouns < 50) {
//   //   print('fail');
//   // } else if (bouns < 60) {
//   //   print('Accepted');
//   // } else if (bouns < 75) {
//   //   print('Good');
//   // } else if (bouns < 85) {
//   //   print('Very good');
//   // } else if (bouns < 100) {
//   //   print('Excellent');
//   // }
// }

