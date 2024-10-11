## Reverse Input and Display
 
## 📋 Overview
This program takes user input character by character until the **Enter** key (carriage return) is pressed, then reverses the input and displays it.

## 🛠️ Requirements
- **Assembler**: TASM/MASM or compatible assembler
- **Operating System**: DOS-based environment for `INT 21h` system calls

## 📝 Features
- **Input**: Reads characters from the keyboard one by one.
- **Reverse**: Once the input is complete (indicated by pressing Enter), the program reverses the input and prints it character by character.
- **Display**: Outputs the reversed input.

## 🧩 Code Structure
1. **Data Section**: Declares an array for storing input and a new line string.
2. **Input Loop**: Collects input and pushes each character onto the stack.
3. **Reverse Output**: Pops characters off the stack in reverse order and prints them.

## 🚀 Execution
1. Input characters.
2. Press **Enter** to trigger the reversal.
3. Reversed string is displayed immediately.

