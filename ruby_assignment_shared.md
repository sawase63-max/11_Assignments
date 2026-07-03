# Ruby Programming Assignment

## Submission Requirements

- Create separate `.rb` file for each question
- Add comments explaining your logic
- No hardcoding - solution should work with different inputs
- File naming: `q1_fizzbuzz.rb`, `q2_palindrome.rb`, etc.

---

## Question 1: FizzBuzz

Print numbers from 1 to 50 with these rules:
- If multiple of 3 → print "Fizz"
- If multiple of 5 → print "Buzz"
- If multiple of both → print "FizzBuzz"
- Otherwise → print the number

**Test Cases:**
```ruby
# Expected output includes:
1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
```

---

## Question 2: Palindrome Check

Check if a string is a palindrome.

**Constraint:** Do not use `.reverse` method - use logic only.

Ignore spaces and case (e.g., "A man a plan a canal Panama" is a palindrome).

**Test Cases:**
```ruby
is_palindrome("racecar")        # => true
is_palindrome("hello")          # => false
is_palindrome("A man a plan a canal Panama")  # => true
is_palindrome("a")              # => true
```

---

## Question 3: Array Duplicates Remove

Remove duplicates from an array without using `.uniq` method.

**Constraint:** Do not use `.uniq`.

**Input:** `[1, 2, 2, 3, 4, 4, 5]`
**Output:** `[1, 2, 3, 4, 5]`

**Test Cases:**
```ruby
remove_duplicates([1, 2, 2, 3, 4, 4, 5])    # => [1, 2, 3, 4, 5]
remove_duplicates([1, 1, 1])                # => [1]
remove_duplicates([])                       # => []
```

---

## Question 4: Find the Second Largest

Find the second largest number in an array.

**Constraint:** Do not use `.sort` method - use logic only.

**Test Cases:**
```ruby
second_largest([10, 5, 8, 12, 3])  # => 10
second_largest([5, 5, 3, 5])       # => 3
second_largest([1])                # => nil
```

---

## Question 5: Count Vowels

Count the number of vowels in a string (case-insensitive).

**Test Cases:**
```ruby
count_vowels("Hello World")   # => 3
count_vowels("AEIOU")         # => 5
count_vowels("bcdfg")         # => 0
count_vowels("Programming")   # => 3
```

---

## Question 6: Anagram Check

Check if two strings are anagrams of each other.

Ignore spaces and case.

**Test Cases:**
```ruby
is_anagram("listen", "silent")      # => true
is_anagram("hello", "world")        # => false
is_anagram("abc", "bca")            # => true
is_anagram("A Gentleman", "Elegant Man")  # => true
```

---

## Question 7: Two Sum using Hash

Given an array of integers and a target number, find the indices of two numbers that add up to the target.

**Constraint:** Use Hash - do NOT use nested loops. Time complexity must be O(n), not O(n²).

**Input:** `[2, 7, 11, 15]`, target = `9`
**Output:** `[0, 1]` (because 2 + 7 = 9)

**Test Cases:**
```ruby
two_sum([2, 7, 11, 15], 9)  # => [0, 1]
two_sum([3, 2, 4], 6)       # => [1, 2]
two_sum([1, 1], 2)          # => [0, 1]
two_sum([1, 2, 3], 5)       # => [1, 2]
```

---

## Question 8: Hash Frequency Counter

Count the frequency of each word in an array and store in a hash.

**Input:** `["apple", "banana", "apple", "cherry", "banana", "apple"]`
**Output:** `{"apple" => 3, "banana" => 2, "cherry" => 1}`

**Test Cases:**
```ruby
word_frequency(["apple", "banana", "apple"])
# => {"apple" => 2, "banana" => 1}

word_frequency([])
# => {}

word_frequency(["a", "b", "c"])
# => {"a" => 1, "b" => 1, "c" => 1}
```

---

## Question 9: Find All Pairs with Given Difference

Find all pairs in an array where the difference equals exactly k.

**Constraint:** Use Hash for efficiency.

**Input:** `[1, 5, 3, 4, 2]`, k = `2`
**Output:** `[[1, 3], [3, 5], [2, 4]]`

**Explanation:**
- 3 - 1 = 2
- 5 - 3 = 2
- 4 - 2 = 2

**Test Cases:**
```ruby
find_pairs([1, 5, 3, 4, 2], 2)  # => [[1, 3], [2, 4], [3, 5]]
find_pairs([1, 1, 1, 1], 0)     # => [[1, 1], [1, 1], ...]
find_pairs([1, 2, 3], 5)        # => []
```

---

## Question 10: Matrix Rotation

Rotate an N×N matrix 90 degrees clockwise.

**Constraint:** Use only indexing logic - do NOT use built-in rotate methods.

**Input:**
```ruby
[[1, 2, 3],
 [4, 5, 6],
 [7, 8, 9]]
```

**Expected Output:**
```ruby
[[7, 4, 1],
 [8, 5, 2],
 [9, 6, 3]]
```

**Test Cases:**
```ruby
rotate_matrix([[1, 2], [3, 4]])
# => [[3, 1], [4, 2]]

rotate_matrix([[1]])
# => [[1]]

rotate_matrix([[1, 2, 3, 4],
               [5, 6, 7, 8],
               [9, 10, 11, 12],
               [13, 14, 15, 16]])
# => [[13, 9, 5, 1],
#     [14, 10, 6, 2],
#     [15, 11, 7, 3],
#     [16, 12, 8, 4]]
```

---

## Question 11: Student Grade System

Create a `Student` class with the following:

**Properties:** `name`, `marks` (array of 5 marks)

**Methods:**
- `average_marks` - returns average of marks
- `grade` - returns letter grade (A/B/C/D/F based on average)
- `passed?` - returns true if average >= 60
- `display_report` - prints formatted report

**Grade Scale:**
```
A: 90-100
B: 80-89
C: 70-79
D: 60-69
F: below 60
```

**Test Cases:**
```ruby
student = Student.new("Alice", [85, 90, 78, 88, 92])

student.average_marks  # => 86.6
student.grade          # => "A"
student.passed?        # => true

student2 = Student.new("Bob", [55, 60, 50, 58, 52])
student2.grade         # => "F"
student2.passed?       # => false
```

---

## Submission Format

```
Create folder: ruby_assignment/
├── q1_fizzbuzz.rb
├── q2_palindrome.rb
├── q3_duplicates.rb
├── q4_second_largest.rb
├── q5_vowels.rb
├── q6_anagram.rb
├── q7_two_sum.rb
├── q8_frequency.rb
├── q9_pairs_diff.rb
├── q10_matrix_rotation.rb
└── q11_student_class.rb
```


