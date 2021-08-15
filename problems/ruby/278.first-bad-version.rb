#
# @lc app=leetcode id=278 lang=ruby
#
# [278] First Bad Version
#

# @lc code=start
# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
  min, max = 1, n
  middle = (min + max) / 2

  until is_bad_version(middle) && !is_bad_version(middle-1)
    if is_bad_version(middle)
      max = middle
      middle = (min + max) / 2
    else
      min = middle + 1
      middle = (min + max) / 2
    end
  end
  middle
end
# @lc code=end

