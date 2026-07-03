
# remove_duplicates([1, 2, 2, 3, 4, 4, 5])    # => [1, 2, 3, 4, 5]
# remove_duplicates([1, 1, 1])                # => [1]
# remove_duplicates([])  




def remove_duplicates(arr)
  uniq = []

 i= 0
  while i < arr.length 
    if arr[i] != arr[i+1]
     uniq[i] = arr[i]
    end
 i += 1
  end

 uniq.delete(nil)
  print uniq
end

remove_duplicates([1, 2, 2, 3, 4, 4, 5]) 
remove_duplicates([1, 1, 1])                
remove_duplicates([])