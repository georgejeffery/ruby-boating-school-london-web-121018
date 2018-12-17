class BoatingTest

attr_accessor :student, :testname, :status, :instructor
attr_reader :alltests

@@alltests = []

def initialize(student, testname, status, instructor)
  @student = student
  @testname = testname
  @status = status
  @instructor = instructor
  @@alltests << self
end

def self.all
  @@alltests
end


end
