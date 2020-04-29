require 'csv'
# require_relative '../app/models/word'

filepath = '/home/marceau/code/marceau21/marceau_longest_word/db/words.csv'

Word.destroy_all

puts "all is clean"

CSV.foreach(filepath) do |row|
  Word.create(word: row[0])
end

puts "all is done"


