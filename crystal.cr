# to understand as Ruby, but has the speed
# of C
 
# Output to the console
puts "Hello World"
 
# ----- DATA TYPES -----
# Everything is an object
 
# Variables start with _ or a lowercase
# letter and may contain numbers
 
# This is a constant
PI = 3.14
 
# You can assign multiple values
a, b = 1, 2
 
# Bools are either true or false
canIVote = true
 
# sizeof returns the size in bytes
puts sizeof(Int8)
puts sizeof(Int16)
puts sizeof(Int32)
puts sizeof(Int64)
 
# There are also unsigned versions
# UInt8, UInt16, UInt32, UInt64
 
# There are 2 float types Float32 & Float64
# They are accurate up to around 13 digits
bigFloat = 1.12345678901234
 
# You can cast to a string using .to_s
puts (bigFloat + 0.00000000000005).to_s
 
# A Char is surrounded by single quotes
# and is either a single character or
# a special character like \n, \t, \', \"
myGrade = 'A'
 
# ----- STRINGS -----
# Strings are a series of characters
# surrounded by ""
myName = "Derek"
num1 = 1
num2 = 2
 
# String interpolation is available
puts "#{num1} + #{num2} = #{num1 + num2}"
 
# Multiline strings
multString = "I
use
many
lines"
puts multString
 
# Concatenate strings
puts myName + " Banas"
 
# String size
puts "Egg".size
 
# Duplicate string
puts "Money " * 3
 
# Compare equality
puts "Doug" == "Paul"
 
# Returns -1, 0, or 1
puts "Doug".compare("Paul")
 
# Get value at index
puts "Hello"[0]
 
# Index where value is
puts "Monkey".index("key")
 
# Does string contain a string
puts "Turtledove".includes?("dove")
 
# Get a range of values
puts "Pigman"[0..2]
 
# Return an array of Chars
puts "Sue".chars
 
# Return an array using a separator
puts "Happy Birthday".split(" ")
 
# Number of times a character is used
puts "Derek".count('e')
 
# Check if empty
puts "".empty?
 
# Replace substring with another
puts "Have a good day".gsub("good") {"ok"}
 
# Insert in a string
puts "Have a day".insert(6, " good")
 
# ----- ARRAYS -----
# Arrays are ordered lists with integer indexes
 
# Create array
array1 = [8,4,3,7,9]
 
# You can use multiple types
array2 = [5, "Word", 3.2]
 
# You can define accepted types
array3 = [1,2,3] of String | Int32
 
# Empty arrays should specify a type
array4 = Array(Int32).new
 
# Assign values to array using a separator
names = "Paul,Sue,Sam".split(",")
 
# Get size
puts array1.size
 
# Get index
puts array1[1]
 
# Get from index to other
puts array1[1, 4]
 
# Get last
puts array1[-1]
 
# Add value
array1 << 10
 
# Remove last value
puts array1.pop
 
# Remove 1st
puts array1.shift
 
# Check if value exists
puts array1.includes? 7
 
# Delete values
array1.delete(7)
 
# Delete from index to index
puts array1.delete_at(0,2)
 
# Insert a value at index and shift values
puts array1.insert(0, 3)
 
# Push on multiple values
puts array1.push(4,5,6,7)
 
# Sort values
puts array1.sort
 
# Return uniques
puts array1.uniq
 
# Perform operation on all values
puts array1.map! {|x| x * x}
 
# Return array of all permutations
puts array1.permutations
 
# Output array in loop
array1.each do |value|
  puts value
end
 
# ----- LOOPING -----
# Print evens from 1 to 10
x = 1
loop do
  x += 1
 
  # Skip rest of loop unless even
  next unless (x % 2) == 0
  puts x
 
  # Stop looping if x >= 10
  break if x >= 10
end
 
# While loops as long as a condition is true
y = 1
 
while y <= 10
  y += 1
  next unless (y % 2) == 0
  puts y
  break if y >= 10
end
 
# Loop until a condition is met
a = 1
 
until a >= 10
  a += 1
  next unless (a % 2) == 0
  puts a
end
 
# ----- CONDITIONALS -----
# Comparison Operators : == != < > <= >=
# Logical Operators : && || ! (and, or, not)
age = 12
if (age >= 5) && (age <= 6)
  puts "You're in Kindergarten"
