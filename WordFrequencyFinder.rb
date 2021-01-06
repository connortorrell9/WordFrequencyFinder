class WordFrequencyFinder

    def initialize(file_name)
        @file_name = file_name
    end

    def file_to_string
        file = File.open(@file_name)
        content = file.read
        file.close
        content.sub("\n", " ")
    end

    def count_words(string)
        words = string.tr(".,!?", "").split
        frequency = Hash.new(0)
        words.each { |word| frequency[word.downcase] += 1 }
        frequency
    end

    def run
        count_words(file_to_string)
    end

end