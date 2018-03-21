def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, times = 2)
  ([string] * times).join(' ')
end

def start_of_word(string, number_of_characters)
  string[0...number_of_characters]
end

def first_word(string)
  string.split(' ').first
end

LITTLE_WORDS = ['and', 'over', 'the']
def titleize(string)
  words = string.split(' ').map do |word|
    LITTLE_WORDS.include?(word) ? word : word.capitalize
  end
  words.first.capitalize!
  words.join(' ')
end
