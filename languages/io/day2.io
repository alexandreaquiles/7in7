// loop("getting dizzy..." println)

// getting dizzy...
// getting dizzy...
// ^Cgetting dizzy...
// IOVM:
//         Received signal. Setting interrupt flag.


//   current coroutine
//   ---------
//   Coroutine callStack                  A4_Exception.io 244
//   Coroutine backTraceString            A4_Exception.io 274
//   Coroutine showStack                  System.io 62
//   System userInterruptHandler          [unlabeled] 0

i := 1
// ==> 1

while(i <= 3, i println; i = i + 1); "This one goes up to 3" println
// 1
// 2
// 3
// This one goes up to 3
// ==> This one goes up to 3

j := 1
// ==> 1

 for(j, 1, 3, j println); "This one goes up to 3" println
// 1
// 2
// 3
// This one goes up to 3
// ==> This one goes up to 3

for(k,1,7,2,k println); "This one goes up to 7" println
// 1
// 3
// 5
// 7
// This one goes up to 7
// ==> This one goes up to 7

for(i, 1, 2, 1, i println, "extra argument")
// 1
// 2
// ==> 2

for(i, 1, 2, i println, "extra argument")
// 2
// ==> extra argument

i println
// 1
// ==> 1

if(true, "It is true.", "It is false.")
// ==> It is true.

if(false, "It is true.", "It is false.")
// ==> It is false.

if(false) then("It is true") else ("It is false")
// ==> nil

if(false) then("It is true" println) else("It is false" println)
// It is false
// ==> nil

OperatorTable
// ==> OperatorTable_0x12addd0:
// Operators
//   0   ? @ @@
//   1   **
//   2   % * /
//   3   + -
//   4   << >>
//   5   < <= > >=
//   6   != ==
//   7   &
//   8   ^
//   9   |
//   10  && and
//   11  or ||
//   12  ..
//   13  %= &= *= += -= /= <<= >>= ^= |=
//   14  return

// Assign Operators
//   ::= newSlot
//   :=  setSlot
//   =   updateSlot

// To add a new operator: OperatorTable addOperator("+", 4) and implement the + message.
// To add a new assign operator: OperatorTable addAssignOperator("=", "updateSlot") and implement the updateSlot message.

OperatorTable addOperator("xor", 11)
// ==> OperatorTable_0x13bbdd0:
// Operators
//   0   ? @ @@
//   1   **
//   2   % * /
//   3   + -
//   4   << >>
//   5   < <= > >=
//   6   != ==
//   7   &
//   8   ^
//   9   |
//   10  && and
//   11  or xor ||
//   12  ..
//   13  %= &= *= += -= /= <<= >>= ^= |=
//   14  return

// Assign Operators
//   ::= newSlot
//   :=  setSlot
//   =   updateSlot

// To add a new operator: OperatorTable addOperator("+", 4) and implement the + message.
// To add a new assign operator: OperatorTable addAssignOperator("=", "updateSlot") and implement the updateSlot message.

true xor := method(bool, if(bool, false, true))
// ==> method(bool, 
//     if(bool, false, true)
// )

false xor := method(bool, if(bool, true, false))
// ==> method(bool, 
//     if(bool, true, false)
// )

false xor false
// ==> false

false xor true
// ==> true

true xor false
// ==> true

true xor true
// ==> false

postOffice := Object clone
// ==>  Object_0x1a74180:

postOffice packageSender := method(call sender)
// ==> method(
//     call sender
// )

mailer := Object clone
// ==>  Object_0x1614de0:

mailer deliver := method(postOffice packageSender)
// ==> method(
//     postOffice packageSender
// )

mailer deliver
// ==>  Object_0x1614de0:
//   deliver          = method(...)

postOffice messageTarget := method(call target)
// ==> method(
//     call target
// )

postOffice messageTarget
// ==>  Object_0x1a74180:
//   messageTarget    = method(...)
//   packageSender    = method(...)

postOffice messageArgs := method(call message arguments)
// ==> method(
//     call message arguments
// )

postOffice messageName := method(call message name)
// ==> method(
//     call message name
// )

postOffice messageArgs("one", 2, :three)
// ==> list("one", 2, : three)

postOffice messageName
// ==> messageName

unless := method(
    (call sender doMessage(call message argAt(0))) ifFalse(call sender doMessage(call message argAt(1))) ifTrue(call sender doMessage(call message argAt(2)))
)

// ... ==> method(
//     (call sender doMessage(call message argAt(0))) ifFalse(call sender doMessage(call message argAt(1))) ifTrue(call sender doMessage(call message argAt(2)))
// )

unless(1 == 2, write("One is not two\n"), write("one is two\n"))
// One is not two
// ==> false

// DIDN'T WORK

// Object ancestors := method(
//  prototype := self proto  
//  if(prototype != Object,
//         writeln("Slots of ", prototype type, "\n---------------")
//         prototype slotNames foreach(slotName, writeln(slotName))
//         writeln
//         prototype ancestors))
// ==> method(
//     prototype := self proto if(prototype != Object, writeln("Slots of ", prototype type, "\n---------------") prototype slotNames foreach(slotName, writeln(slotName)) writeln prototype ancestors)
// )

// disco ancestors 
//   Exception: Duck does not respond to 'prototype'
//   ---------
//   Duck prototype                       Command Line 1
//   Duck ancestors                       Command Line 1

// when executing from the REPL

// when running from a file, it works

// http://media.pragprog.com/titles/btlang/code/io/animals.io
// $ io animals.io 

// Slots of Duck
// ---------------
// speak
// type
// walk

// Slots of Animal
// ---------------
// speak
// type


