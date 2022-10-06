#
# @lc app=leetcode id=2299 lang=ruby
#
# [2299] Strong Password Checker II
#

# @lc code=start
# @param {String} password
# @return {Boolean}
def strong_password_checker_ii(password)
    password.size >= 8 \
    && password.match?(/[a-z]/) \
    && password.match?(/[A-Z]/) \
    && password.match?(/[0-9]/) \
    && password.match?(/!|@|#|\$|\%|\^|\&|\*|\(|\)|\-|\+/) \
    && password !~ /(\W|\w)\1{1,}/
end
# @lc code=end