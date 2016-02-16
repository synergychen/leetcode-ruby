def merge_sort(arr)
  return arr if arr.size <= 1

  mid = arr.size / 2
  left_arr = arr[0..mid - 1]
  right_arr = arr[mid..arr.size - 1]

  merge(merge_sort(left_arr), merge_sort(right_arr))
end

def merge(left, right)
  p, q = 0, 0

  result = []

  until p > left.size - 1 || q > right.size - 1
    if left[p] < right[q]
      result << left[p]
      p += 1
    else
      result << right[q]
      q += 1
    end
  end

  left[p..-1].each { |e| result << e }
  right[q..-1].each { |e| result << e }

  result
end
