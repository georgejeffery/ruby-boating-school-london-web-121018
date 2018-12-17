require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

spongebod = Student.new("spong")
frank = Instructor.new("frank")
spongebod.add_boating_test("101","passed", frank)
spongebod.add_boating_test("202", "failed", frank)
spongebod.add_boating_test("303","passed", frank)
alltests = BoatingTest.all

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
