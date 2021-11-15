// //https://hackmd.io/@kuzmapetrovich/S1x90jWGP#Exercise-2
// //ex. 1
// import 'dart:io';
//
// void main() {
//   print("What's your name?");
//   String? name = stdin.readLineSync();
//
//   print("How old are you?");
//   int? age = int.parse(stdin.readLineSync()!);
//
//   int howMany = 100 - age;
//   print('Hello $name to be 100 years old you need $howMany years.');
// }

// //ex. 2
// import 'dart:io';
//
// void main() {
//   print("Hello!");
//   while (true) {
//     print("Please enter an integer. To stop the program enter bye");
//     String? word = stdin.readLineSync();
//     if (word != 'bye') {
//       int number = int.parse(word!);
//       if (number % 2 == 0) {
//         print("The number $number is even");
//       } else {
//         print("The number $number is odd");
//       }
//     } else if (word == 'bye') {
//       break;
//     }
//   }
// }

//ex. 3

// void main(){
//   List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
//
//   for(int i in a){
//     if(i<5) {
//       print(i);
//     }
//   }
// }

//ex. 4

// import 'dart:io';
//
// void printFactors(int number){
//   for(int i = 1; i <= number; i++){
//     if(number % i == 0){
//       print(i);
//     }
//   }
// }
//
// void main(){
//   print("Hello, the program print all factors of the entered number.");
//   while(true) {
//     print("Enter en integer");
//     String? word = stdin.readLineSync();
//     if(word != 'bye'){
//       int number = int.parse(word!);
//       print("Factors of the number: ");
//       printFactors(number);
//     }else{
//       break;
//     }
//   }
//   print("End of the program");
// }

// // ex. 5 INTERSECTION
//
// List<int> compareNumbers(List<int> x, List<int> y){
//   List<int> z = [];
//   for(int i in x){
//     for(int j in y){
//       if(i == j){
//         z.add(i);
//       }
//     }
//   }
//   return z;
// }
//
// void main(){
//   List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
//   List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
//
//   List<int> comparedNum = compareNumbers(a, b);
//
//   var result = comparedNum.toSet().toList();
//
//   print(result);
// }

// //ex. 6 PALINDROME!!!
//
// import 'dart:io';
//
// void main(){
//   print("Hello!");
//   while(true) {
//     stdout.write("Enter a word\n");
//     String? word = stdin.readLineSync()!.toLowerCase();
//
//     //split - podziel, reversed - odwroc, join - polacz
//     String newWord = word
//         .split('')
//         .reversed
//         .join('');
//
//     if (word != 'bye') {
//       if (word == newWord) {
//         stdout.write("Word $word is a palindrome\n");
//       } else {
//         stdout.write("Word $word is not a palindrome\n");
//       }
//     }
//     else if(word =='bye'){
//       break;
//     }
//   }
//   // int temp = 0;
//   // while(true) {
//   //   print("Please enter the word.");
//   //   String? word = stdin.readLineSync();
//   //   for (int i = 1; i <= word!.length; i++) {
//   //     for (int j = word!.length; j > 0; j--) {
//   //       if (i == j) {
//   //         temp++;
//   //       }
//   //     }
//   //   }
//   //   if (temp == word.length) {
//   //     print("Word $word is a palindrome! :)");
//   //   }
//   //   else {
//   //     print("Word $word is not a palindrome :(");
//   //   }
//   // }
// }

// //ex. 7
//
// import 'dart:io';
//
// void main(){
//   List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
//   List<int> b = [];
//   for(int i in a){
//     if(i % 2 == 0){
//       b.add(i);
//     }
//   }
//   stdout.write(b);
// }

//ex. 8 ROCK-PAPER-SCISSORS

// import 'dart:io';
//
// void main() {
//   print("Hello");
//   int pointsPlayer1 = 0;
//   int pointsPlayer2 = 0;
//   while (true) {
//     print("Player 1: Please enter word Rock or Paper or Scissors");
//     String? player1 = stdin.readLineSync()!.toLowerCase();
//     print("Player 2: Please enter word Rock or Paper or Scissors");
//     String? player2 = stdin.readLineSync()!.toLowerCase();
//     if (player1 == 'rock') {
//       if (player2 == 'rock') {
//       } else if (player2 == 'paper') {
//         pointsPlayer2++;
//       } else if (player2 == 'scissors') {
//         pointsPlayer1++;
//       }
//     } else if (player1 == 'paper') {
//       if (player2 == 'rock') {
//         pointsPlayer1++;
//       } else if (player2 == 'paper') {
//       } else if (player2 == 'scissors') {
//         pointsPlayer2++;
//       }
//     }
//     else if(player1 == 'scissors'){
//       if (player2 == 'rock') {
//         pointsPlayer2++;
//       } else if (player2 == 'paper') {
//         pointsPlayer1++;
//       } else if (player2 == 'scissors') {
//       }
//     }
//     if(pointsPlayer1 == 3 || pointsPlayer2 == 3){
//       print("Results player 1: $pointsPlayer1 results player 2 $pointsPlayer2.");
//       if(pointsPlayer1 > pointsPlayer2){
//         print("Player 1 won!");
//       }
//       else if(pointsPlayer1 == pointsPlayer2){
//         print("It's a tie!");
//       }
//       else{
//         print("Player 2 won!");
//       }
//       break;
//     }
//   }
// }

// // ex. 9
// import 'dart:io';
// import 'dart:math';
//
// void main() {
//   Random random = new Random();
//   int x = random.nextInt(100);
//   print(x);
//   print("Hello!");
//   print("Guess the number!");
//   int y = int.parse(stdin.readLineSync()!);
//   if (x != y) {
//     while (x != y) {
//       if (x > y) {
//         print("We're looking for the greater number!");
//       } else if (x < y) {
//         print("We're looking for smaller number!");
//       }
//       print("Try again!");
//       y = int.parse(stdin.readLineSync()!);
//     }
//   }
//   else if(x == y){
//     print("Congrats, you've guessed the number!");
//   }
// }

// //ex. 10
//
// import 'dart:io';
//
// void checkPrime(int number) {
//   List<int> factors = [
//     for (int i = number; i > 0; i--)
//       if (number % i == 0) i
//   ];
//
//
//   if (factors.length > 2) {
//     print("Number $number is not prime");
//   } else if (factors[0] == number && factors[1] == 1) {
//     print("Number $number is prime");
//   }
// }
//
// void main() {
//   print("Hello\nPlease enter a number");
//   int number = int.parse(stdin.readLineSync()!);
//   checkPrime(number);
// }
