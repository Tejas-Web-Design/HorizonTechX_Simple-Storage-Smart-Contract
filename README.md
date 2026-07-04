# Blockchain Development Tasks

# 🚀 Task 1 - Simple Storage Smart Contract

## 📌 Project Overview

This project demonstrates the fundamentals of Ethereum smart contract development using **Solidity**. The contract stores a single integer value on the blockchain and provides functions to increment and decrement the value.

The project was developed and tested using **Remix IDE** and the **Remix VM** environment.

---

## 🎯 Objective

Build a smart contract that:

- Stores an integer value.
- Allows the value to be incremented by one.
- Allows the value to be decremented by one.
- Makes the stored value publicly readable.
- Compiles, deploys, and functions correctly.

---

## ✨ Features

- Public integer variable (`number`)
- Increment function
- Decrement function
- Prevents decrementing below zero
- Public getter generated automatically by Solidity
- Beginner-friendly and well documented

---

## 🛠️ Technologies Used

| Technology | Purpose |
|------------|---------|
| Solidity ^0.8.20 | Smart Contract Development |
| Remix IDE | Writing, compiling, and deploying contracts |
| Remix VM | Local blockchain testing |

---

## 📂 Project Structure

```
Task-1-SimpleStorage/
│
├── SimpleStorage.sol
├── README.md
└── screenshots/
```

---

## 📜 Smart Contract Explanation

### State Variable

```solidity
uint256 public number;
```

Stores the current value.

Since it is declared as **public**, Solidity automatically generates a getter function.

---

### Constructor

```solidity
constructor() {
    number = 0;
}
```

Initializes the contract with a value of **0** when deployed.

---

### Increment Function

```solidity
function increment() public {
    number += 1;
}
```

Increases the stored value by one.

Example:

```
0 → 1
1 → 2
2 → 3
```

---

### Decrement Function

```solidity
function decrement() public {
    require(number > 0, "Number cannot be less than zero");
    number -= 1;
}
```

Decreases the stored value by one while ensuring it never becomes negative.

Example:

```
3 → 2
2 → 1
1 → 0
```

---

## ▶️ Deployment Steps

1. Open Remix IDE.
2. Create `SimpleStorage.sol`.
3. Paste the Solidity code.
4. Compile using Solidity Compiler.
5. Open Deploy & Run Transactions.
6. Select Remix VM.
7. Click **Deploy**.

---

## 🧪 Testing

### Initial Value

```
number = 0
```

### After First Increment

```
number = 1
```

### After Second Increment

```
number = 2
```

### After Decrement

```
number = 1
```

### Edge Case

Attempting to decrement when the value is **0** will revert the transaction with the message:

```
Number cannot be less than zero
```

---

## 📸 Screenshots

Include screenshots demonstrating:

- Successful compilation
- Contract deployment
- Initial value
- Increment operation
- Decrement operation

Store them inside the `screenshots/` folder.

---

## 📈 Learning Outcomes

Through this project, I learned:

- Solidity syntax
- Smart contract structure
- State variables
- Constructors
- Public visibility
- State-changing functions
- Require statements
- Compilation and deployment using Remix IDE
- Smart contract testing on Remix VM

---

## 👨‍💻 Author

**Tejasri Konidena**

Aspiring Full Stack & Blockchain Developer
