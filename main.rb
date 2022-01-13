# Variable definition

base_dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# Method: substrings
# Parameters: sentence (string), dictionary (array of strings)
# Returns: result (hash with word count)

def substrings(sentence, dictionary)
    dictionary.reduce(Hash.new(0)) do |hash, substring|
        sentence.downcase.split(' ').each do |word|
            hash[substring] += 1 if word.include?(substring)
        end
        hash
    end
end

# Method invocation

puts substrings("Howdy partner, sit down! How's it going?", base_dictionary)