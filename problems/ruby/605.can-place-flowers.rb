#
# @lc app=leetcode id=605 lang=ruby
#
# [605] Can Place Flowers
#

# @lc code=start
# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)
  count = 0
  (0...flowerbed.length).each do |i|
      if i == 0 && flowerbed[i] == 0 && flowerbed[i+1] == 0
        flowerbed[i] = 1
        count += 1
      elsif flowerbed[i+1].nil? && flowerbed[i] == 0 && flowerbed[i-1] == 0
        flowerbed[i]=1
        count += 1
      elsif flowerbed[i-1] == 0 && flowerbed[i] == 0 && flowerbed[i+1] == 0
        flowerbed[i] = 1
        count += 1
      end
  end
  return n <= count
end
# @lc code=end

