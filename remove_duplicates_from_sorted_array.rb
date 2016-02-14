def remove_duplicates(nums)
  return 0 if nums.empty?

  q = 1

  (1..(nums.size - 1)).each do |p|
    unless nums[p] == nums[p - 1]
      nums[q] = nums[p]
      q += 1
    end
  end

  q
end
