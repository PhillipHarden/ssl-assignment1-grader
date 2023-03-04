// import the readline module from Node.js to allow reading input from the command line
const readline = require("readline");

// create an instance of the readline interface with process.stdin as the input stream and process.stdout as the output stream
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});

class Grader {
  constructor() {
    rl.question("What is your name? ", (name) => {
      if (!name) {
        console.log("Error Message: Name is required.");
        rl.close();
        return;
      }
      this.name = name;
      rl.question("What is the name of your assignment? ", (assignment) => {
        if (!assignment) {
          console.log("Error Message: Assignment name is required.");
          rl.close();
          return;
        }
        this.assignment = assignment;
        rl.question(
          "What is the number grade of your assignment? ",
          (grade) => {
            if (!grade || isNaN(grade) || grade % 1 !== 0 || grade > 100) {
              console.log("Error Message: Grade is required and must be a number between 0 and 100.");
              rl.close();
              return;
            } else {
              this.grade = parseInt(grade);
              let letter_grade = this.convert_grade();
              console.log(
                `${this.name} got a ${letter_grade} on ${this.assignment}`
              );
              rl.close();
            }
          }
        );
      });
    });
  }

  convert_grade() {
    if (this.grade >= 90) {
      return "A";
    } else if (this.grade >= 80) {
      return "B";
    } else if (this.grade >= 70) {
      return "C";
    } else if (this.grade >= 60) {
      return "D";
    } else {
      return "F";
    }
  }
}

try {
  const grader = new Grader();
} catch (e) {
  console.log(`Error Message: ${e}`);
}