def search_insert(nums, target)
  low, high = 0, nums.size - 1

  while low <= high
    mid = (low + high) / 2

    if nums[mid] < target
      low = mid + 1
    elsif nums[mid] > target
      high = mid - 1
    else
      return mid
    end
  end

  low
end
