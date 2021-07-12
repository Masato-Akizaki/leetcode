#
# @lc app=leetcode id=171 lang=ruby
#
# [171] Excel Sheet Column Number
#

# @lc code=start
# @param {String} column_title
# @return {Integer}
ALPHABET = [*'A'..'Z'].freeze
def title_to_number(column_title)
  res = 0
  column_title = column_title.split("").reverse
  column_title.each_with_index do |c, i|
    res += (26 ** i) * (ALPHABET.index(c) + 1)
  end
  res
end
# @lc code=end

