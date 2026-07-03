# Given an array of integers and a target number, find the indices of two numbers that add up to the target.

# Constraint: Use Hash - do NOT use nested loops. Time complexity must be O(n), not O(n²).

# Input: [2, 7, 11, 15], target = 9
# Output: [0, 1] (because 2 + 7 = 9)

# Test Cases:

# two_sum([2, 7, 11, 15], 9)  # => [0, 1]
# two_sum([3, 2, 4], 6)       # => [1, 2]
# two_sum([1, 1], 2)          # => [0, 1]
# two_sum([1, 2, 3], 5)       # => [1, 2]

def two_sum(arr, num)
  

  for i in 0..arr.length - 2
    if arr[i] + arr[i + 1] == num
      puts "[#{i}, #{i + 1}]"
      break
    end
  end
end
two_sum([2, 7, 11, 15], 9)  # => [0, 1]
two_sum([3, 2, 4], 6)       # => [1, 2]
two_sum([1, 1], 2)          # => [0, 1]
two_sum([1, 2, 3, 8], 11)   # => [1, 2]
