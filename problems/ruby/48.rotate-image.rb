#
# @lc app=leetcode id=48 lang=ruby
#
# [48] Rotate Image
#

# @lc code=start
# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def rotate(matrix)
  n = matrix.length
  matrix = transpose(matrix, n)
  reverse_columns(matrix, n)
end

def transpose(matrix, n)
  (0...n).each { |i|
    (i...n).each { |j|
      matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j] 
    }
  }
  matrix
end

def reverse_columns(matrix, n)
  (0...n).each { |i|
    (0...n/2).each { |j|
      matrix[i][j],matrix[i][n-j-1] = matrix[i][n-j-1],matrix[i][j]
    }
  }
  matrix
end
# @lc code=end

