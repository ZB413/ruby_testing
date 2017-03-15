#write your code here
def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(word="hello", num=2)
  ([word]*num).join(" ")
end

def start_of_word(word,num=1)
  word[0,num]
end

def first_word(sentence)
  first_word = sentence.slice(0..(sentence.index(' ')-1))
end

def titleize(words)
  arr = words.split(" ").each{|word| word.capitalize!}
  arr.each do |word|
    if word.strip.length<=3
      word.downcase!
    elsif word[0]=='O' || word[0]=='A' || word[0]=='E' || word[0]=='I' || word[0]=='U'
      word.downcase!
    end
  end
  arr[0].capitalize!
  arr.join(" ")
end
