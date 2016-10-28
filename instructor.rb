class Instructor
  attr_accessor :first_name, :last_name, :nickname, :age, :strength
  #def initialize(first_name = "no name", last_name ="no last name", nickname = "undefined", age = 1000, strength = "being lazy")
  #  @first_name = first_name
  #  @last_name = last_name
  #  @nickname = nickname
  #  @age = age
  #  @strength = strength
  #end

  def initialize(params = {})
    @first_name = params[:first_name] ? params[:first_name] : "no name"
    @last_name = [:last_name] ? params[:last_name] : "no last name"
    @nickname = [:nickname] if params[:nickname]
    @age = [:age] ? params[:age] : 1000
    @strength = [:strength] ? params[:strength] : "being lazy"
  end

  def claim_your_strength
    "I LIKE SO MUCH #{self.strength.upcase}"
  end

end
