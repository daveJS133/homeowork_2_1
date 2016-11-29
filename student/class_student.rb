class Student
  attr_accessor :name, :cohort, :phrase, :language
  attr_reader :fave_string

  def initialize(name, cohort, phrase, language, fave_string)
    @name = name
    @cohort = cohort
    @phrase = phrase
    @language = language
    @fave_string = fave_string 
  end



  def talk(phrase)
    puts phrase
    return phrase

  end

  def fave_language()
     @fave_string = "I love #{language}"
     return @fave_string
  end


end

