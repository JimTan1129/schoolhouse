require 'faker'
require 'pry'
require_relative 'student'
require_relative 'classroom'
require_relative 'grade'


@A = Classroom.new("1A")
@B = Classroom.new("1B")
@C = Classroom.new("1C")
@D = Classroom.new("1D")

def generate_student
  s = Student.new(Faker::Name.name, rand(11..20))
  s.report_card.add_grade("math", rand(0..100))
  s.report_card.add_grade("history", rand(0..100))
  s.report_card.add_grade("english", rand(0..100))
  s.report_card.add_grade("science", rand(0..100))
  s
  return student
end


1..25.times do |i|
  @A.add_student(generate_student)
end
1..25.times do |i|
  @B.add_student(generate_student)
end
1..25.times do |i|
  @C.add_student(generate_student)
end
1..25.times do |i|
  @D.add_student(generate_student)
end

def find_failing(classroom)
  classroom.students.each { |key, value|
    total = 0
    value.report_card.grades.each do |key, value|
      total = total + value
    end
    if total > 200
      puts "#{value.name}: PASS"
    else
      puts "#{value.name}: FAIL"
    end
    }
end

def find_exceptional(classroom)
  classroom.students.each { |key, value|
    total = 0
    value.report_card.grades.each do |key, value|
      total = total +
      puts "#{value.name}":
    end
    if total > 260
      puts "#{value.name}"
    end
    }
end

find_exceptional(@B)
find_failing(@A)
