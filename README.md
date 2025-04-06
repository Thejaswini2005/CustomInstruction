# CustomInstruction
# 🛠️ Custom Instruction Generator using Flex & Bison

This project demonstrates a simple compiler front-end that parses arithmetic expressions and converts them into a custom instruction set format. It uses **Flex** (for lexical analysis) and **Bison** (for syntax parsing).

---

## 📌 Features

- Parses arithmetic assignments like `a = b + c * d;`
- Generates pseudo-assembly-like instructions
- Supports:
  - Variables and numeric constants
  - Operators: `+`, `-`, `*`, `/`

---

## 📁 File Structure

| File        | Description                                 |
|-------------|---------------------------------------------|
| `expr.l`    | Flex lexer: tokenizes the input             |
| `expr.y`    | Bison parser: builds parse tree and emits instructions |
| `Makefile`  | (Optional) Automates build process          |
| `README.md` | You're reading it!                          |

---

## 🧑‍💻 Example

### ➡️ Input
```c
a = b + c * d;


---
🟢 Output
asm
Copy
Edit
MUL t0, c, d
ADD t1, b, t0
STORE a, t1

---
🔧 Setup and Compilation
1. Install Dependencies
Make sure you have Flex and Bison installed:

bash
Copy
Edit
sudo apt install flex bison     # Ubuntu/Debian

---

2. Compile the Files

bash
Copy
Edit
bison -d expr.y
flex expr.l
gcc expr.tab.c lex.yy.c -o expr -lfl

---
3. Run the Parser
bash
Copy
Edit
./expr

Then input your expression like:

c
Copy
Edit
a = b + c * d;
Press Enter and the generated instruction will be printed.

---
🧠 How it Works
Flex (expr.l) identifies identifiers, numbers, and symbols.

Bison (expr.y) defines grammar rules and builds custom IR (intermediate representation) using temporary registers.

The parser constructs the code recursively and outputs it in a custom instruction format.

---
🚀 Future Enhancements
Support for parentheses ()

Error handling and semantic checks

Variable declarations and type support

Export instructions to a file

---
📜 License
This project is open-source and free to use under the MIT License.
