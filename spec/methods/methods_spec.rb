require_relative "../../words_organizer"

describe "#initialize" do

  organizer = WordsOrganizer.new

  it "It should initialize object with an empty words array attribute" do
    expect(organizer).to have_attributes(:words => [])
  end

end

describe "#len" do

  organizer = WordsOrganizer.new

  it "It should calculate WordsOrganizer words array's length" do
    organizer.words.push('hello')
    organizer.words.push('world')
    expect(organizer.len).to eq(2)
    organizer.words.delete_at(-1)
    expect(organizer.len).to eq(1)
  end

  it "It should return an integer" do
    expect(organizer.len).to be_a(Integer)
  end

end

describe "#add" do

  organizer = WordsOrganizer.new

  it "It should add a new element to WordsOrganizer words array" do
    organizer.add('more')
    organizer.add('another')
    expect(organizer.words.length).to eq(2)
    organizer.add('ruby')
    expect(organizer.words.length).to eq(3)
  end

  it "It should add a new element to last index of WordsOrganizer words array" do
    organizer.add('javascript')
    expect(organizer.words.last).to eq('javascript')
  end

  it "It should return modified WordsOrganizer words array" do
    organizer.words.clear
    organizer.add('java')
    expect(organizer.add('google')).to be_a(Array)
    expect(organizer.words).to eq(['java', 'google'])
  end

end

describe "#is_empty?" do

  organizer = WordsOrganizer.new

  it "It should check if WordsOrganizer words array is empty" do
    organizer.words.clear
    expect(organizer.is_empty?).to eq(true)
    organizer.words.push('javascript')
    expect(organizer.is_empty?).to eq(false)
  end

  it "It should return a boolean" do
    organizer.words.clear
    expect(organizer.is_empty?).to be_a(TrueClass)
    organizer.words.push('ruby')
    expect(organizer.is_empty?).to be_a(FalseClass)
  end

end

describe "#is_not_empty?" do

  organizer = WordsOrganizer.new

  it "It should check if WordsOrganizer words array is not empty" do
    expect(organizer.is_not_empty?).to eq(false)
    organizer.words.push('javascript')
    expect(organizer.is_not_empty?).to eq(true)
  end

  it "It should return a boolean" do
    organizer.words.clear
    expect(organizer.is_not_empty?).to be_a(FalseClass)
    organizer.words.push('ruby')
    expect(organizer.is_not_empty?).to be_a(TrueClass)
  end

end

describe "#first_element" do

  organizer = WordsOrganizer.new

  it "It should return first element of WordsOrganizer words array" do
    organizer.words.push("javascript")
    organizer.words.push("ruby")
    expect(organizer.first_element).to eq("javascript")
  end

  it "It should return nil if WordsOrganizer words array is empty" do
    organizer.words.clear
    expect(organizer.first_element).to eq(nil)
  end

end

describe "#remove_at" do

  organizer = WordsOrganizer.new

  it "It should remove element at desired index from WordsOrganizer words array" do
    organizer.words.push("javascript")
    organizer.words.push("ruby")
    organizer.words.push("google")
    organizer.words.push("java")
    organizer.remove_at(0)
    expect(organizer.words).to eq(["ruby", "google", "java"])
  end

  it "It should return removed element" do
    expect(organizer.remove_at(2)).to eq("java")
  end

  it "It should return nil if WordsOrganizer words array is empty" do
    organizer.words.clear
    expect(organizer.remove_at(2)).to eq(nil)
  end

end

describe "#extract_first" do

  organizer = WordsOrganizer.new

  it "It should remove first element from WordsOrganizer words array" do
    organizer.words.push("javascript")
    organizer.words.push("ruby")
    organizer.extract_first
    expect(organizer.words).to eq(["ruby"])
  end

  it "It should return removed element" do
    expect(organizer.extract_first).to eq("ruby")
  end

  it "It should return nil if array is empty" do
    expect(organizer.extract_first).to eq(nil)
  end

end

describe "#sort_words" do

  organizer = WordsOrganizer.new

  it "It should return an array" do
    organizer.add('endai')
    expect(organizer.sort_words).to be_a(Array)
  end

  it "It should return same words array if array's size < 2 elements" do
    expect(organizer.sort_words).to eq(['endai'])
  end

  it "It should sort words alphabetically" do
    organizer.words.clear
    organizer.add('cba')
    organizer.add('bca')
    organizer.add('aba')
    organizer.add('acbc')
    organizer.add('acba')
    expect(organizer.sort_words).to eq([
      'aba',
      'acba',
      'acbc',
      'bca',
      'cba'
    ])

    organizer.words.clear
    organizer.add('kavxpfequl')
    organizer.add('ynsxcrxout')
    organizer.add('jrhmnjyvpb')
    organizer.add('kefrxznjsn')
    organizer.add('juaypzwoow')
    organizer.add('kaszncrqdc')
    organizer.add('tlvszaghul')
    organizer.add('owfjrozmdf')
    organizer.add('qcwhbmviaj')
    organizer.add('dakguurrhi')


    expect(organizer.sort_words).to eq([
      "dakguurrhi",
      "jrhmnjyvpb",
      "juaypzwoow",
      "kaszncrqdc",
      "kavxpfequl",
      "kefrxznjsn",
      "owfjrozmdf",
      "qcwhbmviaj",
      "tlvszaghul",
      "ynsxcrxout"
    ])
  end
  
end
