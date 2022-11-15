#
# @lc app=leetcode id=12 lang=ruby
#
# [12] Integer to Roman
#

# @lc code=start
# @param {Integer} num
# @return {String}
def int_to_roman(num)
  roman = ""
  symbols = {I: 1, V: 5, X: 10, L: 50, C: 100, D: 500, M: 1000}
  symbols.keys.reverse.each do |k|
    if num >= symbols[k] && num.digits[-1] == 9
      roman += symbols.keys[symbols.keys.index(k)-1].to_s + symbols.keys[symbols.keys.index(k)+1].to_s
      num -= (symbols[k] * 1.8).to_i
    elsif num >= symbols[k] && num.digits[-1] == 4
      roman += k.to_s + symbols.keys[symbols.keys.index(k)+1].to_s
      num -= symbols[k] * (num / symbols[k])
    else
      roman += k.to_s * (num / symbols[k])
      num -= symbols[k] * (num / symbols[k])
    end
  end
  roman
end


# @lc code=end

