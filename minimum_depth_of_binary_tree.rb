class TreeNode
  attr_reader :val, :left, :right

  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def min_depth(root)
  return 0 unless root

  min_left = min_depth(root.left)
  min_right = min_depth(root.right)

  min_left == 0 || min_right == 0 ? 1 + min_left + min_right : 1 + [min_left, min_right].min
end
