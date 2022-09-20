#
# @lc app=leetcode id=2224 lang=ruby
#
# [2224] Minimum Number of Operations to Convert Time
#

# @lc code=start
# @param {String} current
# @param {String} correct
# @return {Integer}
def convert_time(current, correct)
  count = 0
  if correct[3..4].to_i >= current[3..4].to_i
      count += correct[0..1].to_i - current[0..1].to_i
      count += (correct[3..4].to_i - current[3..4].to_i) / 15
      count += (correct[3..4].to_i - current[3..4].to_i) % 15 / 5
      count += (correct[3..4].to_i - current[3..4].to_i) % 15 % 5
  else
      count += correct[0..1].to_i - current[0..1].to_i - 1
      count += (correct[3..4].to_i + 60 - current[3..4].to_i) / 15
      count += (correct[3..4].to_i + 60 - current[3..4].to_i) % 15 / 5
      count += (correct[3..4].to_i + 60 - current[3..4].to_i) % 15 % 5
  end
  count
end
# @lc code=end