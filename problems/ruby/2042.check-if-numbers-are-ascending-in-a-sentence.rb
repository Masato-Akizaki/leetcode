#
# @lc app=leetcode id=2042 lang=ruby
#
# [2042] Check if Numbers Are Ascending in a Sentence
#

# @lc code=start
# @param {String} s
# @return {Boolean}
def are_numbers_ascending(s)
    nums = s.split(" ").select{|x| x =~ /[0-9]/}.map(&:to_i)
    return false if nums != nums.uniq
    nums == nums.sort
end
# @lc code=end