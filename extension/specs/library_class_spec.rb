# Extension:
# Model a Library as a class.
#
# Create a class for a Library that has an array of books. Each book should be a hash with a title, which is a string, and rental details, which is another hash with a student name and due date.
# This should look something like:
#
#   {
#     title: "lord_of_the_rings",
#     rental_details: {
#      student_name: "Jeff",
#      date: "01/12/16"
#     }
#   }
# Create a getter for the books
# Create a method that takes in a book title and returns all of the information about that book.
# Create a method that takes in a book title and returns only the rental details for that book.
# Create a method that takes in a book title and adds it to our book list (add a new hash for the book with the student name and date being left as empty strings)
# Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it's due to be returned.

require('minitest/autorun')
require('minitest/rg')
require_relative('../library_class')

class TestLibrary < MiniTest::Test

  def test_getting_all_book_info
    library = Library.new()
    book_to_search = library.book_info("why_cats_paint")
    assert_equal({title: "why_cats_paint", rental_details: {student_name: "Felix", date: "12/04/08"}}, book_to_search)
  end

  def test_getting_rental_info
    library = Library.new()
    book_to_search = library.book_rental_info("why_cats_paint")
    assert_equal({student_name: "Felix", date: "12/04/08"}, book_to_search)
  end

  def test_adding_new_book
    library = Library.new()
    library.add_book("the_life_of_dophins")
    book_to_search = library.book_info("the_life_of_dophins")
    assert_equal({title: "the_life_of_dophins",rental_details: {student_name: "", date: ""}}, book_to_search)
  end

  def test_change_rental_details
    library = Library.new()
    library.update_rental_info("why_cats_paint", "James", "08/04/19")
    book_to_search = library.book_info("why_cats_paint")
    assert_equal({title: "why_cats_paint",rental_details: {student_name: "James", date: "08/04/19"}}, book_to_search)
  end

end
