class Lesson

  attr_accessor :instructor, :subject

  def initialize(params = {})
    @instructor = params[:instructor] if params[:instructor]
    @subject = params[:subject] if params[:subject]
  end

end
