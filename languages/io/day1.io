"Hi ho, Io" print
//  Hi ho, Io==> Hi ho, Io

Vehicle := Object clone
// ==>  Vehicle_0x250bbe0:
//   type             = "Vehicle"

Vehicle description := "Something to take you places"
// ==> Something to take you places

Vehicle description = "Something to take you far away"
// ==> Something to take you far away

// Vehicle nonexistingSlot = "This won't work."
//  Exception: Slot nonexistingSlot not found. Must define slot using := operator before updating.
//  ---------
//  message 'updateSlot' in 'Command Line' on line 1

Vehicle description
// ==> Something to take you far away

Vehicle slotNames
// ==> list(type, description)

Vehicle type
// ==> Vehicle

Object type
// ==> Object

Vehicle
// ==>  Vehicle_0x250bbe0:
//   description      = "Something to take you far away"
//   type             = "Vehicle"

// • You make objects by cloning other objects.
// • Objects are collections of slots.
// • You get a slot’s value by sending the message.

Car := Vehicle clone
// ==>  Car_0x26204a0:
//   type             = "Car"

Car slotNames
// ==> list(type)

Car type
// ==> Car

Car description
// ==> Something to take you far away

ferrari := Car clone
// ==>  Car_0x25deeb0:

ferrari slotNames
// ==> list()

ferrari type
// ==> Car

Ferrari := Car clone
// ==>  Ferrari_0x2402100:
//   type             = "Ferrari"

Ferrari slotNames
// ==> list(type)

Ferrari type
// ==> Ferrari

// By convention, types in Io begin with uppercase letters.
// Objects are just containers of slots.
// Get a slot by sending its name to an object.
// If the slot isn’t there, Io calls the parent.
// Idiomatically, an object that begins with an uppercase name is a type, so Io sets the type slot.

method("So, you've come for an argument.", println)
// ==> method("So, you've come for an argument.", 
//     println
// )

method() type
// ==> Block

Car drive := method("Vroom" println)
// ==> method(
//     "Vroom" println
// )

ferrari drive
// Vroom
// ==> Vroom

Car drive
// Vroom
// ==> Vroom

Car drive type
// Vroom
// ==> Sequence

ferrari getSlot("drive")
// ==> method(
//     "Vroom" println
// )

ferrari getSlot("type")
// ==> Car

ferrari proto
// ==>  Car_0x26204a0:
//   drive            = method(...)
//   type             = "Car"

Car proto
// ==>  Vehicle_0x250bbe0:
//   description      = "Something to take you far away"
//   type             = "Vehicle"

