#
# @lc app=leetcode id=937 lang=ruby
#
# [937] Reorder Data in Log Files
#

# @lc code=start
# @param {String[]} logs
# @return {String[]}
def reorder_log_files(logs)
  logs = logs.map{|log| log.split(" ", 2)}
  let = logs.select{|log| log[1] =~ /[a-z]/ }.sort_by{|x| [x[1], x[0]] }.map{|log| log.join(" ")}
  dig = logs.select{|log| log[1] =~ /[1-9]/ }.map{|log| log.join(" ")}
  let + dig
end
# @lc code=end

