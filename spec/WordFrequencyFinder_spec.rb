require './WordFrequencyFinder'

describe "word frequency finder" do
  let(:word_frequency_finder) { WordFrequencyFinder }
  context "returns string from file" do
    it "with file with no line breaks" do
      expect(word_frequency_finder.new("file.txt").file_to_string).to eq("Hello Connor, you are very cool Connor. Yes you are, Connor, very very cool. Hello my dude.")
    end
    it "with file with line breaks" do
      expect(word_frequency_finder.new("file2.txt").file_to_string).to eq("Hello Connor, you are very cool Connor. Yes you are, Connor, very very cool. Hello my dude.")
    end
  end
  context "returns hash from file" do
    it "correctly" do
      expect(word_frequency_finder.new("file.txt").run).to eq({"hello"=>2, "connor,"=>2, "you"=>2, "are"=>1, "very"=>3, "cool"=>1, "connor."=>1, "yes"=>1, "are,"=>1, "cool."=>1, "my"=>1, "dude."=>1})
    end
  end
end