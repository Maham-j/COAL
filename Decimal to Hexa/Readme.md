

# 🚀 Decimal to Hexadecimal Conversion

## Overview

This assembly program converts the decimal number `251` to hexadecimal and prints it to the screen. Written in MASM, it runs in real mode (16-bit).

## How It Works 🛠️

1. **Initialize**: Load `251` into `AX`.
2. **Convert**: 
   - Repeatedly divide by `16`.
   - Push remainders (hex digits) onto the stack.
3. **Print**: 
   - Pop and convert remainders to ASCII (0-9, A-F).
   - Print each character using `INT 21h`.
4. **Exit**: End program with `INT 21h, 4Ch`.


### Notes 📌
- This code is for a 16-bit DOS environment. Use DOSBox for modern systems.

---
