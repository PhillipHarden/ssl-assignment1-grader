class Grader:
    # method to convert number grades to letter grades
    def convert_grade(self):
        if self.grade > 100 or self.grade < 0:
            raise ValueError("Grade must be between 0 and 100")
        elif self.grade >= 90:
            return "A"
        elif self.grade >= 80:
            return "B"
        elif self.grade >= 70:
            return "C"
        elif self.grade >= 60:
            return "D"
        else:
            return "F"
        
    # method to store the user input
    def __init__(self):
        self.name = input("What is your name? ")
        self.assignment = input("What is the name of your assignment? ")
        self.grade = float(input("What is the number grade of your assignment? "))       
            
try:
    grader = Grader()
    letter_grade = grader.convert_grade()
    print(f"{grader.name} got a {letter_grade} on {grader.assignment}")
except Exception as e:
    print(f"Error Message: {e}")
