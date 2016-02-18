# nums is sorted array
# return [-1, -1] if no match found
def search_range(nums, target)
  result = [-1, -1]
  low = 0
  high = nums.size - 1

  while low < high
    mid = (low + high) / 2

    if nums[mid] < target
      low = mid + 1
    else
      high = mid
    end
  end

  return result if nums[low] != target

  result[0] = low

  high = nums.size - 1

  while low < high
    mid = (low + high) / 2 + 1

    if nums[mid] > target
      high = mid - 1
    else
      low = mid
    end
  end

  result[1] = high

  result
end
