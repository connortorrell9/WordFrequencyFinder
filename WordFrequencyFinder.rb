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

end