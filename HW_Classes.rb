

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

end
