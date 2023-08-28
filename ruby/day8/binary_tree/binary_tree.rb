require_relative 'node.rb'

class Binary_tree
  attr_accessor :root
  def initialize(root)
    @root = root
  end

  def find(root, value)
    if root.value == value
      return true
    elsif root.value < value
      find(root.right, value)
    else
      find(root.left, value)
    end
  end
end