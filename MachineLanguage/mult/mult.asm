// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
  @i
  M=0 // Set i = 0
  @R2
  M=0 // Initialize R2
(LOOP)
  @i
  D=M // D = i counter
  @R0
  D=D-M // i - R0
  @END
  D;JEQ // If i - R0 = 0 then jump to END

  @R1
  D=M
  @R2
  M=M+D // Set R2 = sum

  @i
  M=M+1 // i = i + 1

  @LOOP
  0;JMP // Inconditional jump to the loop's beginning
(END)
  @END
  0;JMP

