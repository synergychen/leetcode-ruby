class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def invert_tree(root)
  return root unless root

  root.left, root.right = invert_tree(root.right), invert_tree(root.left)

  root
end
