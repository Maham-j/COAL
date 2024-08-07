
## 📜 Project Description
This project is a simple assembly language program that reads a character from the keyboard and displays it at the current text position on the same line.

## 🛠️ How It Works
1. **Setting Up Data Segment**:  
 The program starts by setting up the data segment using the instruction `mov ax,@data` and `mov ds,ax`.
 
2. **Reading a Character**:  
  It then reads a character from the keyboard using DOS interrupt `int 21h` with `ah = 01`.

3. **Storing the Character**:  
   The read character is stored in the `bl` register.
     
4. **Displaying the Character**:  
   The character stored in `bl` is then moved to `dl` for display. It uses DOS interrupt `int 21h` with `ah = 02` to display the character.
   
5. **Exiting the Program**:  
   Finally, the program exits gracefully using DOS interrupt `int 21h` with `ah = 4ch`.  


## Connect with Me 🌐 

Discover more exciting coding projects on my [GitHub repository](https://github.com/Maham-j)

Connect with me on [LinkedIn](https://www.linkedin.com/in/maham-jamil-268584267)

Connect with me on HackerRank: [HackerRank ](https://www.hackerrank.com/maham_jamil)

---

 



