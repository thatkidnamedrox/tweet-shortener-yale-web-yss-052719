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
    w = word.gsub(/[^0-9a-zA-Z'#&]/, '')

    keys.each do |key|
      k = key.split(", ")
      if k.find {|a| a == w.downcase}
        w = dictionary[key]
      end
    end

    w+= word.gsub(/[0-9a-zA-Z'#&]/i,'')
    #puts w
    if word != w
      word = w
    end

    new_tweet << word
  end

  new_tweet.join(" ")
  # puts new_tweet.join(" ")
end

#word_substituter("I'm running out of example tweets 4 u guys, which is weird, because I'm a writer & this is just writing & I tweet all day. 4 real, u guys. 4 real.")

def bulk_tweet_shortener(tweets)
  tweets.collect do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    new_tweet = word_substituter(tweet)
    new_tweet.length > 140 ? new_tweet[0..136] + "..." : new_tweet
  else
    tweet
  end
end

tweet1 = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
tweet2 = "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?"
tweet3 = "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"
tweet4 = "New game. Middle aged tweet followed by #youngPeopleHashTag Example: Gotta get my colonoscopy and mammogram soon. Prevention is key! #swag"
tweet5 = "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real."
#selective_tweet_shortener([tweet1, tweet2, tweet3, tweet4, tweet5])
