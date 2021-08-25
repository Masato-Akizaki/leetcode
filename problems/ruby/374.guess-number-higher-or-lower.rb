#
# @lc app=leetcode id=374 lang=ruby
#
# [374] Guess Number Higher or Lower
#

# @lc code=start
# The guess API is already defined for you.
# @param num, your guess
# @return -1 if my number is lower, 1 if my number is higher, otherwise return 0
# def guess(num)

def guessNumber(n)
  return n if guess(n) == 0
  min = 1
  max = n
  mid = n / 2
  until guess(mid) == 0
    if guess(mid) == 1
      min = mid
      mid = min + (max - min) / 2
    elsif guess(mid) == -1
      max = mid
      mid = max - (max - min) / 2 - 1
    end
  end
  mid
end
# @lc code=end
