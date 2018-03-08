def noun
  File.open('nouns.txt').each do |f|
    File.read(f)
  end
end


puts noun 