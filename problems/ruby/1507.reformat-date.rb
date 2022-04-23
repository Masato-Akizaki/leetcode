#
# @lc app=leetcode id=1507 lang=ruby
#
# [1507] Reformat Date
#

# @lc code=start
# @param {String} date
# @return {String}
MONTH = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
def reformat_date(date)
    day = format("%02d", date.split(" ")[0].gsub(/[^\d]/, ""))
    month = format("%02d", MONTH.index(date.split(" ")[1]) + 1)
    year = date.split(" ")[2]
    "#{year}-#{month}-#{day}"
end
# @lc code=end