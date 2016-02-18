def first_bad_version(n)
  low, high = 1, n

  while low < high
    mid = (low + high) / 2

    if is_bad_version(mid)
      high = mid
    else
      low = mid + 1
    end
  end

  low
end
