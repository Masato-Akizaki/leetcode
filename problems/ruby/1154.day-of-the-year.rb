#
# @lc app=leetcode id=1154 lang=ruby
#
# [1154] Day of the Year
#

# @lc code=start
# @param {String} date
# @return {Integer}
DAYS = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
def day_of_year(date)
  year = date[0..3].to_i
  month = date[5..6].to_i
  day = date[8..9].to_i
  return day if month == 1
  return DAYS[0..month-2].sum + day if month <= 2
  return DAYS[0..month-2].sum + day if year % 4 != 0
  return DAYS[0..month-2].sum + day if year % 100 == 0 && year % 400 != 0
  return DAYS[0..month-2].sum + day + 1
end
# @lc code=end

