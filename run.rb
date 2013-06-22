$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'lib/anagrams.rb'

anagrams = Anagrams.new('anagrams.txt')
anagrams.show_anagrams
