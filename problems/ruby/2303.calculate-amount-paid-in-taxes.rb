#
# @lc app=leetcode id=2303 lang=ruby
#
# [2303] Calculate Amount Paid in Taxes
#

# @lc code=start
# @param {Integer[][]} brackets
# @param {Integer} income
# @return {Float}
def calculate_tax(brackets, income)
    taxes = 0
    brackets.each_with_index do |b, i|
        if i == 0 && income >= b[0] 
            taxes += b[0].to_f * (b[1].to_f / 100)
        elsif i == 0 && income <= b[0]
            taxes += income.to_f * b[1].to_f / 100
            break
        elsif i >= 1 && income >= b[0] 
            taxes += (b[0] - brackets[i-1][0]).to_f * b[1].to_f / 100
        elsif i >= 1 && income <= b[0]
            taxes += (income - brackets[i-1][0]).to_f * b[1].to_f / 100
            break
        end
    end
    taxes
end
# @lc code=end