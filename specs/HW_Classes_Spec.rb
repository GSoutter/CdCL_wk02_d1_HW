require('minitest/autorun')
require('minitest/reporters')
require_relative('../HW_Classes.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestBankAccount < MiniTest::Test

  def setup()
    @student = Student.new("Gordon", "G18")

    array_players = ["James", "Jimmy", "John", "Jack", "Janice", "Joplin"]
    @sports_team = SportsTeam.new("Packers", array_players, "Jason")


    books = [
    {
    title: "lord_of_the_rings",
    rental_details: {student_name: "Jeff", date: "01/12/16"}
    },
      {
    title: "surely_your_joking_mr_feynman",
    rental_details: {student_name: "Greg", date: "01/12/11"}
    }]


    @book_libary = BookLibrary.new(books)
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

  def test_student_talk
    assert_equal("I can talk!", @student.talk)
  end

  def test_student_favourite_language
    result = @student.say_fav_lang("Python")
    assert_equal("I love Python", result)
  end


  def test_sport_team_get_name
    assert_equal("Packers", @sports_team.name)
  end

  def test_sport_team_get_players
    assert_equal(["James", "Jimmy", "John", "Jack", "Janice", "Joplin"], @sports_team.players)
  end

  def test_sport_team_get_coach
    assert_equal("Jason", @sports_team.coach)
  end

  def test_sport_team_set_coach
    @sports_team.coach = "Jeremy"
    assert_equal("Jeremy", @sports_team.coach)
  end

  def test_sport_team_add_player
    @sports_team.add_player("Jamima")
    assert_equal(7, @sports_team.players.length)
  end

  def test_sport_team_player_check_true
    assert(@sports_team.player_check("Jack"))
  end

  def test_sport_team_player_check_false
    assert_equal(false, @sports_team.player_check("Bat"))
  end

  def test_sport_team_get_point_win
    @sports_team.add_points_win("win")
    assert_equal(1, @sports_team.get_points)
  end

  def test_book_library_get_books

    assert_equal(2, @book_libary.get_books.length)
  end

  def test_book_library_book_info
    result = {
      title: "surely_your_joking_mr_feynman",
      rental_details: {student_name: "Greg", date: "01/12/11"}
      }
    assert_equal(result, @book_libary.book_info("surely_your_joking_mr_feynman"))
  end

  def test_book_library_book_info
    result = {student_name: "Greg", date: "01/12/11"}
    assert_equal(result, @book_libary.book_info_rental("surely_your_joking_mr_feynman"))
  end

  def test_book_library_add_book
    result = {
      title: "Harry Potter",
      rental_details: {student_name: "", date: ""}
      }
    @book_libary.add_book("Harry Potter")
    assert_equal(result, @book_libary.book_info("Harry Potter"))
  end

  def test_book_libary_edit_rental
    result = {student_name: "James", date: "01/12/12"}

    @book_libary.edit_rental("lord_of_the_rings", "James", "01/12/12")
    assert_equal(result, @book_libary.book_info_rental("lord_of_the_rings"))
  end


end
