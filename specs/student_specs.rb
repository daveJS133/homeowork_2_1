require ('minitest/autorun')
require ('minitest/rg')
require_relative('../student/class_student')

class StudentSpec < MiniTest::Test

  def test_create_student
    student = Student.new("Dave", 9, "Hi", "ruby", "I love ruby")
    assert_equal(Student, student.class)
  end

  def test_get_student_name
    student = Student.new("Dave", 9, "Hi", "ruby", "I love ruby")
    assert_equal("Dave", student.name())
  end

  def test_get_student_cohort
    student = Student.new("Dave", 9, "hi", "ruby", "I love ruby")
    assert_equal(9, student.cohort())
  end

  def test_set_student_name
    student = Student.new("Dave", 9, "hi", "ruby", "I love ruby")
    student.name = "Steve"
    assert_equal("Steve", student.name())
  end

  def test_set_student_cohort
    student = Student.new("Dave", 9, "Hi", "ruby", "I love ruby")
    student.cohort = 10
    assert_equal(10, student.cohort())
  end

  def test_talk
    student = Student.new("Dave", 9, "Hi", "ruby", "I love ruby")
    student.phrase = "I love Ruby"
    assert_equal("I love Ruby", student.phrase)
  end

  def test_fave_language
    student = Student.new("Dave", 9, "Hi", "Ruby", "I love Ruby")
    
    student.language()
    assert_equal("I love Ruby", student.fave_language)
  end

  

end
