$LOAD_PATH.unshift(File.dirname(__FILE__))

class Anagrams
  def initialize(file_name)
    @file_name = file_name
  end
  
  def get_words
    words = []
    File.foreach(@file_name) {|line| words << line.chomp}
    words
  end

  def get_hash_map_for_the_words
    hash_map = {}
    @words.each do |word|
      sorted_word = word.chars.sort.join
      hash_map[sorted_word] ||= []
      hash_map[sorted_word] << word
    end
    hash_map
  end

  def show_anagrams
    @words = get_words
    hash_map = get_hash_map_for_the_words
    hash_map.each do |key, value|
      puts value.join(" ")
    end
  end
end


