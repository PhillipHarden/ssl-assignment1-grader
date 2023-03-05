class Grader
  def initialize
    loop do
      print "What is your name? "
      @name = gets.chomp
      break unless @name.empty?
      puts "Name cannot be blank"
    end

    loop do
      print "What is the name of your assignment? "
      @assignment = gets.chomp
      break unless @assignment.empty?
      puts "Assignment name cannot be blank"
    end

    loop do
      print "What is the number grade of your assignment? "
      @grade = Float(gets.chomp)
      break if @grade.between?(0, 100)
      puts "Grade should be between 0 and 100"
    end
  endnode grader.js
  

  def convert_grade
    if @grade >= 90
      "A"
    elsif @grade >= 80
      "B"
    elsif @grade >= 70
      "C"
    elsif @grade >= 60
      "D"
    else
      "F"
    end
  end
end

begin
  grader = Grader.new
  letter_grade = grader.convert_grade
  puts "#{grader.instance_variable_get(:@name)} got a #{letter_grade} on #{grader.instance_variable_get(:@assignment)}"
rescue ArgumentError => e
  puts "Error Message: #{e}"
  retry
end