Vehicle proto
// ==>  Object_0x2239cb0:
//                    = Object_()
//   !=               = Object_!=()
//   -                = Object_-()
//   ..               = method(arg, ...)
//   <                = Object_<()
//   <=               = Object_<=()
//   ==               = Object_==()
//   >                = Object_>()
//   >=               = Object_>=()
//   ?                = method(...)
//   @                = method(...)
//   @@               = method(...)
//   actorProcessQueue = method(...)
//   actorRun         = method(...)
//   addTrait         = method(obj, ...)
//   ancestorWithSlot = Object_ancestorWithSlot()
//   ancestors        = method(a, ...)
//   and              = method(v, ...)
//   appendProto      = Object_appendProto()
//   apropos          = method(keyword, ...)
//   argIsActivationRecord = Object_argIsActivationRecord()
//   argIsCall        = Object_argIsCall()
//   asBoolean        = Object_asBoolean()
//   asSimpleString   = method(...)
//   asString         = method(keyword, ...)
//   asyncSend        = method(...)
//   become           = Object_become()
//   block            = Object_block()
//   break            = Object_break()
//   clone            = Object_clone()
//   cloneWithoutInit = Object_cloneWithoutInit()
//   compare          = Object_compare()
//   contextWithSlot  = Object_contextWithSlot()
//   continue         = Object_continue()
//   coroDo           = method(...)
//   coroDoLater      = method(...)
//   coroFor          = method(...)
//   coroWith         = method(...)
//   currentCoro      = method(...)
//   deprecatedWarning = method(newName, ...)
//   do               = Object_do()
//   doFile           = Object_doFile()
//   doMessage        = Object_doMessage()
//   doRelativeFile   = method(path, ...)
//   doString         = Object_doString()
//   evalArg          = Object_evalArg()
//   evalArgAndReturnNil = Object_evalArgAndReturnNil()
//   evalArgAndReturn= Object_evalArgAndReturnSelf()
//   for              = Object_for()
//   foreachSlot      = method(...)
//   futureSend       = method(...)
//   getLocalSlot     = Object_getLocalSlot()
//   getSlot          = Object_getSlot()
//   handleActorException = method(e, ...)
//   hasDirtySlot     = Object_hasDirtySlot()
//   hasLocalSlot     = Object_hasLocalSlot()
//   hasProto         = Object_hasProto()
//   hasSlot          = method(n, ...)
//   if               = Object_if()
//   ifError          = method(...)
//   ifNil            = Object_thisContext()
//   ifNilEval        = Object_thisContext()
//   ifNonNil         = Object_evalArgAndReturnSelf()
//   ifNonNilEval     = Object_evalArg()
//   in               = method(aList, ...)
//   init             = Object_init()
//   inlineMethod     = method(...)
//   isActivatable    = Object_isActivatable()
//   isError          = false
//   isIdenticalTo    = Object_isIdenticalTo()
//   isKindOf         = method(anObject, ...)
//   isLaunchScript   = method(...)
//   isNil            = false
//   isTrue           = true
//   justSerialized   = method(stream, ...)
//   launchFile       = method(path, args, ...)
//   lazySlot         = method(...)
//   lexicalDo        = Object_lexicalDo()
//   list             = method(...)
//   loop             = Object_loop()
//   markClean        = Object_markClean()
//   memorySize       = Object_memorySize()
//   message          = Object_message()
//   method           = Object_method()
//   newSlot          = method(name, value, doc, ...)
//   not              = nil
//   or               = true
//   ownsSlots        = Object_ownsSlots()
//   pause            = method(...)
//   perform          = Object_perform()
//   performWithArgList = Object_performWithArgList()
//   prependProto     = Object_prependProto()
//   print            = method(...)
//   println          = method(...)
//   proto            = Object_proto()
//   protos           = Object_protos()
//   raiseIfError     = method(...)
//   relativeDoFile   = method(path, ...)
//   removeAllProtos  = Object_removeAllProtos()
//   removeAllSlots   = Object_removeAllSlots()
//   removeProto      = Object_removeProto()
//   removeSlot       = Object_removeSlot()
//   resend           = method(...)
//   return           = Object_return()
//   returnIfError    = method(...)
//   returnIfNonNil   = Object_returnIfNonNil()
//   serialized       = method(stream, ...)
//   serializedSlots  = method(stream, ...)
//   serializedSlotsWithNames = method(names, stream, ...)
//   setIsActivatable = Object_setIsActivatable()
//   setProto         = Object_setProto()
//   setProtos        = Object_setProtos()
//   setSlot          = Object_setSlot()
//   setSlotWithType  = Object_setSlotWithType()
//   shallowCopy      = Object_shallowCopy()
//   slotDescriptionMap = method(...)
//   slotNames        = Object_slotNames()
//   slotSummary      = method(keyword, ...)
//   slotValues       = Object_slotValues()
//   stopStatus       = Object_stopStatus()
//   super            = method(...)
//   switch           = method(...)
//   thisContext      = Object_thisContext()
//   thisLocalContext = Object_thisLocalContext()
//   thisMessage      = Object_thisMessage()
//   try              = method(...)
//   type             = Object_type()
//   uniqueHexId      = method(...)
//   uniqueId         = Object_uniqueId()
//   updateSlot       = Object_updateSlot()
//   wait             = method(s, ...)
//   while            = Object_while()
//   write            = Object_write()
//   writeln          = Object_writeln()
//   yield            = method(...)

Lobby
// ==>  Object_0x225f710:
//   Car              = Car_0x26204a0
//   Ferrari          = Ferrari_0x2402100
//   Lobby            = Object_0x225f710
//   Protos           = Object_0x225f4b0
//   Vehicle          = Vehicle_0x250bbe0
//   _                = Object_0x225f710
//   exit             = method(...)
//   ferrari          = Car_0x253fa70
//   forward          = method(...)
//   set_             = method(...)

