class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def is_symmetric(root)
  root.nil? || is_mirror(root.left, root.right)
end

def is_mirror(p, q)
  return true if p.nil? && q.nil?
  return false if p.nil? || q.nil?

  p.val == q.val &&
    is_mirror(p.left, q.right) &&
    is_mirror(p.right, q.left)
end
