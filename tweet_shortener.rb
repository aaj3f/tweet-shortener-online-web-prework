def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  array = tweet.split.collect do |word|
    if dictionary.keys.any? {|w| w.to_s == word}
      word = dictionary[:word].values
    else word
    end
  end
  array.join(" ")
end
