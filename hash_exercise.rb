require 'rspec'

class Hash
  def param_converter
    self.map { |i| i * "=" } * "&"
  end
end

  



describe 'HTML Param Converter' do
  it 'Adds an HTML param converter to the Hash class' do
    hash = { :topic => "baseball", :team => "astros" }
    expect(hash.param_converter).to eq('topic=baseball&team=astros')
  end
end



#{:a => 100, :b => 200}.map{|k,v| "#{k}=#{v}"}.join('&')

#def hash_to_query(hash)
  #return URI.encode(hash.map{|k,v| "#{k}=#{v}"}.join("&"))
#end

#require 'uri'
#URI.encode_www_form(hash)

#string = ""
  #self.each do
    #|key, value|
    #key = "#{entrydelimiter}#{key}" if string != "" #nasty hack
#def flatten(keyvaldelimiter, entrydelimiter)
    #tring += "#{key}#{keyvaldelimiter}#{value}"  
  #end
  #return string
#end