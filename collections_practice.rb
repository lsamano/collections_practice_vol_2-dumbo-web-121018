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
  array.each do |hash|
    hash.each do |key, value|
      if hash[item]
        hash[item] += 1
      else
        hash[item] = 0
      end
    end
  end
=begin
  new_array = array.each_with_object(Hash.new(0)) do |item, hash|
    hash[item[:name]] += 1
  end
  new_array.map { |name, count| { name: name, count: count } }
=end
end
