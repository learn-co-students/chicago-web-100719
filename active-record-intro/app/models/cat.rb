class Cat < ActiveRecord::Base

end













# class Cat
#   def self.all
#     cat_hashes = DB[:conn].execute("SELECT * FROM cats")
#     # [{'name': "Tabby", 'age': 5}, {'name': "Felix", 'age': 8}]
#
#     cat_objects = cat_hashes.map do |hash|
#       self.new(hash)
#     end
#   end
#
#   def initialize(cat_info)
#     @name = cat_info['name']
#     @age = cat_info['age']
#     @id = cat_info['id']
#   end
#
#   def save
#     if self.id
#       query = 'SOME UPDATE STATEMENT'
#     else
#       query = 'SOME INSERT STATEMENT'
#     end
#     saved_cat = DB[:conn].execute(query)
#
#     new_id = DB[:conn].last_insert_row_id # 4
#   end
# end
#
# fluffy = Cat.new({'name': 'Fluffy', 'age': 15})
#
# fluffy.save
