class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def binary_tree_paths(root)
  return [] unless root

  searchBT(root, "", [])
end

def searchBT(root, path, result)
  if root.left.nil? && root.right.nil?
    result << "#{path}#{root.val}"
  end

  if root.left
    result = searchBT(root.left, "#{path}#{root.val}->", result)
  end

  if root.right
    result = searchBT(root.right, "#{path}#{root.val}->", result)
  end

  result
end
