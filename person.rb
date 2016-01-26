#Exercise 1: Class Time
#4. Both the instructor and the student have names.
#   We know that instructors and students are both people.
#   Create a parent Person class that contains the attribute name and an initializer to set the name.
class Person
  def initialize(name)
    @name = name
  end
  #Both the instructor and the student should also be able to do a greeting, like "Hi, my name is #{name}". Where's the best place to put this common method?
  # => Since the greeting method is a common method it is best to put is here in the Person class.
  def greeting
    "Hi, my name is #{@name}"
  end
end
#1. Let's start by creating two classes: one called Student and another called Instructor.
class Student < Person
  def learn
    "I get it!"
    #2. The student class has a method called learn that outputs "I get it!".
  end
end
class Instructor < Person
  def teach
    "Everything in Ruby is an Object"
    #3. The instructor class has a method called teach that outputs "Everything in Ruby is an Object".
  end
end
#6. Create an instance of Instructor whose name is "Chris" and call his greeting.
#7. Create an instance of Student whose name is "Cristina" and call her greeting.
#8. Call the teach method on your instructor instance and call the learn method on your student. Next, call the teach method on your student instance.
# What happens?
# => NoMethodError: undefined method `learn' for #<Instructor:0x007ffa1ab17698 @name="Chris">
# Why doesn't that work? Leave a comment in your program explaining why.
# => The learn method and the teach method are both local variables and they do not exist outside of their respective classes.
