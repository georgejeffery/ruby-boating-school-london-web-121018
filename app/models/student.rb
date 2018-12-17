class Student

attr_accessor :name
attr_reader :all

@@all = []

def initialize (name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def self.find_student(name)
  @@all.select{|student| student.name == name}
end

def add_boating_test(testname,status,instructor)
  BoatingTest.new(self, testname, status, instructor)
end

def grade_percentage
  tests = BoatingTest.all.select{|test| test.student.name == @name}
  passcount = 0
  totalcount = tests.length
  tests.each do |test|
    if test.status == "passed"
      passcount += 1
    end
  end
  (passcount.to_f/totalcount) * 100
end

end
