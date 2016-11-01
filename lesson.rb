class Lesson

  attr_accessor :instructor, :average

  def initialize(params = {})
    super
    @instructor = params[:instructor] if params[:instructor]
    @subject = params[:subject] if params[:subject]
  end

end
