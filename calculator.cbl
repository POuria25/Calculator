       IDENTIFICATION DIVISION.
           PROGRAM-ID. calculator.
           DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 NUM1 PIC 9(12).
           01 NUM2 PIC 9(12).
           01 RESULT PIC zzz,zzz,zz9.99.
           01 OPERATION PIC X(12).

           PROCEDURE DIVISION.

           MAIN-PARA.

               DISPLAY 'Enter first number: '.
               ACCEPT NUM1.
               DISPLAY 'Enter second number: '.
               ACCEPT NUM2.
               DISPLAY 'Choose an operation (+, -, x, [ / or : ] , % )'.
               ACCEPT OPERATION.

               EVALUATE TRUE
                   WHEN OPERATION = "+"
                       PERFORM CALCULATE-SUM
                   WHEN OPERATION = "-"
                       PERFORM CALCULATE-MINUS
                   WHEN OPERATION = "x"
                       PERFORM CALCULATE-MULTIPLICATION
                   WHEN OPERATION = "/" OR OPERATION = ":"
                       PERFORM CALCULATE-DIVISION
                   WHEN OPERATION = "%"
                       PERFORM CALCULATE-MODULO
                   WHEN OTHER
                       DISPLAY 'SUPPORTED OPERATIONS ARE +, -, X, /'
                       DISPLAY ' or :, %'
               END-EVALUATE.

               STOP RUN.

           CALCULATE-SUM.
               COMPUTE RESULT = NUM1 + NUM2.
               DISPLAY 'The sum is ' RESULT. 

           CALCULATE-MINUS.
               COMPUTE RESULT = NUM1 - NUM2.
               DISPLAY 'The difference is ' RESULT.

           CALCULATE-MULTIPLICATION.
               COMPUTE RESULT = NUM1 * NUM2.
               DISPLAY 'The product is ' RESULT.

           CALCULATE-DIVISION.
               IF NUM2 = 0
                   DISPLAY 'Division by zero is not allowed.'
               ELSE
                   COMPUTE RESULT = NUM1 / NUM2
                   DISPLAY 'The quotient is ' RESULT
               END-IF.

           CALCULATE-MODULO.
               IF NUM2 = 0
                   DISPLAY 'Modulo by zero is not allowed.'
               ELSE
                   COMPUTE RESULT = FUNCTION MOD(NUM1, NUM2)
                   DISPLAY 'The remainder is ' RESULT
               END-IF.


