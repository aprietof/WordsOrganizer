class WordsOrganizer

  attr_accessor :words

  # It should initialize object with an empty words array attribute
  def initialize(words = Array.new)
    @words = words
  end

  # It should calculate WordsOrganizer words array's length
  # It should return an integer
  def len
    length = 0
    @words.each do |word|
      length += 1
    end
    length
  end

  # It should add a new element to WordsOrganizer words array
  # It should add a new element to last index of WordsOrganizer words array
  # It should return modified WordsOrganizer words array
  def add(item)
    @words[self.len] = item
    @words
  end


end
