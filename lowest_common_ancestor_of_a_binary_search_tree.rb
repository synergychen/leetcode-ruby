class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def lowest_common_ancestor(root, p, q)
  return root if (p.val - root.val) * (q.val - root.val) <= 0

  root_sub = p.val < root.val ? root.left : root.right

  lowest_common_ancestor(root_sub, p, q)
end
