class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def has_path_sum(root, sum)
  return false unless root
  return true if root.left.nil? && root.right.nil? && root.val = sum

  has_path_sum(root.left, sum - root.val) ||
    has_path_sum(root.right, sum - root.val)
end
