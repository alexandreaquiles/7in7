def tell_the_truth
  true
end
# => :tell_the_truth 

animals = ['lions', 'tigers', 'bears']
# => ["lions", "tigers", "bears"] 
#lions
#bears

animals[0]
# => "lions" 

animals[2]
# => "bears" 

animals[10]
# => nil

animals[-1]
# => "bears" 

animals[-2]
#  => "tigers" 

animals[0..1]
#  => ["lions", "tigers"] 

(0..1).class
#  => Range

# a[0] = 0
# NameError (undefined local variable or method `a' for main:Object)

a = []
# => []

[1].class
# => Array

[1].methods.include? :[]
# => true 

a[0] = 'zero'
# => "zero" 

a[1] = 1
# => 1 

a[2] = ['two', 'things']
# => ["two", "things"] 

a
# => ["zero", 1, ["two", "things"]]

a = [[1, 2, 3], [10, 20, 30], [40, 50, 60]]
# => [[1, 2, 3], [10, 20, 30], [40, 50, 60]] 

a[0][0]
# => 1 

a[1][2]
# => 30

a = [1]
# => [1] 

a.push(1)
# => [1, 1] 

a = [1]
# => [1] 

a.push(2)
# => [1, 2] 

a.pop
# => 2 

a.pop
# => 1 

numbers = {1 => 'one', 2 => 'two'}
# => {1=>"one", 2=>"two"} 

numbers[1]
# => "one" 

numbers[2]
# => "two" 

stuff = {:array => [1, 2, 3], :string => 'Hi, mom!'}
# => {:array=>[1, 2, 3], :string=>"Hi, mom!"} 

stuff[:string]
# => "Hi, mom!"

'string'.object_id
# => 260 

'string'.object_id
# => 280 

:string.object_id
# => 293148 

:string.object_id
# => 293148 

def tell_the_truth(options={})
  if options[:profession] == :lawyer
    'it could be believed that this is almost certainly not false.'
  else
    true
  end
end

tell_the_truth
# => true 

tell_the_truth :profession => :lawyer
# => "it could be believed that this is almost certainly not false."

3.times {puts 'hiya there, kiddo'}
# hiya there, kiddo
# hiya there, kiddo
# hiya there, kiddo

# You can specify code blocks with {/} or do/end

animals = ['lions and ', 'tigers and', 'bears', 'oh my']
# => ["lions and ", "tigers and", "bears", "oh my"]

animals.each {|a| puts a}
# lions and
# tigers and
# bears
# oh my

class Fixnum
  def my_times
    i = self
    while i > 0
      i = i - 1
      yield
    end
  end
end
# => nil

3.my_times {puts 'mangy moose'}
# mangy moose
# mangy moose
# mangy moose

# até página 40

def call_block(&block)
  block.call
end
# => nil

def pass_block(&block)
  call_block(&block)
end
# => nil

pass_block {puts 'Hello, block'}
# Hello, block

# execute_at_noon { puts 'Beep beep... time to get up'}

# in_case_of_emergency do
#   use_credit_card
#   panic
# end

# def in_case_of_emergency
#   yield if emergency?
# end

# def within_a_transaction
#   begin_transaction
#   yield
#   end_transaction
# end

4.class
# => Integer 

4.class.superclass
# => Numeric 

4.class.superclass.superclass
# => Object 

4.class.superclass.superclass.superclass
# => BasicObject 

4.class.superclass.superclass.superclass.superclass
# => nil 


4.class.class
# => Class 

4.class.class.superclass
# => Module 

4.class.class.superclass.superclass
# => Object 

4.class.class.superclass.class
# => Class 

4.class.class.superclass.superclass.class
# => Class 

class Tree
  attr_accessor :children, :node_name

  def initialize(name, children=[])
    @children = children
    @node_name = name
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end

  def visit(&block)
    block.call self
  end
end

ruby_tree = Tree.new( "Ruby" ,
  [Tree.new("Reia" ),
  Tree.new("MacRuby" )] )

puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}
puts
puts "visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}

# Visiting a node
# Ruby

# visiting entire tree
# Ruby
# Reia
# MacRuby

# attr (defining an instance variable and a method of the same name to access it)
# attr_accessor , defining an instance variable, an accessor, and a setter.

module ToFile
  def filename
  "object_#{self.object_id}.txt"
  end

  def to_f
  File.open(filename, 'w' ) {|f| f.write(to_s)}
  end

end

class Person
  include ToFile
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def to_s
    name
  end

end

Person.new('matz' ).to_f

# Single inheritance plus mixins allow for a nice packaging of behavior.

# a class wanting to be `enumerable` must implement `each`
# a class wanting to be `comparable` must implement `<=>` (spaceship operator)

