#
# @lc app=leetcode id=1592 lang=ruby
#
# [1592] Rearrange Spaces Between Words
#

# @lc code=start
# @param {String} text
# @return {String}
def reorder_spaces(text)
    total_spaces = text.count(" ")
    arr = text.split(" ")
    return arr.join + (" " * total_spaces) if arr.length == 1
    between_spaces = total_spaces / (arr.length - 1)
    extra_spaces = total_spaces % (arr.length - 1)
    arr.join(" " * between_spaces) + (" " * extra_spaces)
end
# @lc code=end