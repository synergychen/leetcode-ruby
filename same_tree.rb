class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def is_same_tree(p, q)
  return true if p.nil? && q.nil?
  return false if p.nil? || q.nil?

  p.val == q.val &&
    is_same_tree(p.left, q.left) &&
    is_same_tree(p.right, q.right)
end
