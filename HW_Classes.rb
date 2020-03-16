

class Student

  def initialize(string_name, string_cohort)
    @string_name = string_name
    @string_cohort = string_cohort
  end

  def get_name
    return @string_name
  end

  def get_cohort
    return @string_cohort
  end

  def set_name(name)
    @string_name = name
  end

  def set_cohort(cohort)
    @string_cohort = cohort
  end

  def talk()
    return "I can talk!"
  end

  def say_fav_lang(fav_lang)
    return "I love "+fav_lang
  end

end



class SportsTeam

  attr_reader :name, :players, :coach
  attr_writer :coach

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end

  # def get_name
  #   return @name
  # end
  #
  # def get_playerss
  #   return @players
  # end
  #
  # def get_coach
  #   return @coach
  # end
  # def set_coach(name)
  #   @coach = name
  # end




  def add_player(player)
    @players.push(player)
  end

  def player_check(player)
    for playa in @players
      if playa == player
        return true
      end
    end
    return false

  end

  def get_points()
    return @points
  end

  def add_points_win(result)
    if result == "win"
      @points += 1
    end
  end

end


class BookLibrary

  def initialize(books)
    @books = books
  end

  def get_books()
    return @books
  end

  def book_info(book_name)
    for book in @books
      if book[:title] == book_name
        return book
      end
    end
  end

  def book_info_rental(book_name)
    return book_info(book_name)[:rental_details]
  end

  def add_book(book_name)
    book_blank = {
      title: "",
      rental_details: {student_name: "", date: ""}
      }
    book_blank[:title] = book_name

    @books.push(book_blank)
  end

  def edit_rental(book_name, student_name, date)
    for book in @books
      if book[:title] == book_name
        book[:rental_details][:student_name] = student_name
        book[:rental_details][:date] = date
      end
    end
  end




end
