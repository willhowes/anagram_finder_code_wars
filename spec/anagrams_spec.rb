require 'anagram_finder'

describe '.anagram_finder' do
  it 'finds a matching anagram with just one in array' do
    expect(anagram_finder('a', ['a'])).to eq(['a'])
  end

  it 'finds a matching anagram with two in array' do
    expect(anagram_finder('a', ['a', 'b'])).to eq(['a'])
  end

  it 'finds word with more than one letter which are anagrams' do
    expect(anagram_finder('abba', ['aacd', 'aabb'])).to eq(['aabb'])
  end

  it 'finds several words that are anagrams' do
    expect(anagram_finder('abba', ['aabb', 'abcd', 'bbaa', 'dada'])).to eq(['aabb', 'bbaa'])
  end

  it "returns blank array if no matching anagrams" do
    expect(anagram_finder('laser', ['lazing', 'lazy',  'lacer'])).to eq([])
  end
end
