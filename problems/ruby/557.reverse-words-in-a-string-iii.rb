#
# @lc app=leetcode id=557 lang=ruby
#
# [557] Reverse Words in a String III
#

# @lc code=start
# @param {String} s
# @return {String}
def reverse_words(s)
  s.split(' ').map {|x| x.reverse}.join(' ')
end
# @lc code=end

