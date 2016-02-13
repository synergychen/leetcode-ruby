class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def is_balanced(root)
  return true unless root

  is_balanced(root.left) &&
    is_balanced(root.right) &&
    (max_depth(root.left) - max_depth(root.right)).abs <= 1
end

def max_depth(root)
  return 0 unless root

  1 + [max_depth(root.left), max_depth(root.right)].max
end
