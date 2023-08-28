require_relative 'node'

class Binary_tree
  attr_accessor :root

  def initialize(root)
    @root = root
  end

  def find(root, value)
    return false if root.value != value && root.leaf?

    if root.value == value
      true
    elsif root.value < value
      find(root.right, value)
    else
      find(root.left, value)
    end
  end
end
