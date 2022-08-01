#
# @lc app=leetcode id=1971 lang=ruby
#
# [1971] Find if Path Exists in Graph
#

# @lc code=start
# @param {Integer} n
# @param {Integer[][]} edges
# @param {Integer} source
# @param {Integer} destination
# @return {Boolean}
def valid_path(n, edges, v_start, v_end)
    @graph = Array.new(n)
    @is_connected = false
    @n = n
  
    (0..n-1).each do |i|
        @graph[i] = []
    end
    edges.each do |edge|
        @graph[edge[0]] << edge[1]
        @graph[edge[1]] << edge[0]
    end

    return dfs(v_start, v_end, Set.new([]))
end

def dfs(v_start, v_end, visited)
    if v_start == v_end
        return true
    end
    if visited.include?(v_start)
        return false
    end
    visited << v_start
  
    @graph[v_start].each do |ele|
        if dfs(ele, v_end, visited)
            return true
        end
    end
    return false
end
# @lc code=end