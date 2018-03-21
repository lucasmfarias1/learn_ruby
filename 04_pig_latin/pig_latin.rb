def translate(string)
  words = string.split(' ').map do |word|
    if word.match?(/\A[aeiou]/)
      word << 'ay'
    else
      v = first_vowel(word)
      word[v..-1] << word[0...v] << 'ay'
    end
  end.join(' ')
end

def first_vowel(word)
  return 2 if word.match?(/^qu/)
  return 3 if word.match?(/^[^aeiou]qu/)
  return word.index(/[aeiou]/)
end
