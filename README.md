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
```

## ⚙️ Build & Run Instructions

Follow these steps to compile and run the Flex+Bison based instruction generator:

---

### 🧰 Prerequisites

Make sure you have the following installed:

- [Flex](https://github.com/westes/flex)
- [Bison](https://www.gnu.org/software/bison/)
- GCC (C compiler)

Install them on Ubuntu/Debian using:

```bash
sudo apt update
sudo apt install flex bison gcc
```
🏗️ Build Steps
Generate Bison Parser Code:

bash
Copy
Edit
bison -d expr.y
This produces expr.tab.c (parser code) and expr.tab.h (token definitions).

Generate Flex Lexer Code:

bash
Copy
Edit
flex expr.l
This creates lex.yy.c.

Compile Everything Together:

bash
Copy
Edit
gcc expr.tab.c lex.yy.c -o expr -lfl
This links the Flex library (-lfl) and generates an executable named expr.

▶️ Run the Program
bash
Copy
Edit
./expr
Then type a sample input like:

c
Copy
Edit
a = b + c * d;
Press Enter and you'll see the generated instructions.

🔁 Optional: Clean Build
To delete generated files and start fresh:

bash
Copy
Edit
rm expr expr.tab.* lex.yy.c
