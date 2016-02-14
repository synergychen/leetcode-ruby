# You may assume that nums1 has enough space (size that is greater or equal to
#   m + n) to hold additional elements from nums2. The number of elements
#   initialized in nums1 and nums2 are m and n respectively.

def merge(nums1, m, nums2, n)
  p = m - 1
  q = n - 1
  i = 0

  until p < 0 || q < 0
    if nums1[p] > nums2[q]
      nums1[m + n - 1 - i] = nums1[p]
      p -= 1
    else
      nums1[m + n - 1 - i] = nums2[q]
      q -= 1
    end

    i += 1
  end

  if q >= 0
    nums1[0..q] = nums2[0..q]
  end

  nil
end
