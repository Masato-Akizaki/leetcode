#
# @lc app=leetcode id=1450 lang=ruby
#
# [1450] Number of Students Doing Homework at a Given Time
#

# @lc code=start
# @param {Integer[]} start_time
# @param {Integer[]} end_time
# @param {Integer} query_time
# @return {Integer}
def busy_student(start_time, end_time, query_time)
    count = 0
    for i in 0...start_time.length do
        count += 1 if start_time[i] <= query_time && query_time <= end_time[i]
    end
    count
end
# @lc code=end