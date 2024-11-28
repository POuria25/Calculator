# Calculator
  This COBOL program is a simple command-line calculator. It accepts two numeric inputs and allows the user to perform basic arithmetic operations such as addition, subtraction,       multiplication, or division. The program ensures readable output formatting for the result, making it user-friendly and efficient for basic calculations. Ideal for learning COBOL    fundamentals and understanding arithmetic operations in a structured programming approach.

# Features:
  Supports addition, subtraction, multiplication, and division.
  Accepts user input for two numbers and the desired operation.
  Formats the output for better readability.
  Demonstrates COBOL's structured programming capabilities.

# Structure:
  Identification Division:
  Declares the program name as calculator.

# Data Division:
  NUM1 and NUM2: Variables to store the input numbers.
  RESULT: Variable to store and format the output result.
  OPERATION: Variable to store the user's choice of operation.
  Procedure Division:
  Prompts the user:
  To enter the first number.
  To enter the second number.
  To select an operation (addition, subtraction, multiplication, or division).
  Performs the operation based on user input.
  Displays the formatted result.

# Usage:
  Compile the COBOL program using a COBOL compiler (e.g., GnuCOBOL).
  Run the program from the command line.
  Follow the prompts to enter two numbers and select an operation.
  View the calculated result.
  
# Example Output:
  Enter first number: 100
  Enter second number: 25
  Choose operation (ADD/SUB/MUL/DIV): ADD
  Result: 125.00
  
# Requirements:
  A COBOL compiler (e.g., GnuCOBOL).
  Basic understanding of COBOL programming.

# How to Run:
  Save the program as calculator.cbl.
  Compile the program:
    cobc -x calculator.cbl -o calculator
    ./calculator

# Future Improvements:
  Add input validation to handle non-numeric inputs.
  Include more operations, such as modulus or power.
  Enhance user interface with clearer error messages and prompts.

# License:
  This project is open-source and available for educational and personal use.
