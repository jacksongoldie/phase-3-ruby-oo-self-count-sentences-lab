#practice of adding methods to or altering Ruby's built in classes is called monkey patching == BAD

require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    split = self.split(/(\.|\?|\!)/)
    removed = split.filter {|s| s.length > 2}
    removed.count
  end
end

s1 = String.new("This, well, is a sentence. This is too!! And so is this, I think? Woo...")
puts s1.count_sentences