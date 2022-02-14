#
# @lc app=leetcode id=1189 lang=ruby
#
# [1189] Maximum Number of Balloons
#

# @lc code=start
# @param {String} text
# @return {Integer}
def max_number_of_balloons(text)
  balloon_hash = "balloon".chars.tally
  text_hash = text.chars.tally
  arr = []
  balloon_hash.each do |k,v|
    arr << text_hash[k].to_i / v
  end
  arr.min
end

# @lc code=end