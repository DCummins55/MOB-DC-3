// Intro to Swift in class playground

import Foundation

// TODO: Create two variables, name and age. Name is a string, age is an integer.

let age = 28
println("my age is 28")

let name = "Devin"
println("my name is Devin")


// TODO: Print "Hello {whatever the value of name is}, you are {whatever the value of age is} years old!"

println("Hello \(name), you are \(age) years old!")

// TODO: Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”


if age >= 21 {
    println("you can drink")
}

if age >= 18 {
    println("You can vote")
}

if age >= 16 {
    println("You can Drive a Car")
}

// TODO: Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.

if age >= 16 && age < 18 {
    println("you can only drive")
} else if age >= 18 && age < 21 {
    println("you can drive and vote")
} else {
    println("you can drink, drive, and vote but never at the same time")
}


// TODO: Print the first fifty multiples of seven minus one (e.g. the first three multiples are 7, 14, 21. The first three multiples minus one are 6, 13, 20)



var num = 0

while num < 350 {
    println(num)
    num = (num + 7)
}

/*


// TODO: Create a constant called number

*/

let number = 5


// TODO: Print whether the above number is even (not sure how do do even odd)


while number == 1 {
    println("odd")
}
// TODO: Print out "Hello {whatever the value of name is}, your name is {however long the string name is} characters long!. Use countElements()



// TODO: Print the sum of one hundred random numbers. Use rand() to generate random numbers.

var n = 1
var sum: Int32 = 0
while ( n < 100 ) {
    sum = sum + Int(random())
    println(sum)
    ++N;
}


// Bonus TO DO: Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”.

// BONUS TODO: The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number. Print the 37th fibonacci number below
