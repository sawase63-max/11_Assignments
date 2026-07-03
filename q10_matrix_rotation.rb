
# rotate_matrix([[1, 2], [3, 4]])
# # => [[3, 1], [4, 2]]

# rotate_matrix([[1]])
# # => [[1]]

# rotate_matrix([[1, 2, 3, 4],
#                [5, 6, 7, 8],
#                [9, 10, 11, 12],
#                [13, 14, 15, 16]])
# # => [[13, 9, 5, 1],
# #     [14, 10, 6, 2],
# #     [15, 11, 7, 3],
# #     [16, 12, 8, 4]]

def rotate_matrix(arr)
  
  row = arr.length - 1 
  col = 0
  arr1 = []
# arr1 << arr[row][col]
# arr1 << arr[row - 1][col]
# arr1 << arr[row - 2][col]
# arr1 << arr[row- 3][col]



while col < arr.length

  while row >= 0
   arr1 << arr[row][col]
    row = row - 1
  end
  col += 1
end
print arr1
  
  while row >= 0
    row1 = row
    row2 = 0
      col = 0 

     while col < arr.length - 1
     print "[#{arr[row1][0]}]"
     row1 -= 1
     col += 1
     end
     row2 =1
    row -= 1
    
  end
  
end

# rotate_matrix([[1, 2, 3, 4],
#                [5, 6, 7, 8],
#                [9, 10, 11, 12],
#                [13, 14, 15, 16]])
rotate_matrix([[1, 2], [3, 4]])