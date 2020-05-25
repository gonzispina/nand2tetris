// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,

  @SCREEN // Initial position is left top pixel
  D=A
  @position
  M=D-1

(LOOP)
  @KBD // Read keyboard
  D=M
  @BLACK
  D;JGT // If D>0 go blacl
  @WHITE
  0;JMP // else go white

(WHITE)
  @SCREEN // If position is left top, screen is already white so we must jump to loop
  D=A-1
  @position
  D=D-M
  @LOOP
  D;JEQ

  // Else: We paint the screen with white pixels
  @position
  A=M
  M=0

  @position // Move position forward
  M=M-1

  @LOOP // Return to loop
  0;JMP

(BLACK)
  @24576 // If position is right bottom, screen is already black so we must jump to loop
  D=M
  @position
  D=D-M
  @LOOP
  D;JEQ

  // Else: We paint the screen with black pixels
  @position
  A=M // Set pixel to black
  M=1

  @position // Move position forward
  M=M+1

  @LOOP // Return to loop
  0;JMP

  @END
(END)
 0;JMP