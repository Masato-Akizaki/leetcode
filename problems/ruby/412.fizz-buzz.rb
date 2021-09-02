#
# @lc app=leetcode id=412 lang=ruby
#
# [412] Fizz Buzz
#

# @lc code=start
# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
  res = []
  hash = { 3 => "Fizz", 5 => "Buzz"}
  [*1..n].each do |n|
    element = ""
    hash.keys.each do |k|
      if n % k == 0
        element += hash[k]
      end
    end
    element = n.to_s if element.empty?
    res << element
  end
  res
end
# @lc code=end

