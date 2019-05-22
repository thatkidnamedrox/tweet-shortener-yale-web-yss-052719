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
  words.each do |word|
    w = word.downcase
    w = w.gsub(/[^0-9a-z]/i, '')

    puts keys.include?(w)
  end
end

word_substituter("Hello you. I like you too.")
