#
# @lc app=leetcode id=59 lang=ruby
#
# [59] Spiral Matrix II
#

# @lc code=start
# @param {Integer} n
# @return {Integer[][]}
def generate_matrix(n)
    matrix = Array.new(n){Array.new(n){0}}
    num = 1
    r = 0
    while matrix.flatten.any?{|x| x == 0}
      [*0...4].each do |t|
        [*0...n].each do |i|
          if matrix[r][i] == 0
            matrix[r][i] = num 
            num += 1
          end
          matrix
        end
        matrix = matrix.transpose.reverse
      end
      r += 1
    end
    matrix
end
# @lc code=end

