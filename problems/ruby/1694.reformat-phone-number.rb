#
# @lc app=leetcode id=1694 lang=ruby
#
# [1694] Reformat Phone Number
#

# @lc code=start
# @param {String} number
# @return {String}
def reformat_number(number)
    phone_number = number.gsub(/ |-/, "").scan(/.{1,3}/).join("-")
    phone_number[-3], phone_number[-2] = phone_number[-2], phone_number[-3] if phone_number[-2] == "-"
    phone_number
end
# @lc code=end