
# Count the number of vowels in a string (case-insensitive).

# Test Cases:

# count_vowels("Hello World")   # => 3
# count_vowels("AEIOU")         # => 5
# count_vowels("bcdfg")         # => 0
# count_vowels("Programming")

def count_vowels(str)
  
 
  str1 = str.downcase.gsub(/[^aeiou]/,"")
 print "total vawels in #{str}: #{str1.length} \n"

  # for i in 0..str.length
  #   print str[i]
  # end
end

count_vowels("Hello World")

count_vowels("AEIOU")         
count_vowels("bcdfg") 