// prototype programming paradigm

// • Every thing is an object.
// • Every interaction with an object is a message.
// • You don’t instantiate classes; you clone other objects called prototypes.
// • Objects remember their prototypes.
// • Objects have slots.
// • Slots contain objects, including method objects.
// • A message returns the value in a slot or invokes the method in a  slot.
// • If an object can’t respond to a message, it sends that message to its prototype.

toDos := list("find my car", "find Continuum Transfunctioner")
//  ==> list(find my car, find Continuum Transfunctioner)

toDos size
// ==> 2

toDos append("Find a present")
// ==> list(find my car, find Continuum Transfunctioner, Find a present)

toDos
// ==> list(find my car, find Continuum Transfunctioner, Find a present)

// toDos append "testing without parentheses"

//   Exception: Io Assertion 'requires at least one argument'
//   ---------
//   message 'append' in 'Command Line' on line 1

list(1, 2, 3, 4)
// ==> list(1, 2, 3, 4)

Object list(1, 2, 3, 4)
// ==> list(1, 2, 3, 4)

list(1, 2, 3, 4) average
// ==> 2.5

list(1, 2, 3, 4) sum
// ==> 10

list(1, 2, 3, 4) at(1)
// ==> 2

list(1, 2, 3, 4) at(0)
// ==> 1

list(1, 2, 3) append(4)
// ==> list(1, 2, 3, 4)

list(1, 2, 3) pop
// ==> 3

list(1, 2, 3) prepend(0)
// ==> list(0, 1, 2, 3)

list() isEmpty
// ==> true

elvis := Map clone
// ==>  Map_0x146b4a0:

elvis atPut("home", "Graceland")
// ==>  Map_0x146b4a0:

elvis at("home")
// ==> Graceland

elvis atPut("style", "rock and roll")
// ==>  Map_0x146b4a0:

elvis asObject
// ==>  Object_0x121aeb0:
//   home             = "Graceland"
//   style            = "rock and roll"

elvis asList
// ==> list(list(home, Graceland), list(style, rock and roll))

elvis keys
// ==> list(home, style)

elvis size
// ==> 2

4 < 5
// ==> true

4 <= 3
// ==> false

true and false
// ==> false

true and true
// ==> true

true or true
// ==> true

true or false
// ==> true

4 < 5 and 6 > 7
// ==> false

true and 6
// ==> true

true and 0
// ==> true

