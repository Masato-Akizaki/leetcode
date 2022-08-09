#
# @lc app=leetcode id=2011 lang=ruby
#
# [2011] Final Value of Variable After Performing Operations
#

# @lc code=start
# @param {String[]} operations
# @return {Integer}
def final_value_after_operations(operations)
    operations.map{|x| x.include?("+") ? 1 : -1}.sum
end
# @lc code=end