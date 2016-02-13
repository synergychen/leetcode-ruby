class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def max_depth(root)
  return 0 unless root

  1 + [max_depth(root.left), max_depth(root.right)].max
end
