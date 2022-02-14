#
# @lc app=leetcode id=1185 lang=ruby
#
# [1185] Day of the Week
#

# @lc code=start
# @param {Integer} day
# @param {Integer} month
# @param {Integer} year
# @return {String}
require "date"
WDAY = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
def day_of_the_week(day, month, year)
    date ="#{year}-#{month}-#{day}"
    WDAY[Date.strptime(date, '%Y-%m-%d').wday]
end

# @lc code=end