
# Find the second largest number in an array.

# Constraint: Do not use .sort method - use logic only.

# Test Cases:

# second_largest([10, 5, 8, 12, 3])  # => 10
# second_largest([5, 5, 3, 5])       # => 3
# second_largest([1])                # => nil


def second_largest(arr)
  
  for i in 0...arr.length 
    for j in 0...arr.length - 1 
      if arr[j] > arr[j+1]
        temp = arr[j]
        arr[j] = arr[j+1]
        arr[j+1] = temp
      end
    end
  end

  if arr.length != 1 && arr.length > 1
    puts "second largest : #{arr[arr.length - 2]}"
  else
    puts "second largest : #{arr[1]} "
  end

end

second_largest([10, 5, 8, 12, 3])
second_largest([5, 5, 3, 5]) 
second_largest([1]) 
second_largest([1,2323,4,23,3434]) 