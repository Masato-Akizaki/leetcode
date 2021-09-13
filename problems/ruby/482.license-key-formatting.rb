#
# @lc app=leetcode id=482 lang=ruby
#
# [482] License Key Formatting
#

# @lc code=start
# @param {String} s
# @param {Integer} k
# @return {String}
def license_key_formatting(s, k)
  s = s.upcase.delete('-')
  dash_num = (s.length / k)
  dash_index = s.length % k
  dash_num.times do
    if dash_index > 0
      s.insert(dash_index, '-')
      dash_index += k + 1
    else
      dash_index += k
    end
  end
  s
end
# @lc code=end

