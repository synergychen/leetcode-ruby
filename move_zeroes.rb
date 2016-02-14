def move_zeroes(nums)
  return nil if nums.size <= 1

  q = 0

  (1..(nums.size - 1)).each do |p|
    if nums[q] == 0 && nums[p] != 0
      nums[q], nums[p] = nums[p], nums[q]
    end

    unless nums[q] == 0 && nums[p] == 0
      q += 1
    end
  end

  nil
end
