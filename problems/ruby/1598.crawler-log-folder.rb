#
# @lc app=leetcode id=1598 lang=ruby
#
# [1598] Crawler Log Folder
#

# @lc code=start
# @param {String[]} logs
# @return {Integer}
def min_operations(logs)
    hierarchy = 0
    logs.each do |operate|
        if operate == "./"
            next
        elsif operate == "../"
            hierarchy -= 1 if hierarchy > 0
        else
            hierarchy += 1
        end
    end 
    hierarchy
end
# @lc code=end