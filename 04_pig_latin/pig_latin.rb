
#write your code here
def translate(string)
    words = []
    new_word = ""
    if string.include? " "
    sentence = string.split(" ")
    sentence.each do |word|
      if word[0]=='a' || word[0]=='e' || word[0]=='i' || word[0]=='o' || word[0]=='u'
        words << word + 'ay'
      else
        word.length.times do |i|
          break if word[i]=='a'|| word[i]=='e' || word[i]=='i' || word[i]=='o' || (string[i]=='u'&&string[i-1]!='q')
          if word[i]!='a'||word[i]!='e'||word[i]!='i'||word[i]!='o'||word[i]!='u'||word[i..i+2]=='sch'||word[i..i+1]=='qu'
            new_word = word[i+1..-1]+word[0..i]+'ay'
          end
        end
        words << new_word
      end
    end
    words.join(" ")
  else
    if string[0]=='a' || string[0]=='e' || string[0]=='i' || string[0]=='o' || string[0]=='u'
      new_string = string+'ay'
    else
      string.length.times do |i|
        break if string[i]=='a'|| string[i]=='e' || string[i]=='i' || string[i]=='o' || (string[i]=='u'&&string[i-1]!='q')
        if string[i]!='a'||string[i]!='e'||string[i]!='i'||string[i]!='o'||string[i]!='u'||string[i..i+2]=='sch'||string[i..i+1]=='qu'
          new_string = string[i+1..-1]+string[0..i]+'ay'
        end
      end
      new_string
    end
  end
end
