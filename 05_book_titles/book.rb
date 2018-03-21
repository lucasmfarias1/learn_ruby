class Book
  attr_accessor :title
  LITTLE_WORDS = ['and', 'the', 'in', 'of', 'a', 'an']

  def title=(title)
    @title = title.split(' ').map do |word|
      LITTLE_WORDS.include?(word) ? word : word.capitalize
    end
    @title.first.capitalize!
    @title = @title.join(' ')
  end
end
