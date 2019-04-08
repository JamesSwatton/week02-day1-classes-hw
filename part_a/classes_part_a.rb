class StudentAccount
  attr_accessor :name, :cohort

def initialize(name, cohort)
  @name = name
  @cohort = cohort
end

def sound_bite()
  return 'I can talk!'
end

def fav_language(favourite)
  return favourite
end

end
