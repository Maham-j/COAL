

# 🛠 Simple Decimal Input Program

This program is a straightforward implementation in assembly language that reads a decimal number from user input. The program converts the user-entered digits into a complete decimal number using basic arithmetic operations.

## 📋 How It Works

### 1. Data and Stack Setup
- The program is set up with a `.model small` directive, using a stack of `100h` bytes.
- The `.data` section includes the `new` variable to handle newline characters.

### 2. Main Procedure
- The `main` procedure sets up the data segment and calls the `input_decimal` procedure.
- After the `input_decimal` procedure completes, the program terminates with a `MOV AH, 4Ch` and `INT 21h` instruction.

### 3. Input Decimal Procedure
- The `input_decimal` procedure reads characters from user input.
- Each character is converted from its ASCII value to a numerical value by subtracting `48`.
- The characters are then accumulated to form the complete decimal number.

#### Key Steps:
- **Reading Input**: The program uses `INT 21h` to read each character.
- **Conversion**: Subtracts `48` from the ASCII value of the digit to get its numerical form.
- **Accumulation**: Uses multiplication and addition to build the final number.
- **Exit Condition**: The loop continues until the Enter key (`13` in ASCII) is pressed, signaling the end of input.

### 4. Program Termination
- The program exits cleanly using `MOV AH, 4Ch` and `INT 21h`.


## 📝 Notes
- This program is a basic example and can be expanded to include further operations on the decimal input.

