#
# @lc app=leetcode id=1678 lang=ruby
#
# [1678] Goal Parser Interpretation
#

# @lc code=start
# @param {String} command
# @return {String}
def interpret(command)
    command.gsub("()", "o").gsub("(al)", "al")
end
# @lc code=end