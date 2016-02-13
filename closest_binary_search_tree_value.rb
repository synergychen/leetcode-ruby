# BST: left_value < root_value < right_value
class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def closest_value(root, target)
  return nil unless root

  root_val = root.val

  sub_root = root_val < target ? root.left : root.right

  return root_val unless sub_root

  sub_root_val = closest_value(sub_root, target)

  [root_val, sub_root_val].min_by { |v| (v - target).abs }
end