'begin' <=> 'end'
# => -1

'same' <=> 'same'
# => 0

a = [5, 3, 4, 1]
# => [5, 3, 4, 1]

a.sort
# => [1, 3, 4, 5]

a.any? {|i| i > 6}
# => false

a.any? {|i| i > 4}
# => true

a.all? {|i| i > 4}
# => false

a.all? {|i| i > 0}
# => true

a.collect {|i| i * 2}
# => [10, 6, 8, 2]

a.map {|i| i * 2}
# => [10, 6, 8, 2]

a.select {|i| i % 2 == 0 } # even
# => [4]

a.select {|i| i % 2 == 1 } # odd
# => [5, 3, 1]

a.find_all {|i| i % 2 == 1}
# => [5, 3, 1] 

a.find {|i| i % 2 == 1}
# => 5 

a.max
# => 5

a.member?(2)
# => false

a.inject(0) {|sum, i| sum + i}
# => 13 

a.inject {|sum, i| sum + i}
# => 13 

a.inject {|product, i| product * i}
# => 60 

a.inject(0) do |sum, i|
  puts "sum: #{sum} i: #{i} sum + i: #{sum + i}"
  sum + i
end
#sum: 0 i: 5 sum + i: 5
#sum: 5 i: 3 sum + i: 8
#sum: 8 i: 4 sum + i: 12
#sum: 12 i: 1 sum + i: 13
# => 13 

a.inject do |sum, i|
  puts "sum: #{sum} i: #{i} sum + i: #{sum + i}"
  sum + i
end
#sum: 5 i: 3 sum + i: 8
#sum: 8 i: 4 sum + i: 12
#sum: 12 i: 1 sum + i: 13
# => 13 

# Application performance is secondary.
# Ruby is about the performance of the programmer.

# Day 2 Self-Study

# Find:

# • Find out how to access files with and without code blocks.
#   What is the benefit of the code block?

# When using a code block when reading a file, there's no need to close it.

# https://ruby-doc.org/core-3.0.0/File.html#method-c-open

# With no associated block, ::open is a synonym for ::new.
# If the optional code block is given, it will be passed the opened file as an argument and the File object will automatically be closed when the block terminates.
# The value of the block will be returned from ::open.

bashrc = File.open('/home/alexandre/.bashrc')
# => #<File:/home/alexandre/.bashrc> 

bashrc.read
# => "# ~/.bashrc: executed by bash(1) for non-login shells.\n# see /usr/share/doc/bash/examples/startup-files ..."

bashrc.readlines
# => ["# ~/.bashrc: executed by bash(1) for non-login shells.\n",
#     "# see /usr/share/doc/bash/examples/startup-files ..."]

bashrc.close

# • How would you translate a hash to an array?
#   Can you translate arrays to hashes?

# https://ruby-doc.org/core-3.0.0/Hash.html#method-i-to_a

h = {foo: 0, bar: 1, baz: 2}
# => {:foo=>0, :bar=>1, :baz=>2} 

h.to_a
# => [[:foo, 0], [:bar, 1], [:baz, 2]]

# [1, 2, 3].to_h
# TypeError (wrong element type Integer at 0 (expected array))

[[:name, "Alexandre"], [:age, 40 ]].to_h
# => {:name=>"Alexandre", :age=>40}

# https://ruby-doc.org/core-3.0.0/Hash.html#method-c-try_convert

# try_convert(obj) → obj, new_hash, or nil
# If obj is a Hash object, returns obj.
# Otherwise if obj responds to :to_hash, calls obj.to_hash and returns the result.
# Returns nil if obj does not respond to :to_hash
# Raises an exception unless obj.to_hash returns a Hash object.

Hash.try_convert([[:name, "Alexandre"], [:age, 40 ]])
# => nil 

# • Can you iterate through a hash?

# https://ruby-doc.org/core-3.0.0/Hash.html#method-i-each
# https://ruby-doc.org/core-3.0.0/Hash.html#method-i-each_pair
# https://ruby-doc.org/core-3.0.0/Hash.html#method-i-each_key
# https://ruby-doc.org/core-3.0.0/Hash.html#method-i-each_value

person = {:name=>"Alexandre", :age=>40} 
# => {:name=>"Alexandre", :age=>40} 

person.each { |key, value| puts "#{key} => #{value} " }
# name => Alexandre 
# age => 40 
# => {:name=>"Alexandre", :age=>40} 

person.each_pair { |key, value| puts "#{key} => #{value} " }
# name => Alexandre 
# age => 40 
# => {:name=>"Alexandre", :age=>40} 

person.each_key { |key| puts "#{key} => ?" }
# name => ?
# age => ?
# => {:name=>"Alexandre", :age=>40} 

