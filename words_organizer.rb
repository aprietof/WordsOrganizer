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

  # It should check if WordsOrganizer words array is empty
  # It should return a boolean
  def is_empty?
    self.len == 0
  end

  # It should check if WordsOrganizer words array is not empty
  # It should return a boolean
  def is_not_empty?
    !self.is_empty?
  end

  # It should return first element of WordsOrganizer words array
  # it should return nil if WordsOrganizer words array is empty
  def first_element
    return nil if self.is_empty?
    @words[0]
  end


end
