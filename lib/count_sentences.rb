require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    # start with self
    # next use .split() and figure out how to use regula expression to fill arguments

    # last use .length or .size to get a count of elements
    self.split(/\.|\?|!/).filter {|sentence| !sentence.empty? } .length
  end
end

# puts "The weather outside is frightful.".sentence?
# returned true!

# puts "Where am I?".question?
# true!
# puts "I am where you are.".question?
# false!

# puts "I'm old now!".exclamation?
# true

# pp "I'm. Not!! Here?".count_sentences