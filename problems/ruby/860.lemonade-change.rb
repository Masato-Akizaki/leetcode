#
# @lc app=leetcode id=860 lang=ruby
#
# [860] Lemonade Change
#

# @lc code=start
# @param {Integer[]} bills
# @return {Boolean}
def lemonade_change(bills)
  changes = {5 => 0, 10 => 0, 20 => 0}
  bills.each do |bill|
    if bill == 5
      changes[5] += 1
    elsif bill == 10
      return false if changes[5] == 0
      changes[5] -= 1
      changes[10] += 1
    else
      return false if changes[5] == 0 
      return false if changes[5] < 3 && changes[10] == 0
      if changes[10] > 0
        changes[5] -= 1 
        changes[10] -= 1
      elsif changes[10] == 0
       changes[5] -= 3
      end
      changes[20] += 1
    end
  end
  return true
end
# @lc code=end

