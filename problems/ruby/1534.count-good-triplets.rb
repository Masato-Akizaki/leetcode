#
# @lc app=leetcode id=1534 lang=ruby
#
# [1534] Count Good Triplets
#

# @lc code=start
# @param {Integer[]} arr
# @param {Integer} a
# @param {Integer} b
# @param {Integer} c
# @return {Integer}
def count_good_triplets(arr, a, b, c)
    count = 0
    for i in 0...arr.length-2
        for j in i+1...arr.length-1
            for k in j+1...arr.length
                count += 1   if (arr[i] - arr[j]).abs <= a and (arr[j] - arr[k]).abs <= b and (arr[i] - arr[k]).abs <= c
            end
        end
    end
    count
end
# @lc code=end