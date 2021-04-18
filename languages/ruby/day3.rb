def separator
  10.times { print "-"}
  puts
end

# Open Classes

class NilClass
  def blank?
    true
  end
end

class String
  def blank?
    self.size == 0
  end
end

["" , "person" , nil].each do |element|
  puts element unless element.blank?
end

# person

class Numeric
  def inches
    self
  end
  
  def feet
    self * 12.inches
  end
  
  def yards
    self * 3.feet
  end
  
  def miles
    self * 5280.feet
  end
  
  def back
    self * -1
  end
  
  def forward
    self
  end
end

separator

puts 10.miles.back
puts 2.feet.forward

# -633600
# 24

# method_missing

class Roman
  def self.method_missing name, *args
    roman = name.to_s
    roman.gsub!("IV", "IIII")
    roman.gsub!("IX", "VIIII")
    roman.gsub!("XL", "XXXX")
    roman.gsub!("XC", "LXXXX")

    (roman.count("I") +  
     roman.count("V") * 5 +
     roman.count("X") * 10 + 
     roman.count("L") * 50 +
     roman.count("C") * 100)
  end
end

separator

puts Roman.X
puts Roman.XC
puts Roman.XII
puts Roman.X

# 10
# 90
# 12
# 10

class ActsAsCsv
  def read
    file = File.new(self.class.to_s.downcase + '.txt')
    @headers = file.gets.chomp.split(', ')

    file.each do |row|
      @result << row.chomp.split(', ')
    end
  end
  
  def headers
    @headers
  end
  
  def csv_contents
    @result
  end
  
  def initialize
    @result = []
    read
  end
end

class RubyCsv < ActsAsCsv
end

m = RubyCsv.new

separator

puts m.headers.inspect
puts m.csv_contents.inspect

# ["one", "two"]
# [["lions", "tigers"]]

class ActsAsCsv
  def self.acts_as_csv
    
    define_method 'read' do
      file = File.new(self.class.to_s.downcase + '.txt')
      @headers = file.gets.chomp.split(', ')

      file.each do |row|
        @result << row.chomp.split(', ')
      end
    end
    
    define_method "headers" do
      @headers
    end
    
    define_method "csv_contents" do
      @result
    end
    
    define_method 'initialize' do
      @result = []
      read
    end
  end
end

class RubyCsv < ActsAsCsv
  acts_as_csv
end

m = RubyCsv.new

separator

puts m.headers.inspect
puts m.csv_contents.inspect

# ["one", "two"]
# [["lions", "tigers"]]

module ActsAsCsvModule
  def self.included(base)
    base.extend CsvClassMethods
  end
  
  module CsvClassMethods
    def acts_as_csv
      include CsvInstanceMethods
    end
  end
  
  module CsvInstanceMethods   
    def read
      @csv_contents = []
      filename = self.class.to_s.downcase + '.txt'
      file = File.new(filename)
      @headers = file.gets.chomp.split(', ')

      file.each do |row|
        @csv_contents << row.chomp.split(', ')
      end
    end
    
    attr_accessor :headers, :csv_contents
    def initialize
      read 
    end
  end
end

class RubyCsv  # no inheritance! You can mix it in
  include ActsAsCsvModule
  acts_as_csv
end

m = RubyCsv.new

separator

puts m.headers.inspect
puts m.csv_contents.inspect


# ["one", "two"]
# [["lions", "tigers"]]

# Day 3 Self-Study

# Do:

# Modify the CSV application to support an `each` method to return a `CsvRow` object.
# Use `method_missing` on that `CsvRow` to return the value for the column for a given heading.

# For example, for the file:

# one, two
# lions, tigers

# allow an API that works like this:

# csv = RubyCsv.new
# csv.each {|row| puts row.one}

# This should print "lions".

class CsvRow
  
  def initialize(headers, row)
    @headers = headers
    @row = row
  end

  def method_missing name, *args
    puts name
    header = name.to_s
    index = @headers.index(header)
    @row[index]
  end

  def to_s
    "csv row: #{@row}" 
  end
end

module ActsAsCsvModule
  def self.included(base)
    base.extend CsvClassMethods
  end
  
  module CsvClassMethods
    def acts_as_csv
      include CsvInstanceMethods
    end
  end
  
  module CsvInstanceMethods   
    def read
      @csv_contents = []
      filename = self.class.to_s.downcase + '.txt'
      file = File.new(filename)
      @headers = file.gets.chomp.split(', ')

      file.each do |row|
        @csv_contents << row.chomp.split(', ')
      end
    end

    def each(&block)
      csv_rows = csv_contents.map { |row| CsvRow.new(headers, row) }
      csv_rows.each { |row| block.call row }
    end
    
    attr_accessor :headers, :csv_contents
    def initialize
      read 
    end
  end
end

class RubyCsv  # no inheritance! You can mix it in
  include ActsAsCsvModule
  acts_as_csv
end

csv = RubyCsv.new

separator

csv.each {|row| puts row.one}

# one
# lions