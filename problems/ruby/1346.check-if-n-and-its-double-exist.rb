#
# @lc app=leetcode id=1346 lang=ruby
#
# [1346] Check If N and Its Double Exist
#

# @lc code=start
# @param {Integer[]} arr
# @return {Boolean}
def check_if_exist(arr)
    arr.each do |x|
        next if x == 0 && arr.count(0) < 2
        return true if arr.include?(x * 2)
    end
    return false
end
# @lc code=end