# Find all pairs in an array where the difference equals exactly k.

# Constraint: Use Hash for efficiency.

# Input: [1, 5, 3, 4, 2], k = 2
# Output: [[1, 3], [3, 5], [2, 4]]

# Explanation:

# 3 - 1 = 2
# 5 - 3 = 2
# 4 - 2 = 2
# Test Cases:

# find_pairs([1, 5, 3, 4, 2], 2)  # => [[1, 3], [2, 4], [3, 5]]
# find_pairs([1, 1, 1, 1], 0)     # => [[1, 1], [1, 1], ...]
# find_pairs([1, 2, 3], 5)  

def find_pairs(arr, num)
  
arr1 = []

 for i in 0...arr.length 
    for j in 0...arr.length - 1 
      if arr[j] > arr[j+1]
        temp = arr[j]
        arr[j] = arr[j+1]
        arr[j+1] = temp
      end
    end
  end


 
  for i in 0...arr.length 
    for j in 0...arr.length - 1 
      if arr[j + 1] - arr[i] == num
        arr1[i] = [arr[i], arr[j+1] ]
      else 
        next
      end
    end
  end

  return arr1
end

print "#{find_pairs([1, 5, 3, 4, 2], 2)}\n"
print "#{find_pairs([1, 1, 1, 1], 0)  }\n"   # => [[1, 1], [1, 1], ...]
print "#{find_pairs([1, 2, 3], 5) }\n"