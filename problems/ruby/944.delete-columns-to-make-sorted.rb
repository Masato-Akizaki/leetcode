#
# @lc app=leetcode id=944 lang=ruby
#
# [944] Delete Columns to Make Sorted
#

# @lc code=start
# @param {String[]} strs
# @return {Integer}
def min_deletion_size(strs)
  delete_num = 0
  strs.map(&:chars).transpose.each do |str|
    delete_num += 1 if str != str.sort
  end
  delete_num
end
# @lc code=end