// Object ancestors := method (if(self proto != Object, self proto slotNames println ancestors))
// ==> method(
//             if(self proto != Object, self proto slotNames println ancestors)
// )

Animal := Object clone
// ==>  Animal_0x10b2e10:
//   type             = "Animal"

Animal speak := method("ambiguous animal noise" println)
// ==> method(
//     "ambiguous animal noise" println
// )

Duck := Animal clone
// ==>  Duck_0xfb5380:
//   type             = "Duck"

Duck speak := method("quack" println)
// ==> method(
//     "quack" println
// )

Duck walk := method("waddle" println)
// ==> method(
//     "waddle" println
// )

disco := Duck clone
// ==>  Duck_0x10c86a0:

disco ancestors
// list(walk, type, speak)
// ==> list(walk, type, speak)

Object proto
// ==>  Object_0xefa710:
//   Lobby            = Object_0xefa710
//   Protos           = Object_0xefa4b0
//   _                = Object_0xefa710
//   exit             = method(...)
//   forward          = method(...)
//   set_             = method(...)

Lobby
// ==>  Object_0xefa710:
//   Lobby            = Object_0xefa710
//   Protos           = Object_0xefa4b0
//   _                = Object_0xefa710
//   exit             = method(...)
//   forward          = method(...)
//   set_             = method(...)

Object proto == Object
// ==> false

Object proto == Lobby
// ==> true

Lobby proto == Lobby proto
// ==> true

Lobby proto == Lobby
// ==> false

// Day 2 Self-Study

// Do:

// 1. A Fibonacci sequence starts with two 1s.
// Each subsequent number is the sum of the two numbers that came before: 1, 1, 2, 3,5, 8, 13, 21, and so on.
// Write a program to find the nth Fibonacci number.
// fib(1) is 1, and fib(4) is 3.
// As a bonus, solve the problem with recursion and with loops.

fib := method(n, if(n <= 1 , n, fib(n - 1) + fib(n - 2)))

for(i, 1, 8, fib(i) println)

fibiter := method(n, a := 0; b := 1; for(i, 2, n, b = a + b; a = b - a); b)

for(i, 1, 8, fibiter(i) println)

// 2. How would you change / to return 0 if the denominator is zero?

Number oldDiv := Number getSlot("/")
Number / := method(denominator, if(denominator == 0, 0, self oldDiv(denominator)))
 
(2 / 0) println // 0
(3 / 2) println // 1.5

// 3. Write a program to add up all of the numbers in a two-dimensional array.

list(list(1, 2, 3), list(4, 5, 6)) map (e, e sum) sum

list(list(1, 2, 3), list(4, 5, 6)) flatten sum

// 4. Add a slot called myAverage to a list that computes the average of all the numbers in a list.
// What happens if there are no numbers in a list?
// (Bonus: Raise an Io exception if any item in the list is not a number.)

List myaverage := method(if(isEmpty, nil, self sum / self size))

list(1, 2) myaverage println
list() myaverage println

//

List myaverage := method(
    if(isEmpty,
        nil,
        sum := 0
        foreach(n,
            if(n type == "Number",
            sum = sum + n,
            Exception raise("not a number") / size))))

list(1, 2) myaverage println
list() myaverage println
//list(1, "a") myaverage println

// 5. Write a prototype for a two-dimensional list.
// The dim(x, y) method should allocate a list of y lists that are x elements long.
// set(x, y, value) should set a value, and get(x, y) should return that value.

TwoDimList := Object clone

TwoDimList dim := method(x, y,
                self innerList := list()
                for(i, 1, y, innerList append(list() setSize(x))))

TwoDimList set := method(x, y, value,
                    innerList at(x) atPut(y, value))

TwoDimList get := method(x, y,
                    innerList at(x) at(y))

myList := TwoDimList clone
myList dim(4, 5) 

myList2 := TwoDimList clone
myList2 dim(2, 2) 

myList innerList println
"------" println
myList2 innerList println

"------" println
myList2 set(0, 0, "a")
myList2 set(0, 1, "b")
myList2 set(1, 0, 3)
myList2 set(1, 1, 4)
myList innerList println

"------" println
myList get(0, 2) println

// 6. Bonus: Write a transpose method so that (new_matrix get(y, x)) == matrix get(x, y) on the original list.

TwoDimList transpose := method(
                            y := innerList size
                            x := innerList at(0) size
                            tranposedTwoDimList := TwoDimList clone
                            tranposedTwoDimList dim(y, x)
                            for(i, 0, y-1,
                                for(j, 0, x-1,
                                    element := get(i, j)
                                    if (element != nil, tranposedTwoDimList set(j, i, element))))
                            tranposedTwoDimList)

"------" println
newList := myList transpose
newList innerList println
myList get(0, 2) println
newList get(2, 0) println
(myList get(0, 2) == newList get(2, 0)) println

// 7. Write the matrix to a file, and read a matrix from a file.

f := File with("TwoDimList.txt")
f remove
f openForUpdating
f write(myList2 serialized) 
f close

myListFromFile := TwoDimList doFile("TwoDimList.txt")
myListFromFile innerList println

// 8. Write a program that gives you ten tries to guess a random number from 1–100.
// If you would like, give a hint of “hotter” or “colder” after the first guess.

tries := 10
randomNumber := Random value(100) ceil
success := false
previousDelta := nil

while(tries >= 0 and success not,

    guess := File standardInput readLine("Guess a number: ") asNumber()

    delta := (randomNumber - guess) abs

    if (delta == 0) then(success = true) elseif(previousDelta == nil) then("Try again" println) elseif(delta < previousDelta) then("Hotter" println) else("Colder" println)

    previousDelta := delta
 
    tries = tries - 1)

if(success, "You win!", "You lose...") println