elsif (age >= 7) && (age <= 13)
  puts "You're in Middle School"
  puts "Yeah"
elsif (age >= 14) && (age <= 18)
  puts "You're in High School"
else
  puts "Stay Home"
end
 
puts "true || false = " + (true || false).to_s
puts "!true = " + (!true).to_s
 
# Unless comparison
unless age > 4
  puts "No School"
else
  puts "Go to School"
end
 
# Case is used with limited options
print "Language : "
lang = gets
 
case lang
when "French", "french"
  puts "Bonjour"
 
  # without end it would check the next condition
  exit
 
when "Spanish", "spanish"
  puts "Hola"
  exit
 
# else is the default
else
  puts "Hello"
end
 
# Ternary operator
age = 55
puts (age >= 50) ? "Old" : "Young"
 
# ----- USER INTERACTION & MATH -----
print "Enter 1st value "
 
# Get input from the user
# not_nil! provides us with a way to handle
# nil inputs which I cover later with
# exception handling
n1 = gets.not_nil!
print "Enter 2nd value "
n2 = gets.not_nil!
 
# to_i converts a string into an int
# to_s, to_f, to_f64, to_i64, etc.
puts "#{n1} + #{n2} = #{n1.to_i + n2.to_i}"
puts "#{n1} - #{n2} = #{n1.to_i - n2.to_i}"
puts "#{n1} * #{n2} = #{n1.to_i * n2.to_i}"
puts "#{n1} / #{n2} = #{n1.to_i / n2.to_i}"
puts "#{n1} % #{n2} = #{n1.to_i % n2.to_i}"
puts "#{n1} ** #{n2} = #{n1.to_i ** n2.to_i}"
 
# Trig functions cos, sin, tan, acos, asin,
# atan, cosh, sinh, tanh, acosh, asinh, atanh
puts "sqrt(#{n1}) = #{Math.cbrt(n1.to_i)}"
puts "cbrt(#{n1}) = #{Math.cbrt(n1.to_i)}"
puts "hypot(2,2) = #{Math.hypot(2,2)}"
puts "log(100) = #{Math.log(100)}"
puts "log10(100) = #{Math.log10(100)}"
puts "log2(100) = #{Math.log2(100)}"
puts "max(100,101) = #{Math.max(100,101)}"
puts "min(100,101) = #{Math.min(100,101)}"
 
# ----- HASHES -----
# A hash is a collection of key object pairs
 
nHash = { "PI" => 3.14,
                "Golden" => 1.618,
                "e" => 2.718}
 
puts nHash["PI"]
 
# Print out each key and value
nHash.each do |key, value|
  puts key.to_s + " : " + value.to_s
end
 
puts "Size of Hash : " + nHash.size.to_s
 
# Check if empty
puts nHash.empty?
 
# Check for key
nHash.has_key?("PI")
 
# Check for value
nHash.has_value?(3.14)
 
# Merge hashes
nHash.merge({"Absolute0" => -459})
 
# Get hash without keys
puts nHash.reject("PI")
 
# Return based on value condition
puts nHash.select {|k, v| v > 2}
 
# Remove all but given keys
puts nHash.select!("PI")
 
# Delete using key
nHash.delete("PI")
 
# Delete if condition is true
nHash.delete_if {|key, value| key.starts_with?("Go")}
 
# Clear a hash
nHash.clear
 
# ----- TUPLES -----
# Tuples are fixed in size, may have different types
 
# Create a tuple
t1 = {"Derek", 43, 174.5}
 
# Value at index
puts t1[0]
 
# Loop through tuple
t1.each do |value|
  puts value
end
 
# Get first value or use last?
puts t1.first?
 
# Get size
puts t1.size
 
# ----- PROCS -----
# Procs represent a function pointer
 
proc = ->(x : Int32) {x * x}
 
puts proc.call 5
 
# ----- FUNCTIONS -----
# Functions start with def, name,
# parameters if any and maybe a return
# value
def addNums(n1, n2)
  return n1 + n2
end
 
puts addNums(5,4)
 
# Variables are pass by value
x = 1
 
def changeX(x)
  x = 5
end
 
puts x
 
