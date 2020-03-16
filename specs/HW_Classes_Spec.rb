require('minitest/autorun')
require('minitest/reporters')
require_relative('../HW_Classes.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestBankAccount < MiniTest::Test

  def setup()
    @student = Student.new("Gordon", "G18")
  end

  def test_student_get_name
    assert_equal("Gordon", @student.get_name)
  end

  def test_student_get_cohort
    assert_equal("G18", @student.get_cohort)
  end

  def test_student_set_name
    @student.set_name("Alice")
    assert_equal("Alice", @student.get_name)
  end

  def test_student_set_cohort
    @student.set_cohort("Alice")
    assert_equal("Alice", @student.get_cohort)
  end
  


end
