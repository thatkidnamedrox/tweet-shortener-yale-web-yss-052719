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
  new_tweet = []
  words.each do |word|
    w = word.gsub(/[^0-9a-zA-Z]/, '')

    keys.each do |key|
      if key.include?(w.downcase)
        w = dictionary[key]
        break
      end

    end

    w+= word.gsub(/[0-9a-zA-Z]/i,'')

    if word != w
      word = w
    end

    new_tweet << word
  end

  new_tweet.join(" ")
end

# word_substituter("Hello you. I like you too.")
