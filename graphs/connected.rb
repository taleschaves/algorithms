# input
# 4 2
# 1 2
# 3 2
# 1 4
# output
# n (number of connected components)

$vertices_count, $edges_count = gets.chomp.split.map(&:to_i)
$vertices_matrix = []
$visited = []

# creating the data structure (adjancency list)
(1..$vertices_count).each do |i|
  $vertices_matrix[i] = []
  $visited[i] = false
end

# reading edges (nondirected graph)
(0...$edges_count).each do
  u,v = gets.chomp.split.map(&:to_i)
  $vertices_matrix[u] << v
  $vertices_matrix[v] << u
end

def explore(node)
  return if $visited[node]
  $visited[node] = true

  $vertices_matrix[node].each do |n|
    explore(n)
  end
end

cc = 0
# exploring the graph to find connected components
(1..$vertices_count).each do |i|
  if $visited[i] == false
    cc += 1
    $visited[i] = true

    $vertices_matrix[i].each do |n|
      explore(n)
    end
  end
end

puts cc
