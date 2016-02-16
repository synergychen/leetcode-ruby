def bubble_sort(arr)
  q = arr.size - 2

  until q < 1
    (0..q).each do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      end
    end

    q -= 1
  end

  arr
end
