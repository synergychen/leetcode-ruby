def is_anagram(s, t)
  alphabets = Array.new(26, 0)

  s.each_char { |c| alphabets[c.ord - "a".ord] += 1 }
  t.each_char { |c| alphabets[c.ord - "a".ord] -= 1 }

  alphabets.each do |e|
    return false unless e == 0
  end

  true
end