true proto
// ==>  Object_0x114fcb0:
//                    = Object_()
//   !=               = Object_!=()
//   -                = Object_-()
//   ..               = method(arg, ...)
//   <                = Object_<()
//   <=               = Object_<=()
//   ==               = Object_==()
//   >                = Object_>()
//   >=               = Object_>=()
//   ?                = method(...)
//   @                = method(...)
//   @@               = method(...)
//   actorProcessQueue = method(...)
//   actorRun         = method(...)
//   addTrait         = method(obj, ...)
//   ancestorWithSlot = Object_ancestorWithSlot()
//   ancestors        = method(a, ...)
//   and              = method(v, ...)
//   appendProto      = Object_appendProto()
//   apropos          = method(keyword, ...)
//   argIsActivationRecord = Object_argIsActivationRecord()
//   argIsCall        = Object_argIsCall()
//   asBoolean        = Object_asBoolean()
//   asSimpleString   = method(...)
//   asString         = method(keyword, ...)
//   asyncSend        = method(...)
//   become           = Object_become()
//   block            = Object_block()
//   break            = Object_break()
//   clone            = Object_clone()
//   cloneWithoutInit = Object_cloneWithoutInit()
//   compare          = Object_compare()
//   contextWithSlot  = Object_contextWithSlot()
//   continue         = Object_continue()
//   coroDo           = method(...)
//   coroDoLater      = method(...)
//   coroFor          = method(...)
//   coroWith         = method(...)
//   currentCoro      = method(...)
//   deprecatedWarning = method(newName, ...)
//   do               = Object_do()
//   doFile           = Object_doFile()
//   doMessage        = Object_doMessage()
//   doRelativeFile   = method(path, ...)
//   doString         = Object_doString()
//   evalArg          = Object_evalArg()
//   evalArgAndReturnNil = Object_evalArgAndReturnNil()
//   evalArgAndReturn= Object_evalArgAndReturnSelf()
//   for              = Object_for()
//   foreachSlot      = method(...)
//   futureSend       = method(...)
//   getLocalSlot     = Object_getLocalSlot()
//   getSlot          = Object_getSlot()
//   handleActorException = method(e, ...)
//   hasDirtySlot     = Object_hasDirtySlot()
//   hasLocalSlot     = Object_hasLocalSlot()
//   hasProto         = Object_hasProto()
//   hasSlot          = method(n, ...)
//   if               = Object_if()
//   ifError          = method(...)
//   ifNil            = Object_thisContext()
//   ifNilEval        = Object_thisContext()
//   ifNonNil         = Object_evalArgAndReturnSelf()
//   ifNonNilEval     = Object_evalArg()
//   in               = method(aList, ...)
//   init             = Object_init()
//   inlineMethod     = method(...)
//   isActivatable    = Object_isActivatable()
//   isError          = false
//   isIdenticalTo    = Object_isIdenticalTo()
//   isKindOf         = method(anObject, ...)
//   isLaunchScript   = method(...)
//   isNil            = false
//   isTrue           = true
//   justSerialized   = method(stream, ...)
//   launchFile       = method(path, args, ...)
//   lazySlot         = method(...)
//   lexicalDo        = Object_lexicalDo()
//   list             = method(...)
//   loop             = Object_loop()
//   markClean        = Object_markClean()
//   memorySize       = Object_memorySize()
//   message          = Object_message()
//   method           = Object_method()
//   newSlot          = method(name, value, doc, ...)
//   not              = nil
//   or               = true
//   ownsSlots        = Object_ownsSlots()
//   pause            = method(...)
//   perform          = Object_perform()
//   performWithArgList = Object_performWithArgList()
//   prependProto     = Object_prependProto()
//   print            = method(...)
//   println          = method(...)
//   proto            = Object_proto()
//   protos           = Object_protos()
//   raiseIfError     = method(...)
//   relativeDoFile   = method(path, ...)
//   removeAllProtos  = Object_removeAllProtos()
//   removeAllSlots   = Object_removeAllSlots()
//   removeProto      = Object_removeProto()
//   removeSlot       = Object_removeSlot()
//   resend           = method(...)
//   return           = Object_return()
//   returnIfError    = method(...)
//   returnIfNonNil   = Object_returnIfNonNil()
//   serialized       = method(stream, ...)
//   serializedSlots  = method(stream, ...)
//   serializedSlotsWithNames = method(names, stream, ...)
//   setIsActivatable = Object_setIsActivatable()
//   setProto         = Object_setProto()
//   setProtos        = Object_setProtos()
//   setSlot          = Object_setSlot()
//   setSlotWithType  = Object_setSlotWithType()
//   shallowCopy      = Object_shallowCopy()
//   slotDescriptionMap = method(...)
//   slotNames        = Object_slotNames()
//   slotSummary      = method(keyword, ...)
//   slotValues       = Object_slotValues()
//   stopStatus       = Object_stopStatus()
//   super            = method(...)
//   switch           = method(...)
//   thisContext      = Object_thisContext()
//   thisLocalContext = Object_thisLocalContext()
//   thisMessage      = Object_thisMessage()
//   try              = method(...)
//   type             = Object_type()
//   uniqueHexId      = method(...)
//   uniqueId         = Object_uniqueId()
//   updateSlot       = Object_updateSlot()
//   wait             = method(s, ...)
//   while            = Object_while()
//   write            = Object_write()
//   writeln          = Object_writeln()
//   yield            = method(...)

true clone
// ==> true

false clone
// ==> false

nil clone
// ==> nil

