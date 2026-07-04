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

- Successful compilation
- <img width="1918" height="907" alt="Screenshot 2026-07-04 220420" src="https://github.com/user-attachments/assets/ea234e7c-d921-4350-a77f-9e465fd61740" />

- Contract deployment
- <img width="1918" height="917" alt="Screenshot 2026-07-04 220714" src="https://github.com/user-attachments/assets/c4a8ddba-65d4-4277-bdd7-7b7f5122cd7f" />

- Initial value
- <img width="1918" height="913" alt="Screenshot 2026-07-04 220927" src="https://github.com/user-attachments/assets/709c0ec3-ca15-4577-9601-283471d42d4a" />

- Increment operation
- <img width="1915" height="912" alt="Screenshot 2026-07-04 221057" src="https://github.com/user-attachments/assets/dbec4691-6680-47c4-bd24-c86acf2c141e" />

<img width="1918" height="912" alt="Screenshot 2026-07-04 221206" src="https://github.com/user-attachments/assets/7d750b49-0b1f-46da-9c45-233295585645" />


- Decrement operation
- <img width="1917" height="906" alt="Screenshot 2026-07-04 221332" src="https://github.com/user-attachments/assets/bc0be36d-c1bd-4dd2-ace3-b541533d33ab" />
<img width="1918" height="906" alt="Screenshot 2026-07-04 221447" src="https://github.com/user-attachments/assets/05c18529-8f63-4109-90b0-cb2b78fc0f2b" />

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
