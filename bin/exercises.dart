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

// //ex. 11
//
// import 'dart:math';
//
// List<int> newList(List<int> x) {
//   return [x.first, x.last];
// }
//
// void main() {
//   final random = Random();
//   List<int> a = List.generate(20, (_) => random.nextInt(100));
//   List<int> b = newList(a);
//   print(b);
// }

// //ex. 12
// import 'dart:io';
//
// int fib(int x){
//   if(x <= 1){
//     return x;
//   } else{
//     return fib(x - 1) + fib(x - 2);
//   }
// }
//
// void main() {
//   print("Hello!");
//   print("Please enter a number");
//   int number = int.parse(stdin.readLineSync()!);
//   print(fib(number));
// }

// //ex. 13
//
// import 'dart:math';
//
// List<int> newList(List<int> x){
//   return x.toSet().toList();
// }
//
// void main(){
//   final random = Random();
//   List<int> a = List.generate(30, (_) => random.nextInt(100));
//   print(a);
//   List<int> b = newList(a);
//   print(b);
// }

// //ex. 14
// import 'dart:io';
//
// String reverseSentence(String x){
//   return x.split(" ").reversed.toList().join(" ");
// }
//
// void main(){
//   print("Hello");
//   print("Please enter a sentence");
//   String? sentence = stdin.readLineSync();
//   String newSentence = reverseSentence(sentence!);
//   print(newSentence);
// }

// //ew. 15
// import 'dart:convert';
// import 'dart:math';
// import 'dart:io';
//
// void main(){
//   print("Hello");
//   print("Please enter how strong the password should be weak - medium - strong.");
//   String? strength = stdin.readLineSync();
//   int number = 5;
//   if(strength == 'weak'){
//     number = 5;
//   } else if(strength == 'medium'){
//     number = 10;
//   }
//   else if(strength == 'strong'){
//     number = 15;
//   }
//
//   generatePassword(number);
// }
//
// void generatePassword(int x) {
//   final random = Random.secure();
//   List<int> numbers = List.generate(x, (_) => random.nextInt(255));
//   List charList = base64UrlEncode(numbers).split('').toList();
//   charList.shuffle();
//   print("password ${charList.join('')}");
// }

//ex. 16

// import 'dart:io';
// import 'dart:math';
//
// void main() {
//   final random = Random.secure();
//   String number = (1000 + random.nextInt(9999 - 1000)).toString();
//   print(number);
//   print("Hello");
//   int counter = 0;
//
//   while (true) {
//     print("Please enter a 4-digit number. Enter 'STOP' to close the program");
//     String? enteredNumber = stdin.readLineSync()!.toLowerCase();
//     counter++;
//     int cow = 0;
//     int bull = 0;
//     if (number == enteredNumber) {
//       print("Awesome, you need $counter attempts!");
//       break;
//     } else if (enteredNumber == 'stop') {
//       print("Thank u! Bye");
//       break;
//     }
//     for (int i = 0; i < number.length; i++) {
//       if (number[i] == enteredNumber![i]) {
//         cow++;
//       } else if (number.contains(enteredNumber[i])) {
//         bull++;
//       } else if (counter == 4) {
//         print("The end of the game, your score is $cow cows, $bull bulls and the attempts $counter");
//         break;
//       }
//     }
//   }
// }

//ex. 17

// import 'dart:io';
//
// void main(){
//   print("Hello");
//   print("Please enter a size of the game board!");
//   int boardSize = int.parse(stdin.readLineSync()!);
//   draw(boardSize);
// }
//
// void draw(int x){
//   String row = " ---";
//   String col = "|   ";
//
//   for(int i = 0; i < x; i++){
//     print(row * x);
//     print(col * (x+1));
//   }
//   print(row * x);
// }

