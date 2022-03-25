#
# @lc app=leetcode id=1417 lang=ruby
#
# [1417] Reformat The String
#

# @lc code=start
# @param {String} s
# @return {String}
def reformat(s)
    str = s.gsub(/[0-9]/, "").chars
    int = s.gsub(/[a-z]/, "").chars
    return ""                                          if (str.length - int.length).abs > 1
    return [str, int].transpose.flatten.join           if str.length == int.length
    return [int, str.push(nil)].transpose.flatten.join if str.length - int.length == -1
    return [str, int.push(nil)].transpose.flatten.join if str.length - int.length == 1
end
# @lc code=end