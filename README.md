# Build a Modern Computer from First Principles: From Nand to Tetris I

## About
This is the first part of a two-part course in which students learn how to construct a modern +general-purpose computer from the ground up. The first part starts with Boolean algebra and the universal NAND gate and from this build the other elementary logic gates, a Central Processing Unit, a memory system, and a hardware platform. This is done using a simple, but effective, Hardware Description Language and a hardware simulator.

Different versions of this course have been taught at Harvard, Stanford, Chicago and 100+ universities and high schools all over the world. Both parts are currently available online for self-study through [coursera.org](https://www.coursera.org/learn/build-a-computer), and all course material and information can be found at [nand2tetris.org](https://www.nand2tetris.org/).

These are my solutions to the course's six projects. I hope that it will help someone else taking the course, but please do not copy solutions - being stuck is part of learning and there is much to learn by overcoming problems and finding solutions on your own. Note that there are often several ways to solve a problem, and I am open to suggestions/questions! 👩‍💻

## Projects

### Project 1: Elementary Logic Gates
This project includes building and simulating 15 elementary logic gates, starting from only a given NAND gate. Provided by the instructors
are .tst-files and .cmp-files for testing the chips using the hardware simulator.
<details>
  <summary>Complete chip-set</summary>
  
- Not
- And
- Or
- Xor
- Mux
- DMux
- Not16
- And16
- Or16
- Mux16
- Or8Way
- Mux4Way16
- Mux8Way16
- DMux4Way
- DMux8Way
</details>

### Project 2: ALU
The goal of the second project is to build "the centerpiece of the CPU", by which we mean the *Arithmetic Logic Unit*, or ALU. 
This chip performs many different arithmetic and logical operations, we provide our ALU with abilities to add, subtract numbers,
and perform basic logic on 16-bit inputs. Other functionality, such as multiplication, division and floating point arithmetic is not
implemented in the hardware, but will instead be added later at a higher level.
<details>
  <summary>Complete chip-set</summary>
  
  - HalfAdder
  - FullAdder
  - Add16
  - Inc16
  - ALU
</details>
