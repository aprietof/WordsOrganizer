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

  # It should remove element at desired index from WordsOrganizer words array
  # It should return removed element
  # It should return nil if WordsOrganizer words array is empty
  def remove_at(index)
    return nil if self.is_empty?
    element_removed = @words[index]
    @words[index..index] = %w()
    element_removed
  end

  # It should remove first elemnt of array
  # it should return removed element
  # it should return nil if array is empty
  def extract_first
    self.remove_at(0)
  end

  # It should sort WordsOrganizer words array alphabetically
  # It should return same WordsOrganizer words array if array's size < 2 elements
  # it should return sorted words array
  def sort_words

    # BASE CASE: WordsOrganizers with fewer than two elements are sorted
    if self.len < 2
      return @words
    end

    # STEP 1: divide WordsOrganizer words in half
    mid_index = self.len / 2

    left = WordsOrganizer.new self.words[0...mid_index]
    right = WordsOrganizer.new self.words[mid_index..-1]

    # STEP 2: sort each half
    sorted_left = WordsOrganizer.new left.sort_words
    sorted_right = WordsOrganizer.new right.sort_words

    # STEP 3: merge the sorted halves
    sorted = WordsOrganizer.new

    while sorted_left.is_not_empty? || sorted_right.is_not_empty? do

      # If sorted_left's first element is less than sorted_right's first element
      # or if sorted_right is empty, add sorted_left's first element to sorted collection
      # else add sorted_right's first element to sorted collection.

      if sorted_left.is_not_empty? && (sorted_right.is_empty? ||
        sorted_left.first_element < sorted_right.first_element)

        sorted.add(sorted_left.extract_first)
      else

        sorted.add(sorted_right.extract_first)
      end

    end

    sorted.words
  end


end
