#
# @lc app=leetcode id=2073 lang=ruby
#
# [2073] Time Needed to Buy Tickets
#

# @lc code=start
# @param {Integer[]} tickets
# @param {Integer} k
# @return {Integer}
def time_required_to_buy(tickets, k)
    count = 0
    while tickets.any?{|x| x > 0} do
        tickets.map!{|x| x - 1}
        return count + tickets[0..k].count{|x| x >= 0} if tickets[k] == 0
        count += tickets.count{|x| x >= 0}
    end
end
# @lc code=end