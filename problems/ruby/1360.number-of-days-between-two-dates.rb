#
# @lc app=leetcode id=1360 lang=ruby
#
# [1360] Number of Days Between Two Dates
#

# @lc code=start
# @param {String} date1
# @param {String} date2
# @return {Integer}
require "date"
def days_between_dates(date1, date2)
    date = [date1, date2].sort
    (Date.parse(date[1]) - Date.parse(date[0])).to_i
end
# @lc code=end