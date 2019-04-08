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
      },
      {
        title: "lawnmower_racing_annual",
        rental_details: {
          student_name: "Beavis",
          date: "01/06/94"
        }
      }
    ]
  end

  def book_info(title)
    for book in @books
      return book if book[:title] == title
    end
  end

  def book_rental_info(title)
    for book in @books
      return book[:rental_details] if book[:title] == title
    end
  end

  def add_book(title)
    @books << {
      title: title,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
  end

end