// //ex. 18
//
// void main() {
//   print("hello, it's tic tac toe game");
//   List<List<int>> game = [[1, 2, 0],[2, 1, 0], [2, 1, 1]];
//   List<List<int>> diagonals = findDiagonals(game);
//   List<List<int>> transpose = trasposeArray(game);
//   print(diagonals);
//   print(transpose);
//   finalGame(game);
// }
//
// //pelna gra
// void finalGame(List<List<int>> x){
//   if(checkRow(x)){
//     print("Row wins");
//   } else if(checkRow(trasposeArray(x))){
//     print("Column wins");
//   } else if(checkRow(findDiagonals(x))){
//     print("Diagonals wins");
//   } else{
//     print("Next time!");
//   }
// }
//
// //sprawdzanie wierszy
// bool checkRow(List<List<int>> x) {
//   for (List<int> y in x) {
//     if (y.toSet().length == 1) {
//       return true;
//     }
//   }
//   return false;
// }
//
// //transponowanie macierzy
// List<List<int>> trasposeArray(List<List<int>> x){
//   return [for(int i = 0; i < x.length; i++) [for(List<int> y in x) y[i]]];
// }
//
// //przekatne
// List<List<int>> findDiagonals(List<List<int>> x){
//   return [[for(var i = 0; i < x.length; i++) x[i][i]],
//     [for(var i = 0; i < x.length; i++) x[i].reversed.toList()[i]]
//   ];
// }

//ex. 19

// import 'dart:io';
//
// void main(){
//   print("Hello!");
//   print("Please enter a size of the game board!");
//   int boardSize = int.parse(stdin.readLineSync()!);
//   print("Player 1: Please enter the row");
//   int x1 = int.parse(stdin.readLineSync()!);
//   print("Player 1: Please enter a column");
//   int y1 = int.parse(stdin.readLineSync()!);
//   print("Player 2: Please enter the row");
//   int x2 = int.parse(stdin.readLineSync()!);
//   print("Player 2: Please enter a column");
//   int y2 = int.parse(stdin.readLineSync()!);
//
//   draw(boardSize);
//
// }
//
// void draw(int x){
//   String row = " ---";
//   String col = "|   ";
//
//   for(int i = 0; i < x; i++){
//     String temp = col * (x+1);
//
//     print(row * x);
//     stdout.write("$temp X");
//     stdout.write("\n");
//   }
//   print(row * x);
// }

//ex 21

// import 'dart:io';
// import 'dart:math';
//
// void main() {
//   print("Hello");
//   print("The program will guess your number");
//   final random = Random();
//   int counter = 0;
//   int x = random.nextInt(101);
//   print("The number $x");
//   while (true) {
//     print("Please enter if number is correct - yes, too low - higher, too high - lower");
//     String? userUnswer = stdin.readLineSync();
//     String correct = 'yes';
//     String low = 'lower';
//     String high = 'higher';
//     counter += 1;
//     if (userUnswer == correct) {
//       print("Number guessed! Attempts $counter");
//       break;
//     } else if (userUnswer == low) {
//       x = random.nextInt(x);
//       print(x);
//     } else if(userUnswer == high){
//       x = random.nextInt(100-x);
//       print(x);
//     } else if(counter > 5){
//       print("The program didn't guessed the numer, attempts $counter");
//       break;
//     }
//   }
// }

//XOR encrypt/decrypt

// void main() {
//   final String encrypted = encryptDecrypt("Renata");
//   print("Encrypted message: " + encrypted);
//
//   final String decrypted = encryptDecrypt(encrypted);
//   print("Decrypted message: " + decrypted);
// }
//
// String encryptDecrypt(String message) {
//   var key = 5;
//   var output = [];
//
//   for (int i = 0; i < message.length; i++) {
//     var charCode = message.codeUnitAt(i) ^ key;
//     output.add(String.fromCharCode(charCode));
//   }
//
//   return output.join("");
// }

// Cesar cipher encrypt/decrypt

