class Person

  attr_accessor :first_name, :last_name, :age, :id
  def initialize(params = {})
    @first_name = params[:first_name] if params[:first_name]
    @last_name = params[:last_name] if params[:last_name]
    @age = params[:age] if params[:age]
    @id = params[:id] if params[:id]
  end

  def claim_your_age
    "I am #{self.age}"
  end
end
