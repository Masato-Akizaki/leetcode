#
# @lc app=leetcode id=1588 lang=ruby
#
# [1588] Sum of All Odd Length Subarrays
#

# @lc code=start
# @param {Integer[]} arr
# @return {Integer}
def sum_odd_length_subarrays(arr)
    sum = 0
    [*1..(arr.length)].select(&:odd?).each do |odd|
        arr.each_cons(odd) do |s|
            sum += s.sum
        end
    end
    sum
end
# @lc code=end