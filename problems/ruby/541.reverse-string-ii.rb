#
# @lc app=leetcode id=541 lang=ruby
#
# [541] Reverse String II
#

# @lc code=start
# @param {String} s
# @param {Integer} k
# @return {String}
def reverse_str(s, k)
  arr = []
  s.scan(/.{1,#{2 * k}}/).each do |scan_s|
    scan_s[0..k-1] = scan_s[0..k-1].reverse
    arr << scan_s
  end
  arr.join
end
# @lc code=end

