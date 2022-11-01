#
# @lc app=leetcode id=2432 lang=ruby
#
# [2432] The Employee That Worked on the Longest Task
#

# @lc code=start
# @param {Integer} n
# @param {Integer[][]} logs
# @return {Integer}
def hardest_worker(n, logs)
    t = 0
    times = []
    logs.each do |log|
        times << [log[0], log[1] - t]
        t = log[1]
    end
    times.sort_by{|x| x[0]}.max_by{|x| x[1]}[0]
end
# @lc code=end