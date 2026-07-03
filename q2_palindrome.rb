# Check if a string is a palindrome.

# Constraint: Do not use .reverse method - use logic only.

# Ignore spaces and case (e.g., "A man a plan a canal Panama" is a palindrome).

# Test Cases:

# is_palindrome("racecar")        # => true
# is_palindrome("hello")          # => false
# is_palindrome("A man a plan a canal Panama")  # => true
# is_palindrome("a")              # => true

def is_palindrome(str)
  temp = str.downcase.gsub(" ", "")
  str1 =""
  
  i = temp.length-1
  while i >= 0
    if temp[i] != " "
    str1 <<  temp[i]
    end
    i -= 1
  end

  if str1 == temp
      true
  else
     false
  end
end

puts is_palindrome("racecar")
puts is_palindrome("hello")         
puts is_palindrome("A man a plan a canal Panama")  
puts is_palindrome("a")     