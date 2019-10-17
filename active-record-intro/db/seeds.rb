dorm = Dorm.new(title: "PigBumps", capacity: 200)

revan = Sorcerer.new(name: "Revan", dorm_id: 1)

kitty = Cat.new(nom: "Kit", age: 4)

dorm.save
revan.save
kitty.save
