#
# @lc app=leetcode id=917 lang=ruby
#
# [917] Reverse Only Letters
#

# @lc code=start
# @param {String} s
# @return {String}
def reverse_only_letters(s)
  s_index = []
  s_arr = []
  s.chars.each_with_index do |x, i|
    if x =~ /[a-zA-Z]/
      s_index << i
      s_arr << x
    end
  end

  s_arr.reverse.each_with_index do |x,i|
    s[s_index[i]] = x
  end
  s
end
# @lc code=end

