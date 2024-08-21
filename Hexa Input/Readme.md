# Hexadecimal Input Program 🖥️

## Overview 📋
This program reads a hexadecimal number from user input and stores it as a binary value in the BX register. The input can include both digits (`0-9`) and letters (`A-F`). The program uses low-level assembly language to achieve this conversion.

## How It Works ⚙️

1. **Initialization**:  
   The data segment is set up and the BX register is cleared to store the input.

2. **Input Handling**:  
   The program reads each character input by the user:
   - If it's a digit (`0-9`), it is converted to its numerical value by subtracting `48` (ASCII value of '0').
   - If it's a letter (`A-F`), it is converted to its corresponding hexadecimal value by subtracting `55`.
   
3. **Hexadecimal Construction**:  
   The hexadecimal value is constructed in the BX register by shifting the existing value left by 4 bits (to make space for the new digit) and adding the new digit.

4. **Program Exit**:  
   The program exits when the user presses Enter (`Carriage Return`).

## Usage 🛠️

1. Run the program.
2. Enter a hexadecimal number using digits (`0-9`) and letters (`A-F`).
3. Press Enter to end the input.

## Notes 📝

- This program is intended for hexadecimal input only.
- The program automatically handles case-insensitive input (`a-f` or `A-F`).

## Exit Condition 🔚

- The program exits gracefully when the user presses Enter.

## 🌐 Connect with Me 

Discover more exciting coding projects on my [GitHub repository](https://github.com/Maham-j)

Connect with me on [LinkedIn](https://www.linkedin.com/in/maham-jamil-268584267)

Connect with me on HackerRank: [HackerRank ](https://www.hackerrank.com/maham_jamil)

---

