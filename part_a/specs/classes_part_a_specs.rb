# Part A
# For this part we want you to make a class that represents a CodeClan student.
#
# Create a class called Student that takes in a name (String) and a cohort (string - e.g "E18", "G6", etc) when an new instance is created.
# Create a couple of Getter methods, one that returns the name property and one that returns the cohort property of the student.
# Add in Setter methods to update the students name and what cohort they are in.
# Create a method that gets the student to talk (eg. Returns "I can talk!).
# Create a method that takes in a students favourite programming language and returns it as part of a string (eg. student1.say_favourite_language("Ruby") -> "I love Ruby").


require('minitest/autorun')
require('minitest/rg')
require_relative('../classes_part_a')

class TestStudentAccount < MiniTest::Test

  def test_to_get_student_name
    student_account = StudentAccount.new('James', 'E30')
    assert_equal('James', student_account.name)
  end

  def test_to_get_cohort
    student_account = StudentAccount.new('James', 'E30')
    assert_equal('E30', student_account.cohort)
  end

  def test_to_change_name
    student_account = StudentAccount.new('James', 'E30')
    student_account.name='Bob'
    assert_equal('Bob', student_account.name)
  end

  def test_to_change_cohort
    student_account = StudentAccount.new('James', 'E30')
    student_account.cohort='E29'
    assert_equal('E29', student_account.cohort)
  end

  def test_can_student_talk
    student_account = StudentAccount.new('James', 'E30')
    student_sound_bite = student_account.sound_bite()
    assert_equal('I can talk!', student_sound_bite)
  end

  def test_for_favourite_language
    student_account = StudentAccount.new('James', 'E30')
    favourite_language = student_account.fav_language('Ruby!')
    assert_equal('Ruby!', favourite_language)
  end
end