// void main() {
//   final String message = "RENATA";
//   final int key = 17;
//
//   final String encrypted = encrypt(message, key);
//   print("Encrypted message: " + encrypted);
//
//   final String decrypted = decrypt(encrypted, key);
//   print("Decrypted message: " + decrypted);
// }
//
// int toCharCode(String string) {
//   return string.codeUnitAt(0);
// }
//
// String fromCharCode(int character) {
//   return String.fromCharCodes([character]);
// }
//
// String cesar(String message, int key) {
//   StringBuffer stringBuffer = StringBuffer();
//   for (int i = 0; i < message.length; i++) {
//     int character = message.codeUnitAt(i);
//     if (character >= toCharCode('A') && character <= toCharCode('Z')) {
//       stringBuffer.write(fromCharCode(toCharCode("A") + (character - toCharCode("A") + key) % 26));
//     } else if (character >= toCharCode('a') && character <= toCharCode('z')) {
//       stringBuffer.write(fromCharCode(toCharCode("a") + (character - toCharCode("a") + key) % 26));
//     } else {
//       stringBuffer.write(message[i]);
//     }
//   }
//   return stringBuffer.toString();
// }
//
// String encrypt(String message, int key) {
//   return cesar(message, key);
// }
//
// String decrypt(String message, int key) {
//   return cesar(message, 26 - key);
// }

//
// import 'dart:io';
//
// void main() {
//   //print(singleDigits);
//   print('Please enter the number');
//   int? digit = int.parse(stdin.readLineSync()!);
//   String phrase = convertToWords(digit);
//   print(phrase);
// }
//
// int toCharCode(String string) {
//   return string.codeUnitAt(0);
// }
//
// String fromCharCode(int character) {
//   return String.fromCharCodes([character]);
// }
//
// String convertToWords(int number) {
//   final List<String> singleDigits = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'];
//   final List<String> twoDigits = ['', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen'];
//   final List<String> tensDigits = ['', '', 'twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'];
//   final List<String> moreDigits = ['hundred', 'thousand'];
//
//   int length = number.toString().length;
//
//   String phrase = 'something';
//   String phraseTemp = '';
//
//
//   if (length == 0) {
//     phrase = 'Empty string';
//     return phrase;
//   }
//   if (length > 4) {
//     phrase = 'Length more than 4 is not supported';
//     return phrase;
//   }
//   //DIGITS 0-9
//   if (length == 1) {
//     int index = toCharCode(number.toString()) - toCharCode("0");
//     phrase = singleDigits[index];
//     return phrase;
//   }
//
//   int x = 0;
//
//   while (x <= length) {
//     //DIGITS 100-1000
//     if (length >= 3) {
//       if (toCharCode(number.toString()[x]) - toCharCode("0") != 0) {
//         String phrase1 = singleDigits[toCharCode(number.toString()[x]) - toCharCode("0")];
//         String phrase2 = moreDigits[length - 3];
//         phraseTemp = phraseTemp + phrase1 + ' ' + phrase2 + ' ';
//       }
//       length--;
//     } else {
//       //DIGITS 10-19
//       if (toCharCode(number.toString()[x]) - toCharCode("0") == 1) {
//         int index = toCharCode(number.toString()[x]) - toCharCode("0") + toCharCode(number.toString()[x + 1]) - toCharCode("0");
//         phrase = twoDigits[index];
//         print(length);
//         if(x <= 2){
//           String newPhrase = phraseTemp + phrase;
//           return newPhrase;
//         } else {
//           return phrase;
//         }
//       }
//       //DIGIT 20
//       else if (toCharCode(number.toString()[x]) - toCharCode("0") == 2 && toCharCode(number.toString()[x + 1]) - toCharCode("0") == 0) {
//         phrase = 'twenty';
//         if(x <= 2){
//           return phraseTemp + phrase;
//         } else {
//           return phrase;
//         }
//       } else {
//         int i = toCharCode(number.toString()[x]) - toCharCode("0");
//         if (i > 0) {
//           phrase = tensDigits[i];
//           return phrase;
//         }
//         x++;
//         if (toCharCode(number.toString()[x]) - toCharCode("0") != 0) {
//           print(number.toString()[x]);
//           int temp = toCharCode(number.toString()[x]) - toCharCode("0");
//           phrase = singleDigits[temp];
//           return phrase;
//         }
//       }
//     }
//     x++;
//   }
//   return 'return koncowy';
// }


