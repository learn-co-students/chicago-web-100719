require 'rest-client'
require 'json'
require 'pry'

# def get_players
#   game_hash.values.map do |team_info|
#     team_info[:players]
#   end.flatten
#   game_hash[:home][:players] + game_hash[:away][:players]
# end

# response = RestClient.get("www.reddit.com/.json")
# hash = JSON.parse(response)
# binding.pry
# puts response
# hash = parse_into_hash(response)
API_URL = "https://www.googleapis.com/books/v1/volumes?q="
def get_search_term
  puts "Please enter your search term:"
  gets.chomp
end

def get_from_api(query)
  endpoint = API_URL + query
  RestClient.get(endpoint)
end

def parse_response(response)
  JSON.parse(response)
end

def display_all_books(book_hash)
  book_items = book_hash["items"]
  book_items.each do |book|
    puts "*" * 30
    puts book["volumeInfo"]["title"]
    puts book["volumeInfo"]["authors"]
    puts book["volumeInfo"]["description"]
  end
  true
end

def run
  search = get_search_term
  resp = get_from_api(search)
  books_hash = parse_response(resp)
  display_all_books(books_hash)
end

run
