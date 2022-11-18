#
# @lc app=leetcode id=17 lang=ruby
#
# [17] Letter Combinations of a Phone Number
#

# @lc code=start
# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
  return [] if digits.empty?
  results = []
  @hash = {}
  @hash["2"] = "abc"
  @hash["3"] = "def"
  @hash["4"] = "ghi"
  @hash["5"] = "jkl"
  @hash["6"] = "mno"
  @hash["7"] = "pqrs"
  @hash["8"] = "tuv"
  @hash["9"] = "wxyz"
  
  backtrack(results, "", digits)
  results
end

def backtrack(results, curr, digits)
  if curr.length == digits.length
    results.push(curr)
  else
    digit = digits[curr.length]
    letters = @hash[digit]
      
    0.upto(letters.length-1) do |i|
      backtrack(results, curr+letters[i], digits)
    end
  end 
end
# @lc code=end

