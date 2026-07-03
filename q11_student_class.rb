# Create a Student class with the following:

# Properties: name, marks (array of 5 marks)

# Methods:

# average_marks - returns average of marks
# grade - returns letter grade (A/B/C/D/F based on average)
# passed? - returns true if average >= 60
# display_report - prints formatted report
# Grade Scale:

# A: 90-100
# B: 80-89
# C: 70-79
# D: 60-69
# F: below 60
# Test Cases:

# student = Student.new("Alice", [85, 90, 78, 88, 92])

# student.average_marks  # => 86.6
# student.grade          # => "A"
# student.passed?        # => true

# student2 = Student.new("Bob", [55, 60, 50, 58, 52])
# student2.grade         # => "F"
# student2.passed?       # => false

class Student 
  def initialize(name, marks)
    @name, @marks = name, marks
  end

  def average_marks
    length = @marks.length
    sum = 0
    @marks.each do |i|
      sum += i
    end

    return sum/length.to_f
  end

  def grade
    average = average_marks() 

    if average >= 90 && average <= 100
       "A"

    elsif average >= 80 && average <= 89
      "B"
    elsif average >= 70 && average <= 79
      "C"
    elsif average >= 60 && average <= 69
      "D"
    else
      "F"
    end
  end

  def passed?
     average = average_marks() 

    if average >= 60
      true
    else
      false
    end
  end

  def display_report
     average = average_marks() 
     pass = passed?
    puts  grade = grade()

     puts "student name: #{@name}"
     puts "average: #{average}"
     puts "passed?: #{pass}"
     puts "grade: #{grade}"
    
  end
end

student1 = Student.new("Alice",[85, 90, 78, 88, 92])

puts student1.average_marks
puts student1.grade
student1.display_report

student2 = Student.new("Bob", [55, 60, 50, 58, 52])
puts student2.grade         # => "F"
puts student2.passed?     
student2.display_report