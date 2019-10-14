# teacher = Teacher.new
# jeff = Student.new(String.new("jeff"), teacher)
#
# jeff.teacher.list_students
# jeff.name.upcase

class String
  def upcase_9000
    self.upcase + "!!!!!!!!!!"
  end

  def upcase
    "whupsie"
  end
end


string = "Hello World"

print string.upcase_9000



aquarium = Aquarium.new("Shedd")

exhibit = Exhibit.new("jellies", aquarium)

manowar = Fish.new("Portuguese Man O'War", exhibit)


greg = Doctor.new("Greg House")

shrek = Patient.new("Shrek")

toothache = Appointment.new(greg, shrek, "toothache", "10-12-2019")
