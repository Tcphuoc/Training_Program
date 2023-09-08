require_relative 'node'
require_relative 'binary_tree'

def create_binary_tree
  node1 = Node.new(nil, nil, 1)
  node2 = Node.new(nil, nil, 2)
  node3 = Node.new(nil, nil, 3)
  root = Node.new(nil, nil, 4)
  node5 = Node.new(nil, nil, 5)
  node6 = Node.new(nil, nil, 6)
  node7 = Node.new(nil, nil, 7)

  root.left = node2
  root.right = node6
  node2.left = node1
  node2.right = node3
  node6.left = node5
  node6.right = node7

  Binary_tree.new(root)
end

tree = create_binary_tree
value = 10
def find_node(value, tree)
  if tree.find(tree.root, value)
    puts "Giá trị #{value} có tồn tại trong cây nhị phân"
  else
    puts "Giá trị #{value} không tồn tại trong cây nhị phân"
  end
end

find_node(value, tree)
