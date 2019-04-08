class Library

  attr_reader :books

  def initialize()
    @books = [
      {
        title: "extreme_ironing",
        rental_details: {
          student_name: "Dot",
          date: "01/12/16"
        }
      },
      {
        title: "why_cats_paint",
        rental_details: {
          student_name: "Felix",
          date: "12/04/08"
        }
      }
    ]
end

  def book_info(title)
    for book in @books
      return book if book[:title] == title
    end
  end

end
