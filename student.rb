require "./person"
class Student < Person

  attr_accessor :tutor, :average
  def initialize(params = {})
    super
    @tutor = param[:tutor] if param[:tutor]
    @average = param[:average] if param[:average]
  end

  def claim_your_age
    "#{super} and I am a student"
  end

end
