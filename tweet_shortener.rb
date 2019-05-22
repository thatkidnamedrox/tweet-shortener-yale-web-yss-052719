# Write your code here.
def dictionary
  {
    "hello" => "hi",
    "to, two, too" => "2",
    "for, four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  words = tweet.split(" ")
  keys = dictionary.keys
  words.collect do |word|
    w = word.gsub(/[^0-9a-z]/, '')
    keys.each do |key|
      if key.include?(w.downcase)
        w = dictionary[key]
        break
      end
    end

    w+= word.gsub(/[0-9a-z]/i,'')

    puts w
  end

  # puts words

end

word_substituter("Hello you. I like you too.")
