def quick_sort(arr)
  return arr if arr.size <= 1

  pivot_index = rand(arr.size)
  pivot = arr[pivot_index]
  arr.delete_at(pivot_index)

  left, right = [], []

  arr.each do |e|
    if e < pivot
      left << e
    else
      right << e
    end
  end

  quick_sort(left) + [pivot] + quick_sort(right)
end
