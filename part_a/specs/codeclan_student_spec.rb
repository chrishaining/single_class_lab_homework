require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student')

class TestCodeClanStudent < MiniTest::Test

def test_student_name
  codeclan_student = CodeClanStudent.new('Chris', 'E33')
  assert_equal('Chris', codeclan_student.student_name())
end

def test_input_cohort
codeclan_student = CodeClanStudent.new('Chris', 'E33')
assert_equal('E33', codeclan_student.cohort())
end

def test_set_student_name
codeclan_student = CodeClanStudent.new('Chris', 'E33')
codeclan_student.set_student_name('Karolina')
assert_equal('Karolina', codeclan_student.student_name())
end

def test_set_cohort
  codeclan_student = CodeClanStudent.new('Chris', 'E33')
  codeclan_student.set_cohort('E1000')
  assert_equal('E1000', codeclan_student.cohort())
end

def test_if_student_can_talk
  codeclan_student = CodeClanStudent.new('Amanda', 'E33')
  codeclan_student.student_can_talk()
  assert_equal('I can talk!', codeclan_student.student_can_talk())
end

def test_output_of_favourite_programming_language
  codeclan_student = CodeClanStudent.new('Amanda', 'E33')
#  codeclan_student.favourite_programming_language()
  assert_equal('I love Ruby', codeclan_student.favourite_programming_language('Ruby'))
end




end
