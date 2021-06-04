#
# @lc app=leetcode id=14 lang=ruby
#
# [14] Longest Common Prefix
#

# @lc code=start
# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    strs = strs.sort_by {|str| str.length }
    prefix = strs[0]
    i = 0
    while i < strs.length - 1
      i += 1
      next if strs[i].start_with?(prefix)
      strs[i].chars.each_with_index do |char, j|
        break prefix.slice!(j..-1) if prefix[j] != char
      end
    end
    prefix
end
# @lc code=end

