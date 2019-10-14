# p self

class Student
  attr_reader :name, :hobby, :teacher

  @@all = []

  def initialize(name, hobby, teacher)
    @name = name
    @hobby = hobby
    # instance of the teacher class
    @teacher = teacher
    # p self
    @@all << self
  end

  def greeting
    "Hello, world! My name is #{name.capitalize} and I'm into #{hobby.downcase}. Currently I'm being taught by #{teacher_name}"
  end

  def teacher_name
    self.teacher.name
  end

  def self.all
    @@all
  end
end

class Teacher
  attr_reader :name, :specialty

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    # @students = students
  end

  def students
    # Only students associated with this teacher instance
    my_students = Student.all.select do |student|
      "in the loop with #{student}"
      student.teacher.name == self.name
    end

    my_students

  end

  def roll_call
    student_names = self.students.map do |student|
      student.name + "\n"
    end
    "Hello! I'm #{self.name} and I have the following students: #{student_names.join}"
  end
end

libby = Teacher.new("Libby", "hustlin")
ybbil = Teacher.new("Ybbil", "restin' on laurels")

ekud = Student.new("Ekud", "songforgetting", ybbil)
duke = Student.new("Duke", "songwriting", libby)
patton = Student.new("Patton", "absurdity", libby)

p libby.students
