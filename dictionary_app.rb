require "http"
while true
  system "clear"
  puts "Type a word get a definition! (enter q if you would like to quit"
  word = gets.chomp
  if gets.chomp == "q"
    break
  else
    def_response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=7rzrusqms9ysbvd11ihq7idgk3slkzghxnqc6k6rmn3520mq9")
    example_response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/topExample?useCanonical=false&api_key=7rzrusqms9ysbvd11ihq7idgk3slkzghxnqc6k6rmn3520mq9")

    pronounce_response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/pronunciations?useCanonical=false&limit=50&api_key=7rzrusqms9ysbvd11ihq7idgk3slkzghxnqc6k6rmn3520mq9")

    word_data = def_response.parse
    example_data = example_response.parse
    pronounce_data = pronounce_response.parse


    definition = word_data[0]["text"]
    example = example_data["text"]
    pronounce = pronounce_data[0]["raw"]

    p example

    p "The Definition of the word #{word} is: #{definition} It is pronounced #{pronounce}. An example sentence is: #{example}"
  end
end