# A function can receive a variable
# number of arguments using a splat
def getSum(*vals)
  sum = 0
  vals.each do |val|
    sum += val
  end
  vals
end
 
puts getSum 1,2,3,4
 
# ----- ENUMS -----
# Enums have a collection of names
# associated with an int starting with 0
# You can assign a datatype or use Int32
enum Color : UInt8
  Blue
  Red
  Green = 4 # You can change a value
 
  # You can have methods
  def green?
    # Check if enum is assigned to green
    self == Color::Green
  end
 
end
 
# Get the value
puts Color::Green.value
 
# Check if enum is green
puts Color::Green.green?
 
# ----- SYMBOLS -----
# Symbols are strings that can't change
# We'll cover them later with classes
:Derek
 
puts :Derek
 
# ----- CLASSES -----
# Classes are blueprints used to model
# real world objects
# Object attributes are called fields
# Object capabilities are called methods
 
class Animal
 
  # Called when an Animal object is created
  def initialize(name : String)
    puts "Animal created"
    @name = name
  end
 
  def setName(name)
    # Set value for the field
    @name = name
  end
 
  def getName
    # Return name value
    @name
  end
 
  # Another way to get the name value
  def name
    @name
  end
 
  # Protect our name data
  def name=(name)
    if name.is_a?(Number)
      puts "Name can't be a number"
    else
      @name = name
    end
  end
 
end
 
# Create an Animal
cat = Animal.new("Mittens")
 
# Change name
cat.name = 1
cat.name = "Sophie"
 
# Get name of cat
puts cat.getName
 
class Dog
  # Shortcut for creating getters and setters
  property name : String
  property height : Float32
  property weight : Float32
 
  def initialize
    @name = "No name"
    @height = 0
    @weight = 0
  end
 
  def bark
    return "Bark"
  end
end
 
rover = Dog.new
rover.name = "Rover"
puts "#{rover.name} says #{rover.bark}"
 
# Inherit all fields and methods of Dog
class GermanShephard < Dog
  def bark
    return "Loud Bark"
  end
end
 
max = GermanShephard.new
max.name = "Max"
puts "#{max.name} says #{max.bark}"
 
# ----- MODULES -----
# Modules add functionality to a class
# but they can't be instantiated
module Vehicle
  def makeSound
    puts "Rumm Rummmmm"
  end
end
 
class MacTruck
  include Vehicle
end
 
macTruck = MacTruck.new
macTruck.makeSound
 
# ----- POLYMORPHISM -----
# Crystal uses duck typing to achieve
# polymorphism
class Bird
  def tweet(bird_type)
    bird_type.tweet
  end
end
 
class Cardinal < Bird
  def tweet
    puts "Tweet tweet"
  end
end
 
class Parrot < Bird
  def tweet
    puts "Squawk"
  end
end
 
generic_bird = Bird.new
 
generic_bird.tweet(Cardinal.new)
generic_bird.tweet(Parrot.new)
 
# ----- STRUCTS -----
# Structs allow you to create light weight
# classes with some built in functionality
struct Location
  property lat : Float32
  property long : Float32
  def initialize(@lat : Float32,
    @long : Float32)
  end
 
  def position
    puts "Latitude : #{lat} Longitude : #{long}"
  end
end
 
where = Location.new(80.31, 72.62)
where.position
 
# ----- EXCEPTION HANDLING -----
# We catch exceptions with begin and rescue
 
print "Enter a number : "
fNum = gets.not_nil!
print "Enter Another : "
sNum = gets.not_nil!
 
begin
  answer = fNum.to_i / sNum.to_i
 
rescue # You could use rescue ZeroDivisionError
  puts "You can't divide by zero"
  exit
end
 
puts "#{fNum} / #{sNum} = #{answer}"
 
# You can throw your own exceptions with raise
# You catch them with rescue
age = -1
begin
  if(age < 0)
    raise "Enter Positive Number"
  end
rescue ex
  puts "That is an impossible age"
end
 
# ----- FILE IO -----
# Returns a File object for writing
write_handler = File.new("somefile.out", "w")
# Puts the text in the file
write_handler.puts("Random Text").to_s
 
# Closes the file
write_handler.close
 
# Read data from the defined file
data_from_file = File.read("somefile.out")
 
puts "Data From File : " + data_from_file
