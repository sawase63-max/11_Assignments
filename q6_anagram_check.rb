# Check if two strings are anagrams of each other.

# Ignore spaces and case.

# Test Cases:

# is_anagram("listen", "silent")      # => true
# is_anagram("hello", "world")        # => false
# is_anagram("abc", "bca")            # => true
# is_anagram("A Gentleman", "Elegant Man")  # => true


def is_anagram(str1, str2)
  
if str1.length != str2.length
   false
end
chr = str1.downcase.gsub(" ","").chars
chr1 = str2.downcase.gsub(" ", "").chars


chr.each do |i|
 
  for j in 0...chr.length - 1 
      if chr[j].ord > chr[j+1].ord
        temp = chr[j]
        chr[j] = chr[j+1]
        chr[j+1] = temp
      end
  end
  for j in 0...chr1.length - 1 
      if chr1[j].ord > chr1[j+1].ord
        temp = chr1[j]
        chr1[j] = chr1[j+1]
        chr1[j+1] = temp
      end
  end
end
if chr.join("") == chr1.join("")
true 
else 
  false
end
end
puts is_anagram("listen", "silent") 
puts is_anagram("hello", "world")       
puts is_anagram("abc", "bca")            
puts is_anagram("A Gentleman", "Elegant Man")  