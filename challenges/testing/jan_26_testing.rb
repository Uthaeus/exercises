require 'rspec'


def hello_world
  p "Hello, World"
end

def num_string str 
  words = str.split(//)
  nums = words.select { |i| i[/\d+/] } 
  nums.map { |x| x.to_i }.reduce(:+)
end


describe 'HelloWorld' do 
  it 'returns Hello World' do 
    expect(hello_world).to eq("Hello, World")
  end
end

describe 'num_string' do 
  it 'extracts numbers then sums them' do 
    expect(num_string('Hello1 World2!3')).to eq(6)
  end
end
