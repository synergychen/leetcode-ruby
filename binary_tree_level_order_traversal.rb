class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def level_order(root)
  return [] unless root

  result, queue = [], [root]

  until queue.empty?
    result << queue.map(&:val)
    queue = queue.flat_map { |node| [node.left, node.right] }.compact
  end

  result
end
