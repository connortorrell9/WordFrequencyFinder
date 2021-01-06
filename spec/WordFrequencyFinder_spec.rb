require './WordFrequencyFinder'

describe "word frequency finder" do
  let(:word_frequency_finder) { WordFrequencyFinder }
  context "returns string from file" do
    it "with file with no line breaks" do
      expect(word_frequency_finder.new("file.txt").file_to_string).to eq("Hello Connor, you are very cool Connor. Yes you are, Connor, very very cool. Hello my dude.")
    end
  end
end