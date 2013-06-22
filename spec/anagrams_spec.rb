require 'spec_helper'

describe Anagrams do
  before(:each) do
    @anagrams = Anagrams.new('spec/test.txt')
    @words = ['asd', 'qwe', 'sda', 'wer']
  end
  
  it "should return the words from a file" do
    words = @anagrams.get_words
    words.count.should == 4
    words.first.should == 'asd'
  end

  it "should create hash map for each word with the key as sorted word" do
    @anagrams.instance_variable_set(:@words, @words)
    hash_map = @anagrams.get_hash_map_for_the_words
    hash_map['ads'].count.should == 2
    hash_map['eqw'].count.should == 1
    hash_map['ads'].first.should == 'asd'
    hash_map['ads'].last.should == 'sda'
  end

  it "should should show the anagramsof the word" do
    @anagrams.should_receive(:get_words).and_return(@words)
    @anagrams.should_receive(:get_hash_map_for_the_words).and_return({})
    @anagrams.show_anagrams
  end
end
