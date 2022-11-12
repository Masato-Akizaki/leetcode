#
# @lc app=leetcode id=6 lang=ruby
#
# [6] Zigzag Conversion
#

# @lc code=start
# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
  return s if num_rows == 1
  i = 0
  c = 0
  matrix = []
  while i < s.length do
    if c % (num_rows - 1) == 0
      if s[i..i+num_rows-1].length == num_rows
        matrix << s[i..i+num_rows-1].chars
      else
        matrix << s[i..i+num_rows-1].chars + [nil] * (num_rows - s[i..i+num_rows-1].length)
      end
      i += num_rows
      c += 1
    else
      matrix << [nil] * (num_rows - c % (num_rows - 1) - 1) + [s[i]] + [nil] * (c % (num_rows - 1))
      i += 1
      c += 1
    end
  end
  (matrix.transpose.flatten - [nil]).join
end
# @lc code=end

