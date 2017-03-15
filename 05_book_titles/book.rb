class Book
# write your code here
  attr_accessor :title

  def title=(new_title)
    if new_title.include? " "                        #if the title is multiple words...
      title = new_title.split(" ")                    #make the title an array of words
      title.each do |word|                              #for each word in the title (array)
        if is_article(word)||is_conjunction(word)||is_preposition(word)
          word.downcase!                #lowercase all articles, conjunctions, and prepositions
        else
          word.capitalize!              #capitalize all other words
        end
      end
      title[0].capitalize!              #capitalize the first word no matter what
      @title = title.join(" ")          #combine the array back into a single string
    else
      @title = new_title.capitalize     #if the title is only word just capitalize it
    end
  end
end

def is_article(string)
  if string=='a'||string=='an'||string=='the'
    true
  else
    false
  end
end

def is_conjunction(string)
  if string=='and'
    true
  else
    false
  end
end

def is_preposition(string)
  if string=='of'||string=='in'
    true
  else
    false
  end
end

def is_i(string)
  if string=="i"
    true
  else
    false
  end
end
