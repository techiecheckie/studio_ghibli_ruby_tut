require 'net/http'
require 'json'

uri = URI('https://ghibliapi.herokuapp.com/films')
film_data = JSON.parse(Net::HTTP.get(uri)) # => String

film_data.each do |film|
  if ARGV[0] == '-d'
    puts "#{film['title']}, #{film['director']}"
  else
    puts film['title']
  end
end
