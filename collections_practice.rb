def begins_with_r(array)
  array.each do |word|
    letters = word.chars
    if letters[0] != "r"
      return false
    end
  end
  true
end

def contain_a(array)
  a_words = []
  array.each do |word|
    letters = word.chars
    if letters.include? == "a"
      a_words << word
    end
  end
  a_words
end
