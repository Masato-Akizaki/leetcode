#
# @lc app=leetcode id=942 lang=ruby
#
# [942] DI String Match
#

# @lc code=start
# @param {String} s
# @return {Integer[]}
def di_string_match(s)
  max = s.length
  min = 0
  i = 0
  arr = []
    
  until max < min
    if s[i] == "I"
      arr[i] = min
      min += 1
    else
      arr[i] = max
      max -= 1
    end
      i += 1
  end
  return arr
end
# @lc code=end

