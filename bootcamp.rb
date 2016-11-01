require "./student"
require "./instructor"
require "./lesson"

@lessons = []
@instructors =[]

def create_lesson(subject, instructor)
  @lessons << Lesson.new({
    subject: subject,
    instructor: instructor
  })
end

def create_instructor(params)
  @instructors << Instructor.new(params)
end

def find_instructor(nickname)
  @instructors.each do |instructor|
    return instructor if instructor.nickname == nickname
  end
end

def print_instructors
  @instructors.each_with_index do |instructor, index|
    puts "#{index} -> #{instructor.first_name} #{instructor.last_name}: #{instructor.claim_your_strength}"
  end
end

def print_lessons
  @lessons.each_with_index do |lesson, index|
    puts "Lesson number#{index} => #{lesson.subject}"
    puts "Lesson instructor: #{lesson.instructor.nickname}"
  end
end

begin
  puts "WELCOME TO THE RUBY BOOTCAMP PROGRAM"
  puts "1. Create a new Instructor"
  puts "2. Create a new Lesson"
  puts "10. Pirnt lessons"
  puts "11. Print instructors"

  @user_inpunt = gets.chomp.downcase
  case @user_inpunt
    when "1"
      instructor_params = {}
      puts "Please type the first name"
      instructor_params[:first_name] = gets.chomp.downcase
      puts "Please type the last name"
      instructor_params[:last_name] = gets.chomp.downcase
      puts "Please type the nickname"
      instructor_params[:nickname] = gets.chomp.downcase
      puts "Please type the strength"
      instructor_params[:strength] = gets.chomp.downcase
      puts "Please type the age"
      instructor_params[:age] = gets.chomp
      create_instructor instructor_params
    when "2"
      if @instructors.any?
        puts "Please type the subject of the lesson"
        subject = gets.chomp.downcase
        puts "Please select the instructor(type the index)"
        print_instructors
        instructor_index = gets.chomp.to_i
        create_lesson subject, @instructors[instructor_index]
      else
        "Must exist al least one instructor so you can create a lesson"
      end
    when "10"
      print_lessons
    when "11"
      print_instructors
  end
end while @user_inpunt != "exit"
