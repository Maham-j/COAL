 

 

# 🛠 Simple Decimal Output Program

This assembly language program reads a decimal number from user input, processes it, and then outputs the result.

## 📋 Overview

### 1. Setup
- **Model & Stack**: Uses `.model small` and allocates `100h` bytes for the stack.
- **Data**: The `.data` section handles newline characters.

### 2. Main Flow
- The `main` procedure initializes the data segment and calls `input_decimal`.
- The program terminates with `MOV AH, 4Ch` and `INT 21h`.

### 3. Decimal Input Processing
- **Input**: Reads characters using `INT 21h`.
- **Conversion**: Converts ASCII digits to their numerical value by subtracting `48`.
- **Accumulation**: Builds the complete decimal number via arithmetic operations.
- **Exit**: Ends when the Enter key (`13` ASCII) is pressed.

### 4. Program Termination
- Exits with `MOV AH, 4Ch` and `INT 21h`.

## 📝 Notes
- This program serves as a basic example, ideal for expansion.

## Connect with Me 🌐

- [GitHub](https://github.com/Maham-j)
- [LinkedIn](https://www.linkedin.com/in/maham-jamil-268584267)
- [HackerRank](https://www.hackerrank.com/maham_jamil)

---
