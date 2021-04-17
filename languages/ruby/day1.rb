puts 'hello, world'
# hello, world
# => nil 

language = 'Ruby'
# => "Ruby" 

puts "hello, #{language}"
# hello, Ruby
# => nil 

language = 'my Ruby'
# => "my Ruby" 

puts "hello, #{language}"
# hello, my Ruby
# => nil

4
# => 4 

4.class
# => Integer 

4 + 4
# => 8 

4.methods
# => [:next, :**, :<=>, :<<, :>>, :<=, :>=, :==, :===, :upto, :[], :chr, :-@, :%, :&, :numerator, :denominator, :rationalize, :*, :+, :inspect, :-, :lcm, :/, :gcd, :gcdlcm, :ord, :size, :succ, :<, :>, :to_int, :to_s, :to_i, :to_f, :to_r, :bit_length, :even?, :odd?, :coerce, :div, :divmod, :modulo, :remainder, :^, :fdiv, :magnitude, :abs, :integer?, :zero?, :floor, :ceil, :round, :truncate, :allbits?, :anybits?, :nobits?, :downto, :times, :pred, :pow, :digits, :|, :~, :+@, :eql?, :arg, :rectangular, :singleton_method_added, :rect, :real, :imaginary, :imag, :abs2, :angle, :phase, :conjugate, :conj, :to_c, :polar, :i, :real?, :nonzero?, :finite?, :infinite?, :clone, :step, :negative?, :positive?, :quo, :dup, :clamp, :between?, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :class, :frozen?, :then, :public_send, :method, :public_method, :singleton_method, :tap, :define_singleton_method, :extend, :yield_self, :to_enum, :enum_for, :=~, :!~, :nil?, :respond_to?, :freeze, :object_id, :send, :display, :hash, :singleton_class, :itself, :!, :!=, :equal?, :instance_eval, :instance_exec, :__id__, :__send__] 

x = 4
# => 4 

x < 5
# => true 

x <= 4
# => true 

x > 4
# => false 

false.class
# => FalseClass 

true.class
# => TrueClass 

x = 4
# => 4 

puts 'This appears to be true.' if x == 4
# This appears to be true.
# => nil 

if x == 4
  puts 'This appears to be true.'
end
# This appears to be true.
# => nil 

unless x == 4
  puts 'This appears to be false.'
else
  puts 'This appears to be true.'
end
# This appears to be true.
# => nil 

puts 'This appears to be true.' if not true
# => nil 

puts 'This appears to be true.' if !true
# => nil 

# order.calculate_tax unless order.nil?

true and false
# => false 

true or false
# => true 

false && false
# => false 

true && this_will_cause_an_error
# NameError (undefined local variable or method `this_will_cause_an_error' for main:Object)

false && this_will_not_cause_an_error
# => false 

true or this_will_not_cause_an_error
# => true 

true || this_will_not_cause_an_error
# => true 

true | this_will_cause_an_error
# NameError (undefined local variable or method `this_will_cause_an_error' for main:Object)

true | false
# => true 

4 + 'four'
# TypeError (String can't be coerced into Integer)

4.class
# => Integer 

(4.0).class
# => Float 

4 + 4.0
# => 8.0 

def add_them_up
  4 + 'four'
end
#  => :add_them_up 

add_them_up
# TypeError (String can't be coerced into Integer)

i = 0
# => 0

a = ['100', 100.0]
# => ["100", 100.0] 

while i < 2
  puts a[i].to_i
  i = i + 1
end
# 100
# 100
# => nil

# Day 1 Self-Study

# Find:

# • The Ruby API

# https://ruby-doc.org/core-3.0.0/

# • The free online version of Programming Ruby: The Pragmatic Programmer’s Guide [TFH08]

# https://ruby-doc.com/docs/ProgrammingRuby/

# • A method that substitutes part of a string

# https://ruby-doc.org/core-3.0.0/String.html#method-i-sub

"hello".sub(/[aeiou]/, '*')
# => "h*llo" 

"hello".gsub(/[aeiou]/, '*')
# => "h*ll*" 

"hello".sub(/([aeiou])/, '<\1>') 
# => "h<e>llo" 

"hello".sub(/./) {|s| s.ord.to_s + ' ' }
# => "104 ello" 

"hello".sub(/(?<foo>[aeiou])/, '*\k<foo>*')
# => "h*e*llo" 

'Is SHELL your preferred shell?'.sub(/[[:upper:]]{2,}/, ENV)
# => "Is /usr/bin/zsh your preferred shell?"

ENV['SHELL']
# => "/usr/bin/zsh"

# • Information about Ruby’s regular expressions

# https://ruby-doc.org/core-3.0.0/Regexp.html

# • Information about Ruby’s ranges

# https://ruby-doc.org/core-3.0.0/Range.html

(-1..-5).to_a
# => []

(-5..-1).to_a
# => [-5, -4, -3, -2, -1]

('a'..'e').to_a
# => ["a", "b", "c", "d", "e"]

('a'...'e').to_a
# => ["a", "b", "c", "d"]

# Do:

# • Print the string “Hello, world.”

puts "Hello, world."

# • For the string “Hello, Ruby,” find the index of the word “Ruby.”

"Hello, Ruby".index "Ruby"

# • Print your name ten times.

10.times { puts "Alexandre"  }
# Alexandre
# Alexandre
# Alexandre
# Alexandre
# Alexandre
# Alexandre
#  => 10 

# • Print the string “This is sentence number 1,” where the number 1
# changes from 1 to 10.

1.upto(10).each do |i|
  puts "This is sentence number #{i}"
end

# • Run a Ruby program from a file.

ruby day1.rb
