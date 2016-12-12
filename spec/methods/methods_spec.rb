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
