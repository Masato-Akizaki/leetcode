#
# @lc app=leetcode id=1736 lang=ruby
#
# [1736] Latest Time by Replacing Hidden Digits
#

# @lc code=start
# @param {String} time
# @return {String}
def maximum_time(time)
    while time.index("?") do
        i = time.index("?")
        time[i] = "2" if i == 0
        time[i] = "1" if i == 0 && time[1].to_i > 3
        time[i] = "9" if i == 1 && time[0].to_i < 2
        time[i] = "3" if i == 1 && time[0].to_i == 2
        time[i] = "5" if i == 3
        time[i] = "9" if i == 4
    end
    time
end
# @lc code=end