import 'dart:io';

void main(){
  print('Please enter the number');
  int? digit = int.parse(stdin.readLineSync()!);

  String phrase = _convert(digit);
  print(phrase);

}

String _convertLessThanOneThousand(int number){
  final tensNames = ["", " ten", " twenty", " thirty", " forty", " fifty", " sixty", " seventy", " eighty", " ninety"];

  final numNames = [
    "",
    " one",
    " two",
    " three",
    " four",
    " five",
    " six",
    " seven",
    " eight",
    " nine",
    " ten",
    " eleven",
    " twelve",
    " thirteen",
    " fourteen",
    " fifteen",
    " sixteen",
    " seventeen",
    " eighteen",
    " nineteen"
  ];

  final zero = "zero";
  final hundred = "hundred";
  final thousand = "thousand";
  final oneThousand = "one thousand";
  final million = "million";
  final billion = "billion";

  String soFar;

  //1-999
  if(number % 100 < 20){
    soFar = numNames[number % 100];
    number = (number ~/ 100).toInt();
  } else{
    soFar = numNames[number % 10];
    number = (number ~/10).toInt();

    soFar = tensNames[number % 10] + soFar;
    number = (number ~/ 10).toInt();
  }
  if(number == 0){
    return soFar;
  }
  return numNames[number] + ' ' + hundred + soFar;
}

//0 - 999 999 999
String _convert(int number){
  final tensNames = ["", " ten", " twenty", " thirty", " forty", " fifty", " sixty", " seventy", " eighty", " ninety"];

  final numNames = [
    "",
    " one",
    " two",
    " three",
    " four",
    " five",
    " six",
    " seven",
    " eight",
    " nine",
    " ten",
    " eleven",
    " twelve",
    " thirteen",
    " fourteen",
    " fifteen",
    " sixteen",
    " seventeen",
    " eighteen",
    " nineteen"
  ];

  final zero = "zero";
  final hundred = "hundred";
  final thousand = "thousand";
  final oneThousand = "one thousand";
  final million = "million";
  final billion = "billion";

  if(number == 0){
    return zero;
  }

  String snumber = number.toString().padLeft(9, "0");
  // nnnXXXnnnnnn
  int millions = int.parse(snumber.substring(0, 3));
  // nnnnnnXXXnnn
  int hundredThousands = int.parse(snumber.substring(3, 6));
  // nnnnnnnnnXXX
  int thousands = int.parse(snumber.substring(6, 9));

  String tradMillions = getMillions(millions);
  String result = tradMillions;

  String tradHundredThousand = getThousands(hundredThousands);
  result = result + tradHundredThousand;

  String tradThousand = _convertLessThanOneThousand(thousands);
  result = result + tradThousand;

  return result;
}

String getMillions(int millions) {

  final zero = "zero";
  final hundred = "hundred";
  final thousand = "thousand";
  final oneThousand = "one thousand";
  final million = "million";
  final billion = "billion";

  String tradMillions;
  switch (millions) {
    case 0:
      tradMillions = "";
      break;
    case 1:
      tradMillions = _convertLessThanOneThousand(millions) + million;
      break;
    default:
      tradMillions = _convertLessThanOneThousand(millions) + million;
  }
  return tradMillions;
}

String getThousands(int hundredThousands) {
  final zero = "zero";
  final hundred = "hundred";
  final thousand = "thousand";
  final oneThousand = "one thousand";
  final million = "million";
  final billion = "billion";

  String tradHundredThousands;
  switch (hundredThousands) {
    case 0:
      tradHundredThousands = "";
      break;
    case 1:
      tradHundredThousands =
          _convertLessThanOneThousand(hundredThousands) + thousand;
      break;
    default:
      tradHundredThousands =
          _convertLessThanOneThousand(hundredThousands) + thousand;
  }

  return tradHundredThousands;
}

bool isNumeric(String nums) {
if (nums == null || nums.trim().isEmpty) {
return false;
}

return double.tryParse(nums) != null;
}