nil proto
// ==>  Object_0x114fcb0:
//                    = Object_()
//   !=               = Object_!=()
//   -                = Object_-()
//   ..               = method(arg, ...)
//   <                = Object_<()
//   <=               = Object_<=()
//   ==               = Object_==()
//   >                = Object_>()
//   >=               = Object_>=()
//   ?                = method(...)
//   @                = method(...)
//   @@               = method(...)
//   actorProcessQueue = method(...)
//   actorRun         = method(...)
//   addTrait         = method(obj, ...)
//   ancestorWithSlot = Object_ancestorWithSlot()
//   ancestors        = method(a, ...)
//   and              = method(v, ...)
//   appendProto      = Object_appendProto()
//   apropos          = method(keyword, ...)
//   argIsActivationRecord = Object_argIsActivationRecord()
//   argIsCall        = Object_argIsCall()
//   asBoolean        = Object_asBoolean()
//   asSimpleString   = method(...)
//   asString         = method(keyword, ...)
//   asyncSend        = method(...)
//   become           = Object_become()
//   block            = Object_block()
//   break            = Object_break()
//   clone            = Object_clone()
//   cloneWithoutInit = Object_cloneWithoutInit()
//   compare          = Object_compare()
//   contextWithSlot  = Object_contextWithSlot()
//   continue         = Object_continue()
//   coroDo           = method(...)
//   coroDoLater      = method(...)
//   coroFor          = method(...)
//   coroWith         = method(...)
//   currentCoro      = method(...)
//   deprecatedWarning = method(newName, ...)
//   do               = Object_do()
//   doFile           = Object_doFile()
//   doMessage        = Object_doMessage()
//   doRelativeFile   = method(path, ...)
//   doString         = Object_doString()
//   evalArg          = Object_evalArg()
//   evalArgAndReturnNil = Object_evalArgAndReturnNil()
//   evalArgAndReturn= Object_evalArgAndReturnSelf()
//   for              = Object_for()
//   foreachSlot      = method(...)
//   futureSend       = method(...)
//   getLocalSlot     = Object_getLocalSlot()
//   getSlot          = Object_getSlot()
//   handleActorException = method(e, ...)
//   hasDirtySlot     = Object_hasDirtySlot()
//   hasLocalSlot     = Object_hasLocalSlot()
//   hasProto         = Object_hasProto()
//   hasSlot          = method(n, ...)
//   if               = Object_if()
//   ifError          = method(...)
//   ifNil            = Object_thisContext()
//   ifNilEval        = Object_thisContext()
//   ifNonNil         = Object_evalArgAndReturnSelf()
//   ifNonNilEval     = Object_evalArg()
//   in               = method(aList, ...)
//   init             = Object_init()
//   inlineMethod     = method(...)
//   isActivatable    = Object_isActivatable()
//   isError          = false
//   isIdenticalTo    = Object_isIdenticalTo()
//   isKindOf         = method(anObject, ...)
//   isLaunchScript   = method(...)
//   isNil            = false
//   isTrue           = true
//   justSerialized   = method(stream, ...)
//   launchFile       = method(path, args, ...)
//   lazySlot         = method(...)
//   lexicalDo        = Object_lexicalDo()
//   list             = method(...)
//   loop             = Object_loop()
//   markClean        = Object_markClean()
//   memorySize       = Object_memorySize()
//   message          = Object_message()
//   method           = Object_method()
//   newSlot          = method(name, value, doc, ...)
//   not              = nil
//   or               = true
//   ownsSlots        = Object_ownsSlots()
//   pause            = method(...)
//   perform          = Object_perform()
//   performWithArgList = Object_performWithArgList()
//   prependProto     = Object_prependProto()
//   print            = method(...)
//   println          = method(...)
//   proto            = Object_proto()
//   protos           = Object_protos()
//   raiseIfError     = method(...)
//   relativeDoFile   = method(path, ...)
//   removeAllProtos  = Object_removeAllProtos()
//   removeAllSlots   = Object_removeAllSlots()
//   removeProto      = Object_removeProto()
//   removeSlot       = Object_removeSlot()
//   resend           = method(...)
//   return           = Object_return()
//   returnIfError    = method(...)
//   returnIfNonNil   = Object_returnIfNonNil()
//   serialized       = method(stream, ...)
//   serializedSlots  = method(stream, ...)
//   serializedSlotsWithNames = method(names, stream, ...)
//   setIsActivatable = Object_setIsActivatable()
//   setProto         = Object_setProto()
//   setProtos        = Object_setProtos()
//   setSlot          = Object_setSlot()
//   setSlotWithType  = Object_setSlotWithType()
//   shallowCopy      = Object_shallowCopy()
//   slotDescriptionMap = method(...)
//   slotNames        = Object_slotNames()
//   slotSummary      = method(keyword, ...)
//   slotValues       = Object_slotValues()
//   stopStatus       = Object_stopStatus()
//   super            = method(...)
//   switch           = method(...)
//   thisContext      = Object_thisContext()
//   thisLocalContext = Object_thisLocalContext()
//   thisMessage      = Object_thisMessage()
//   try              = method(...)
//   type             = Object_type()
//   uniqueHexId      = method(...)
//   uniqueId         = Object_uniqueId()
//   updateSlot       = Object_updateSlot()
//   wait             = method(s, ...)
//   while            = Object_while()
//   write            = Object_write()
//   writeln          = Object_writeln()
//   yield            = method(...)

