#
# @lc app=leetcode id=551 lang=ruby
#
# [551] Student Attendance Record I
#

# @lc code=start
# @param {String} s
# @return {Boolean}
def check_record(s)
  return s.count('A') < 2 && !(s.include?('LLL'))
end
# @lc code=end

