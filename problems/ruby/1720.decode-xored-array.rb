#
# @lc app=leetcode id=1720 lang=ruby
#
# [1720] Decode XORed Array
#

# @lc code=start
# @param {Integer[]} encoded
# @param {Integer} first
# @return {Integer[]}
def decode(encoded, first)
    arr = [first]
    encoded.each_with_index do |n, i|
        arr.push(arr[i] ^ n)
    end
    arr
end
# @lc code=end