// true , false , and nil are singletons.

Highlander := Object clone
// ==>  Highlander_0x12a61b0:
//   type             = "Highlander"

Highlander clone := Highlander
// ==>  Highlander_0x12a61b0:
//   clone            = Highlander_0x12a61b0
//   type             = "Highlander"

Highlander clone
// ==>  Highlander_0x12a61b0:
//   clone            = Highlander_0x12a61b0
//   type             = "Highlander"

fred := Highlander clone
// ==>  Highlander_0x12a61b0:
//   clone            = Highlander_0x12a61b0
//   type             = "Highlander"

mike := Highlander clone
// ==>  Highlander_0x12a61b0:
//   clone            = Highlander_0x12a61b0
//   type             = "Highlander"

fred == mike
// ==> true

one := Object clone
// ==>  Object_0x1457980:

two := Object clone
// ==>  Object_0x13a3e40:

one == two
// ==> false

// Object clone := "hosed"

// Since you overrode the clone method on object, nothing can create
// objects anymore. You can’t fix it.
// You just have to kill the process.

// Day 1 Self-Study

// When you’re looking for Io background, searching for answers is going to be a little tougher because Io has so many different meanings.
// I recommend Googling for Io language.

// Find:
// • Some Io example problems

// https://gist.github.com/jezen/7972975
// https://github.com/search?l=Io&q=iolanguage&type=Repositories

// • An Io community that will answer questions

// https://stackoverflow.com/questions/tagged/iolanguage
// https://www.reddit.com/r/iolanguage/
// 

// • A style guide with Io idioms

// https://en.wikibooks.org/wiki/Io_Programming/Io_Style_Guide

// Answer:

// • Evaluate 1 + 1 and then 1 + "one" .
//      Is Io strongly typed or weakly typed?
//      Support your answer with code.

1 + 1
// ==> 2

// 1 + "one" 
//   Exception: argument 0 to method '+' must be a Number, not a 'Sequence'
//   ---------
//   message '+' in 'Command Line' on line 1

// 1 + "1"    
//   Exception: argument 0 to method '+' must be a Number, not a 'Sequence'
//   ---------
//   message '+' in 'Command Line' on line 1

age := 15       
// ==> 15

age = "fifteen"
// ==> fifteen

// There is no type coercion for strings so, in terms of type safety, it's strongly typed.
// But the slots can change types. So, in terms of type checking, it's dynamically typed.

// https://en.wikipedia.org/wiki/Comparison_of_programming_languages_by_type_system

// • Is 0 true or false? What about the empty string? Is nil true or false?
//      Support your answer with code.

0 and true
// ==> true

0 or false
// ==> true

"" and true
// ==> true

"" or false
// ==> true

nil and true
// ==> false

nil or false
// ==> false

// O is truthy, the empty string is truthy and nil is falsy

// • How can you tell what slots a prototype supports?

// slotNames

