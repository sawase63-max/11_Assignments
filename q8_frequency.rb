
# Count the frequency of each word in an array and store in a hash.

# Input: ["apple", "banana", "apple", "cherry", "banana", "apple"]
# Output: {"apple" => 3, "banana" => 2, "cherry" => 1}

# Test Cases:

# word_frequency(["apple", "banana", "apple"])
# # => {"apple" => 2, "banana" => 1}

# word_frequency([])
# # => {}

# word_frequency(["a", "b", "c"])
# # => {"a" => 1, "b" => 1, "c" => 1}

def word_frequency(arr)
  hash = {}

  for i in 0...arr.length
    count = 0 
    for j in 0...arr.length 
      

    if arr[i] == arr[j]
       count += 1
    end
  end
  hash[arr[i]] = count
end
print "#{hash}\n"
end
word_frequency(["apple", "banana", "apple"])
word_frequency(["apple", "banana", "apple", "cherry", "banana", "apple"])