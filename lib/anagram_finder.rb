def anagram_finder(word, words)
  word = word.split('').sort.join
  anagrams = []
  words.each_with_index do |word_to_check, index|
    word_to_check = word_to_check.split('').sort.join
    if word_to_check == word
      anagrams << words[index]
    end
  end
  anagrams
end
