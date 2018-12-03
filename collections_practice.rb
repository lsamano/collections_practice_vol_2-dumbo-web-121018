def begins_with_r(array)
  array.each do |word|
    letters = word.chars
    if letters[0] != "r"
      return false
    end
    true
  end
end
