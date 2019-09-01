require 'anagram_finder'

describe '.anagram_finder' do
  it 'finds a matching anagram with just one in array' do
    expect(anagram_finder('a', ['a'])).to eq(['a'])
  end
end
