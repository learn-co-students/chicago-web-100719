require 'sqlite3'
require 'pry'


db = SQLite3::Database.new('chinook.db', results_as_hash: true)

all_artists = db.execute("SELECT * FROM artists;")

p all_artists.class # Array

p all_artists

p all_artists[0]
