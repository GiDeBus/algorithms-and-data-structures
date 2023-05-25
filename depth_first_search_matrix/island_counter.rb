

def count_islands(matrix)
  rows = matrix.length
  columns = matrix[0].length
  total_islands = 0

  (0...rows).each do |row|
    (0...columns).each do |column|
      if matrix[row][column] == 1
        total_islands += 1
        visit_islands_dfs(matrix, row, column)
      end
    end
  end
  return total_islands
end

def visit_islands_dfs(matrix, x, y)
  return if (x < 0 || x >= matrix.length || y < 0 || y >= matrix[0].length)
  return if matrix[x][y] == 0

  matrix[x][y] = 0
  
  visit_islands_dfs(matrix, x - 1, y)
  visit_islands_dfs(matrix, x + 1, y)
  visit_islands_dfs(matrix, x, y - 1)
  visit_islands_dfs(matrix, x, y + 1)
end

# set rows of the matrix as a variable
# set columns of the matrix as a variable
# set a counter of islands as a variable and set it to zero

# iterate over rows
#   iterate over columns
#   if the value of i, and j is equal to 1 do the following:
#     increase island counter by one
#     call the recursive method with the matrix, and the indexes of i and j
#   return the island counter


#   define recursive method that takes matrix and x and y coordinates
#     set your stop clauses for the recursion:
#     if x is less than 0 or greater than the lenght of rows return
#     if y is less than 0 or greater than the lenght of columns return
#     if matrix[x][y] is equal to 0 return
#     if the matrix[x][y] is equal to 1 set it to 0
#     call the recursive method again with:
#       matrix x + 1, y
#       matrix x - 1, y
#       matrix x, y + 1
#       matrix x, y - 1
      