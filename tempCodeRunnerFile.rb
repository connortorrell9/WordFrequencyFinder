require './WordFrequencyFinder'

print "Enter the file name: "
frequency = WordFrequencyFinder.new(gets.chomp).run
frequency = frequency.sort_by { |word, count| count }
ordered_frequency = frequency.to_a.reverse.to_h
length = 0
ordered_frequency.each do |key, value|
    if key.length > length
        length = key.length
    end
end
ordered_frequency.each do |key, value|
    puts "#{key}: ".ljust(length + 2) + "#{"*" * value}"
end