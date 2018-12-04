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
    if letters.any?{|letter| letter == "a"}
      a_words << word
    end
  end
  a_words
end

def first_wa(array)
  array.each do |word|
    if word.is_a?(String)
      letters = word.chars
      if letters[0] == "w" && letters[1] == "a"
        return word
      end
    end
  end
end

def remove_non_strings(array)
  array.keep_if{|element| element.is_a? String}
end

def count_elements(array)
  #Takes the array of hashes and creates a new hash of names as keys and the
  #count of their occurrence as the value.
  array.each_with_object(Hash.new(0)) do |each_hash, new_hash|
    new_hash[each_hash[:name]] += 1
  end
  #Takes the new hash and rewrites it as an array of two hashes, stating each
  #person's name and their count as separate elements.
  .map { |name, count| { name: name, count: count } }
end
