#
# @lc app=leetcode id=874 lang=ruby
#
# [874] Walking Robot Simulation
#

# @lc code=start
# @param {Integer[]} commands
# @param {Integer[][]} obstacles
# @return {Integer}
def robot_sim(commands, obstacles)
  obstacles = obstacles.to_set
  x, y = 0, 0
  dx, dy = 0, 1
  maxdst = 0
  commands.each do |cmd|
    case cmd
    when -1
      dx, dy = dy, -dx
    when -2
      dx, dy = -dy, dx
    else
      cmd.times do
        break if obstacles.include?([x + dx, y + dy])
        x += dx
        y += dy
        d = x*x + y*y
        maxdst = d if maxdst < d
      end
    end
  end
  maxdst
end
# @lc code=end

