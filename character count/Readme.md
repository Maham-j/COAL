### 📝 Character Count Program - README

---

This program counts the number of characters a user inputs until Enter is pressed and then displays the count. 📜🔢

**✨ How It Works:**
- **Input Loop**: Reads characters one by one. ⌨️
- **Character Count**: Increments the count for each character. ➕
- **Display**: Shows the total count when Enter is pressed. 📊

**🔑 Key Instructions:**
- `INT 21h, AH=01h`: Reads a character.
- `CMP BL, 13`: Checks for Enter.
- `INT 21h, AH=02h`: Displays the count.