"" proto slotNames
// ==> list(asJson, linePrint, duplicateIndexes, pathComponent, urlDecoded, removeSeq, bitwiseAnd, asCapitalized, log, uppercase, findSeq, replaceSeq, logicalOr, +, beginsWithSeq, containsAnyCaseSeq, square, sizeInBytes, cos, byteAt, asIoPath, removeEvenIndexes, <=, endsWithSeq, validEncodings, between, preallocateToSize, asBinarySignedInteger, sqrt, asDecodedList, size, repeated, isSymbol, interpolate, setSize, copy, removeSlice, beforeSeq, cloneAppendSeq, asLowercase, alignLeftInPlace, bitCount, afterSeq, findNthSeq, abs, lstrip, asBuffer, log10, max, slice, z, print, replaceFirstSeq, translate, cPrint, <, at, reverseFindSeq, appendSeq, encoding, acos, product, atPut, setItemsToDouble, asOSPath, Max, foreach, -, stringByExpandingTilde, setItemType, asSymbol, sinh, removeAt, set, sum, betweenSeq, /=, inclusiveSlice, clipAfterSeq, addEquals, atan, reverse, unpack, splitAt, setZ, asNumber, withStruct, removeOddIndexes, alignLeft, ceil, bitwiseNot, setItemsToLong, itemCopy, orderedSplit, tanh, asList, asFixedSizeType, removeSuffix, unescape, with, removeLast, >=, asBase64, validItemTypes, asMutable, normalize, exclusiveSlice, replaceMap, inSlice, asUCS4, x, floor, clipBeforeSeq, isUppercase, percentEncoded, lowercase, rootMeanSquare, asUppercase, alignCenter, sort, convertToFixedSizeType, asFile, append, isZero, empty, +=, toBase, rangeFill, cloneAppendPath, asin, sequenceSets, asStruct, zero, lastPathComponent, setEncoding, min, occurancesOfSeq, convertToItemType, split, itemSize, Min, capitalize, y, asSimpleString, strip, pack, findSeqs, percentDecoded, isEmpty, setY, *=, >, -=, asBinaryNumber, contains, /, splitNoEmpties, asBinaryUnsignedInteger, .., asUTF8, itemType, justSerialized, cosh, makeFirstCharacterLowercase, atInsertSeq, fromBase, clipBeforeEndOfSeq, sin, bitAt, meanSquare, negate, mean, prependSeq, containsSeq, slicesBetween, removePrefix, *, reverseInPlace, asString, isEqualAnyCase, whiteSpaceStrings, escape, bitwiseXor, alignRight, tan, urlEncoded, leaveThenRemove, interpolateInPlace, fileName, isLowercase, isMutable, fromBase64, distanceTo, insertSeqEvery, clipAfterStartOfSeq, hash, appendPathSeq, pathExtension, asHex, asMessage, makeFirstCharacterUppercase, exSlice, dotProduct, bitwiseOr, asUCS2, rstrip, setX)

// • What is the difference between = (equals), := (colon equals), and ::= (colon colon equals)?
//      When would you use each one?

// Assignment

// Io has three assignment operators:

// operator	action

// ::=	Creates slot, creates setter, assigns value
// :=	Creates slot, assigns value
// =	Assigns value to slot if it exists, otherwise raises exception

// These operators are compiled to normal messages whose methods can be overridden. For example:

// source	compiles to

// a ::= 1	newSlot("a", 1)
// a := 1	setSlot("a", 1)
// a = 1	updateSlot("a", 1)

// https://iolanguage.org/guide/guide.html#Syntax-Assignment

// Do:
// • Run an Io program from a file.

// io day.io

// • Execute the code in a slot given its name.

Product := Object clone
// Product_0x24aabe0:
//   type             = "Product"

aSlot := "type"Product price := 55
==> 55
Io> Product price
==> 55
// ==> type

Product getSlot(aSlot)
// ==> Product

Product price := 55
// ==> 55

Product price
// ==> 55

Product calculateDiscount := method(0.1 * price)
// ==> method(
//     0.1 * price
// )

Product calculateDiscount   
// ==> 5.5

aSlot := "calculateDiscount"
// ==> calculateDiscount

Product getSlot(aSlot)
// ==> method(
//     0.1 * price
// )

aProductMethod := Product getSlot(aSlot)
// ==> method(
//     0.1 * price
// )

Product aProductMethod
// ==> 5.5

// Spend a little time playing with slots and prototypes.
// Make sure you understand how prototypes work.

