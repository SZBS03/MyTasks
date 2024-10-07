# **MYTASKS / SCALA / LOGISIM-CIRCUIT**

---

## **SCALA -> ASSIGNMENTS**
### **Branch: MyTasks**
- **Assignment #01**: `(2 Tasks, with 4-5 parts each)`
- **Assignment #02**: `(8 Exercises)`

### **Software Setup:**
- **IDE**: Intellij IDEA
- **Extensions**: 
  - `openjdk-16-jdk`
  - `sbt-1.10.2`

### **File Format**:
- Scala files use the `.scala` extension.

---

### **Brief Explanation of Functional SCALA:**

Functional Scala emphasizes immutability and the use of functions as first-class objects. The main focus is on declarative programming, where you describe *what* your program should do, rather than *how* to do it, relying heavily on recursion and higher-order functions. Here's a quick breakdown:
- **Immutability**: Variables, once initialized, cannot be altered, preventing unintended side effects.
- **Pure Functions**: Functions that return the same output given the same input and have no side effects.
- **Higher-Order Functions**: Functions that take other functions as parameters or return them.
- **Pattern Matching**: A powerful feature that simplifies control flow by matching data structures directly.

---

## **LOGISIM -> Single Cycle Processor**
### **Branch: Circuits**
1. **Program Counter**: Tracks the current instruction address and increments by 4 (or jumps for branch/jump instructions).
2. **Instruction Memory**: Stores the set of instructions that the processor executes in binary form.
3. **Control Decoder**: Reads the opcode from the instruction and generates the necessary control signals (ALUOp, MemRead, MemWrite, etc.).
4. **Register File**: Stores temporary data in registers (`x0` through `x31`). The write-back stage writes results back here.
5. **ALU**: Performs all arithmetic and logical operations, such as addition, subtraction, AND, OR, and compares.
6. **Data Memory**: Contains memory for data that is read from or written to, based on the instruction (e.g., `lw`, `sw`).
7. **Data Memory Interface**: Ensures correct communication between the ALU and memory for loading/storing operations.
8. **Write Back**: Handles writing the results of computations back to the register file.

### **Software Setup:**
- **Software**: `logisim-win-2.7.1`
- **Extensions**: 
  - `jre-8u421-windows-x64`

### **File Format**:
- Logisim files use the `.circuits` extension.

---

### **Logisim Circuit Diagram**:
Here's a visual representation of the **Single Cycle Processor** implemented in Logisim:

![Single Cycle Processor](https://github.com/SZBS03/MyTasks/tree/circuits/Assignment/single_cycle_processor_logisim/single_cycle_processor_logisim.PNG)

---


