#
# @lc app=leetcode id=1299 lang=ruby
#
# [1299] Replace Elements with Greatest Element on Right Side
#

# @lc code=start
# @param {Integer[]} arr
# @return {Integer[]}
def replace_elements(arr)
    arr.each_with_index do |e, i|
        i == arr.length-1 ?  arr[i] = -1 :  arr[i] = arr[i+1..-1].max
    end
end
# @lc code=end