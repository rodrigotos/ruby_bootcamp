require "./person"
class Instructor < Person
  attr_accessor :nickname, :strength
  #def initialize(first_name = "no name", last_name ="no last name", nickname = "undefined", age = 1000, strength = "being lazy")
  #  @first_name = first_name
  #  @last_name = last_name
  #  @nickname = nickname
  #  @age = age
  #  @strength = strength
  #end

  def initialize(params = {})
    super
    @nickname = params[:nickname] if params[:nickname]
    @strength = params[:strength] ? params[:strength] : "being lazy"
  end

  def claim_your_strength
    "I LIKE SO MUCH #{self.strength.upcase}"
  end

end
