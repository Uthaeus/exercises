require 'rspec'

def vowel_remover arr
  result = []
  vowels = 'aeiou'
  arr.each do |i|
    result << i unless vowels.include?(i)
  end
  result
end


describe 'Vowel remover' do
  it 'removes vowels from the alphabet' do
    alphabet = ('a'..'z')
    expect(vowel_remover(alphabet)).to eq(["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"])
  end
end