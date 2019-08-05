require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test

  # def test_retrieves_book_title
  #   main_library = Library.new([
  #     {
  #       title: "Zorba", rental_details: {student_name: "Briana", date: "15/07/2019"}
  #     },
  #     {
  #       title: "Exopol", rental_details: {student_name: "Rene", date: "05/08/2019"}
  #     }
  #     ])
  #     assert_equal("Zorba", main_library.retrieves_book_title())
  #   end

    # def test_retrieves_book_details #I deleted this as I don't think I was asked to make it, and it's too similar to other tests
    #   main_library = Library.new([
    #     {
    #       title: "Zorba", rental_details: {student_name: "Briana", date: "15/07/2019"}
    #     },
    #     {
    #       title: "Exopol", rental_details: {student_name: "Rene", date: "05/08/2019"}
    #     }
    #     ])
    #     assert_equal(
    #       [
    #         {
    #           title: "Zorba", rental_details: {student_name: "Briana", date: "15/07/2019"}
    #         },
    #         {
    #           title: "Exopol", rental_details: {student_name: "Rene", date: "05/08/2019"}
    #         }
    #       ], main_library.retrieves_book_details())
    #   end

# def test_returns_book_details #user puts in title, program returns the rental details for that title
#   main_library = Library.new([
#     {
#       title: "Zorba", rental_details: {student_name: "Briana", date: "15/07/2019"}
#     },
#     {
#       title: "Exopol", rental_details: {student_name: "Rene", date: "05/08/2019"}
#     }
#     ])
#     assert_equal({student_name: "Briana", date: "15/07/2019"}, main_library.returns_book_details("Zorba"))
#   end
#
# def test_add_new_book
#   main_library = Library.new([
#     {
#       title: "Zorba", rental_details: {student_name: "Briana", date: "15/07/2019"}
#     },
#     {
#       title: "Exopol", rental_details: {student_name: "Rene", date: "05/08/2019"}
#     }
#     ])
#     main_library.add_new_book("Wellow")
    #assert_equal(3, main_library.count) #the count method does not work. maybe because main_library is an instance of a class, rather than an array. the array is inside the instance.
#end

def test_change_rental_details
  main_library = Library.new([
      {
        title: "Zorba", rental_details: {student_name: "Briana", date: "15/07/2019"}
      },
      {
        title: "Exopol", rental_details: {student_name: "Rene", date: "05/08/2019"}
      }
      ])
      assert_equal({title: "Zorba", rental_details:{student_name: "Dave", date: "02/02/2002"}}, main_library.change_rental_details("Zorba", "Dave", "02/02/2002"))
end


end
