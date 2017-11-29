# input
# 4 2
# 1 2
# 3 2
# 1 4

# it means that there are 4 vertices and 2 edges
# edges between 1-2, 3-2
# is there a path from 1 - 4 ?
# answer should be 0 (no)

$vertices_count, $edges_count = gets.chomp.split.map(&:to_i)
$vertices_matrix = []
$visited = []

(1..$vertices_count).each do |i|
  $vertices_matrix[i] = []
  $visited[i] = false
end

(0...$edges_count).each do
  u,v = gets.chomp.split.map(&:to_i)
  $vertices_matrix[u] << v
  $vertices_matrix[v] << u
end

def explore(node)
  return if $visited[node]
  $visited[node] = true
  $found = true if node == $dest

  $vertices_matrix[node].each do |n|
    explore(n)
  end
end

$origin, $dest = gets.chomp.split.map(&:to_i)

$found = false
$visited[$origin] = true

$vertices_matrix[$origin].each do |n|
  explore(n)
end

if $found
  puts 1
else
  puts 0
end
