#
# @lc app=leetcode id=1646 lang=ruby
#
# [1646] Get Maximum in Generated Array
#

# @lc code=start
# @param {Integer} n
# @return {Integer}
def get_maximum_generated(n)
    return 0 if n == 0
    return 1 if n == 1
    arr = [0, 1]
    [*2..n].each do |i|
        arr[i] = arr[i/2] if i.even?
        arr[i] = arr[i/2] + arr[i/2+1] if i.odd?
    end
    arr.max
end
# @lc code=end