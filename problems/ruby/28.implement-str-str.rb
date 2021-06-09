#
# @lc app=leetcode id=28 lang=ruby
#
# [28] Implement strStr()
#

# @lc code=start
# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  return 0 if needle.empty?
  i = 0
  while i < haystack.length - needle.length + 1 do
    if haystack[i, needle.length] == needle
      return i
    end
    i += 1
  end
  -1
end
# @lc code=end

