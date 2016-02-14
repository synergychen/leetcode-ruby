def remove_element(nums, val)
  q = 0

  nums.each_with_index do |num, p|
    unless num == val
      nums[q] = num
      q += 1
    end
  end

  q
end
