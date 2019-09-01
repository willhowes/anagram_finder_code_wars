require 'anagram_finder'

describe '.anagram_finder' do
  it 'finds a matching anagram with just one in array' do
    expect(anagram_finder('a', ['a'])).to eq(['a'])
  end

  it 'finds a matching anagram with two in array' do
    expect(anagram_finder('a', ['a', 'b'])).to eq(['a'])
  end

  it 'finds words with more than one letter which are anagrams' do
    expect(anagram_finder('abba', ['aacd', 'aabb'])).to eq(['aabb'])
  end
end
