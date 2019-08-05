class Library

  #initializing the class. I don't know what attributes to use. is title an attribute of the class, or the array, or the hash? And does it matter?
  def initialize(books, title, student, rental_date)
    @books = books #Why have I made this? I don't know what it's relationship to the class is.
    @title = title
    @student = student
    @rental_date = rental_date
  end

  #Create a getter for the books
  def retrieves_book_title()
    for book in @books
      return book[:title]
    end
  end

  # def retrieves_book_details() - or is this the getter for books? I'm not sure what we were being asked to do
  #   return @books
  # end

  #Create a method that takes in a book title and returns only the rental details for that book.
  def returns_book_details(title)
    for book in @books
      return book[:rental_details]
    end
  end

  #Create a method that takes in a book title and adds it to our book list (add a new hash for the book with the student name and date being left as empty strings)
  def add_new_book(new_title)
    @books << new_title
  end
  #title: "Zorba", rental_details: {student_name: "Briana", date: "15/07/2019"}

  #Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it's due to be returned.
  def change_rental_details(title, new_student, new_rental_date)
    for title in @books
      if title == @books[:title]
        @student = new_student
        @rental_date = new_rental_date
      end
    end
  end



end
