#
# @lc app=leetcode id=661 lang=ruby
#
# [661] Image Smoother
#

# @lc code=start
# @param {Integer[][]} img
# @return {Integer[][]}
def image_smoother(img)
  m = img.length
  n = img[0].length
  res = []
  map = [[-1,-1], [-1,0], [-1,1], [0,-1], [0,0], [0,1], [1,-1], [1,0], [1,1]]
  img.each_with_index do |row, row_i|
    res_row = []
    row.each_with_index do |p, col_i|
      sum = 0
      count = 0
      map.each{|(i, j)|
        if (row_i+i).between?(0, m-1) && (col_i+j).between?(0, n-1)
          count += 1
          sum += img[row_i+i][col_i+j]
        end
      }
      res_row << (sum / count)
    end
    res << res_row
  end
  res
end
# @lc code=end

