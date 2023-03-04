class Grader
    def initialize
      print "What is your name? "
      @name = gets.chomp
      print "What is the name of your assignment? "
      @assignment = gets.chomp
      print "What is the number grade of your assignment? "
      @grade = Integer(gets.chomp)
    end
    
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
  rescue Exception => e
    puts "Error Message: #{e}"
  end
  