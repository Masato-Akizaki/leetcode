#
# @lc app=leetcode id=2446 lang=ruby
#
# [2446] Determine if Two Events Have Conflict
#

# @lc code=start
# @param {String[]} event1
# @param {String[]} event2
# @return {Boolean}
def have_conflict(event1, event2)
    events = [event1, event2].map{|x| x.map{|y| y.split(":").map(&:to_i)}.flatten}.sort_by{|x| [x[0], x[1]]}
    events[0][2] > events[1][0] || (events[0][2] == events[1][0] && events[0][3] >= events[1][1])
end
# @lc code=end