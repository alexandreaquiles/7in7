# START:range
OperatorTable addAssignOperator(":", "atPutNumber")
# END:range

# START:curlyBrackets
curlyBrackets := method(
  r := Map clone
  call message arguments foreach(arg,
       r doMessage(arg)
       )
  r
)
# END:curlyBrackets

# The parser calls the curlyBrackets method whenever it encounters curly brackets ({}).
# we take the call message, which is the part of the code between the curly brackets.
# we iterate through each of the phone numbers in the list with forEach.
# For each phone name and phone number, we execute r doMessage(arg).
# the first phone number will execute as r "Bob Smith": "5195551212".
# Since : is in our operator table as atPutNumber, we'll execute r atPutNumber("Bob Smith", "5195551212")

# START:atPutNumber
Map atPutNumber := method(
  self atPut(
       call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\""),
       call evalArgAt(1))
)

# Since messages are immutable, to strip the quotes, we have to translate the message to a mutable value for it to work.

# END:atPutNumber

# START:use
s := File with("phonebook.txt") openForReading contents
phoneNumbers := doString(s)
phoneNumbers keys   println
phoneNumbers values println
# END:use

Builder := Object clone
Builder forward := method(
  writeln("<", call message name, ">")
  call message arguments foreach(
	arg, 
	content := self doMessage(arg); 
	if(content type == "Sequence", writeln(content)))
  writeln("</", call message name, ">"))
Builder  ul(
	li("Io"), 
	li("Lua"), 
	li("JavaScript"))

// A coroutine provides a way to voluntarily suspend and resume execution of a process.
// Think of a coroutine as a function with multiple entry and exit points.
// Each yield will voluntarily suspend the process and transfer to another process.

// Coroutines are great for solutions requiring cooperative multitasking.

// With coroutines, applications can voluntarily give up control at reasonable times.
// A distributed client could relinquish control when waiting for the server.
// Worker processes could pause after processing queue items

// @ returns a future
// @@ returns nil and starts the message in its own thread

// vizzini := Object clone
// vizzini talk := method(
//             "Fezzik, are there rocks ahead?" println
//             yield 
//             "No more rhymes now, I mean it." println
//              yield)

// fezzik := Object clone

// fezzik rhyme := method(
// 			yield
//             "If there are, we'll all be dead." println
//             yield 
//             "Anybody want a peanut?" println)

// vizzini @@talk; fezzik @@rhyme

// Coroutine currentCoroutine pause

// Here’s the beauty of Io.
// Sending an asynchronous message to any object makes it an actor.

slower := Object clone
faster := Object clone
slower start := method(wait(2); writeln("slowly"))
faster start := method(wait(1); writeln("quickly"))

// sequentially
slower start; faster start

// make each object run in its own thread
slower @@start; faster @@start; wait(3)

// futureResult := URL with("http://google.com/") @fetch
// writeln("Do something immediately while fetch goes on in background...")

// writeln("This will block until the result is available.")
// this line will execute immediately
// writeln("fetched ", futureResult size, " bytes")
// this will block until the computation is complete
// and Io prints the value
// ==> 1955

// Exception: Error loading object '/usr/local/lib/io/addons/Socket/_build/dll/libIoSocket.so': 'libevent-2.0.so.5: cannot open shared object file: No such file or directory'
//   ---------
//   open                                AddonLoader.io 71
//   Object URL                           day3.io 82
//   CLI doFile                           Z_CLI.io 140
//   CLI run                              IoState_runCLI() 1

// Day 3 Self-Study
// Do:
// • Enhance the XML program to add spaces to show the indentation structure.

Builder := Object clone

//stack := list(0)
indentation := 0
spaces := 4

Builder forward := method(
  //i := stack pop
  i := indentation
  writeln(" " repeated(i * spaces) with("<", call message name, ">"))
  call message arguments foreach(
    arg,
    //stack append(i + 1)
    indentation := i + 1
    content := doMessage(arg)
    if(content type == "Sequence", writeln(" " repeated(i * 2 * spaces) with(content))))
  writeln(" " repeated(i * spaces) with("</", call message name, ">")))

Builder ul(
  li("lo"),
  li("Lua"),
  li("JavaScript"))

// • Create a list syntax that uses brackets.

squareBrackets := method(
  call message arguments
)

myList := ["a", "b", "c"]

myList println
myList foreach(el, el println)


// • Enhance the XML program to handle attributes: if the first argument is a map
  // (use the curly brackets syntax), add attributes to the XML program.
  // For example:
  // book({"author": "Tate"}...) would print <book author="Tate">


  OperatorTable addAssignOperator(":", "getAttribute")

curlyBrackets := method(
    call message arguments foreach(arg, doMessage(arg))
)

getAttribute := method(
  " " with(call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\""),
    "=",
    "\"", call evalArgAt(1), "\"")
)

Builder := Object clone

indentationLevel := 0
spaces := 2

Builder forward := method(
  actualLevel := indentationLevel

  firstArg := call message argAt(0)
  isCurlyBrackets :=  firstArg name == "curlyBrackets"
  
  attribute := if(isCurlyBrackets,     
    call message setArguments(call message arguments rest)
    doString(firstArg code),
    "")

  writeln(" " repeated(actualLevel * spaces) with("<", call message name, attribute, ">"))
  call message arguments foreach(
    arg,
    indentationLevel = actualLevel + 1
    content := doMessage(arg)
    if(content type == "Sequence", writeln(" " repeated(actualLevel * 2 * spaces) with(content))))
  writeln(" " repeated(actualLevel * spaces) with("</", call message name, ">")))

Builder ul(
  { "class" : "hide"},
  li("Io"),
  li("Lua"),
  li("JavaScript"))


// <ul class="hide">
//   <li>
//     lo
//   </>li>
//   <li>
//     Lua
//   </li>
//   <li>
//     JavaScript
//   </>li>
// </>ul>

book({"author": "Tate"})

// <book author="Tate">
// </book>