person.each_value { |value| puts "? => #{value}" }
# ? => Alexandre
# ? => 40
# => {:name=>"Alexandre", :age=>40} 

# • You can use Ruby arrays as stacks.
#   What other common data structures do arrays support?

# stack

[1, 8, 7].push 3
# => [1, 8, 7, 3] 

[1, 8, 7, 3].pop
# => 3

# linked list / dequeue

[1, 8, 7].last
# => 7 

[1, 8, 7].first
# => 1 
 
[1, 8, 7].prepend 3
# => [3, 1, 8, 7] 

[1, 8, 7].unshift 3 
# => [3, 1, 8, 7]

[1, 8, 7].push 3
# => [1, 8, 7, 3] 

[1, 8, 7].append 3
# => [1, 8, 7, 3] 

[1, 8, 7].shift
# => 1

[1, 8, 7].insert 2, 100
# => [1, 8, 100, 7] 

[1, 8, 7].insert 5, 3
# => [1, 8, 7, nil, nil, 3] 

# set

[0, 0, 1, 1, 2, 2].uniq
# => [0, 1, 2]

[1, 8, 7].union [1, 8, 9]
# => [1, 8, 7, 9] 

[1, 8, 7] | [1, 8, 9]
# => [1, 8, 7, 9] 

[1, 8, 7].intersection [1, 8, 9]
# => [1, 8] 

[1, 8, 7] & [1, 8, 9]
# => [1, 8] 

# Do:

# • Print the contents of an array of sixteen numbers, four numbers at a time, using just `each`.
#   Now, do the same with `each_slice` in `Enumerable`.

array_of_sixteen_numbers = (1..16).to_a
array_of_sixteen_numbers.each_with_index do |item, index|
  puts if index % 4 == 0
  print item.to_s + " "
end
puts

# 1 2 3 4 
# 5 6 7 8 
# 9 10 11 12 
# 13 14 15 16 

array_of_sixteen_numbers.each_slice(4) do |items|
  items.each { |item| print item.to_s + " " }
  puts
end

# 1 2 3 4 
# 5 6 7 8 
# 9 10 11 12 
# 13 14 15 16 

# • The Tree class was interesting, but it did not allow you to specify a new tree with a clean user interface.
#   Let the initializer accept a nested structure with hashes and arrays.
#   You should be able to specify a tree like this:
# {
#  'grandpa' => {
#                 'dad' => {
#                           'child 1' => {},
#                           'child 2' => {}
#                          },
#                 'uncle' => {
#                              'child 3' => {},
#                              'child 4' => {} 
#                           }
#               }
# }

class Tree
  attr_accessor :children, :node_name

  def initialize(name, children=[])
    @children = children
    @node_name = name
  end

  def self.from_hash(hash)
    puts hash
    name = hash.keys.first
    children = []
    hash[name].each do |key, value|
      children.push from_hash({key => value})
    end
    Tree.new(name, children)
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end

  def visit(&block)
    block.call self
  end
end

ruby_tree = Tree.new( "Ruby" ,
  [Tree.new("Reia" ),
  Tree.new("MacRuby" )] )


another_ruby_tree = Tree.from_hash({ "Ruby" => {  "Reia" => {},
                                    "MacRuby" => {}}})

family_tree = Tree.from_hash(
{
 'grandpa' => {
                'dad' => {
                          'child 1' => {},
                          'child 2' => {}
                         },
                'uncle' => {
                             'child 3' => {},
                             'child 4' => {} 
                          }
              }
})

puts "Visiting a node"
another_ruby_tree.visit {|node| puts node.node_name}
puts
puts "visiting entire tree"
another_ruby_tree.visit_all {|node| puts node.node_name}

# Visiting a node
# Ruby

# visiting entire tree
# Ruby
# Reia
# MacRuby

family_tree = Tree.from_hash(
{
 'grandpa' => {
                'dad' => {
                          'child 1' => {},
                          'child 2' => {}
                         },
                'uncle' => {
                             'child 3' => {},
                             'child 4' => {} 
                          }
              }
})

puts "Visiting a node from the family tree"
family_tree.visit {|node| puts node.node_name}
puts
puts "visiting the entire family tree"
family_tree.visit_all {|node| puts node.node_name}


# • Write a simple grep that will print the lines of a file having any occurrences of a phrase anywhere in that line.
#   You will need to do a simple regular expression match and read lines from a file. (This is surprisingly simple in Ruby.)
#   If you want, include line numbers.

phrase = "/bin"
File.open("/home/alexandre/.bashrc").readlines.each_with_index do |line, line_number|
  puts "#{line_number}: " + line if line.match(phrase)
end
