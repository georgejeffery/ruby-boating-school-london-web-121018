class Instructor

attr_accessor :name
attr_reader :allinstructors

@@allinstructors = []

def initialize (name)
  @name = name
  @@allinstructors << self
end

def self.all
  @@allinstructors
end

def pass_student(name, test)
  alltests = BoatingTest.all
  teststatus = false
  testreturn = nil
  alltests.each do |tests|
    if tests.testname == test && tests.student.name == name
      tests.status = "passed"
      teststatus = true
      testreturn = tests
    end
    end
  if teststatus == false
    testreturn = BoatingTest.new(Student.new(name), test, "passed", self )
  end
  testreturn
end


def fail_student(name, test)
  alltests = BoatingTest.all
  teststatus = false
  testreturn = nil
  alltests.each do |tests|
    if tests.testname == test && tests.student.name == name
      tests.status = "failed"
      teststatus = true
      testreturn = tests
    end
    end
  if teststatus == false
    testreturn = BoatingTest.new(Student.new(name), test, "failed", self )
  end
  testreturn
end
end
