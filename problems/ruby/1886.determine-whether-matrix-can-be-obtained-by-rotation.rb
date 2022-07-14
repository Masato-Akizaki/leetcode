#
# @lc app=leetcode id=1886 lang=ruby
#
# [1886] Determine Whether Matrix Can Be Obtained By Rotation
#

# @lc code=start
# @param {Integer[][]} mat
# @param {Integer[][]} target
# @return {Boolean}
def find_rotation(mat, target)
    4.times do |num|
        mat = mat.map(&:reverse).transpose
        return true if mat == target
    end
    false
end
# @lc code=end