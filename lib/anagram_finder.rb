def anagram_finder(word, words)
  word = word.split('').sort.join
  p "WORD"
  p word
  anagrams = []
  words.each do |word_to_check|
    word_to_check = word_to_check.split('').sort.join
    p "WORD_TO_CHECK"
    p word_to_check
    if word_to_check == word
      anagrams << word_to_check
    end
  end
  anagrams
end
