# Blockchain Development Tasks

# 📦 Task 1 - Simple Storage Smart Contract

## 📌 Project Overview

The **Simple Storage Smart Contract** is a beginner-friendly Solidity project that demonstrates the fundamental concepts of Ethereum smart contract development. The contract stores an integer value on the blockchain and provides functions to increment and decrement the value.

This project was developed, compiled, deployed, and tested using **Remix IDE** and the **Remix Virtual Machine (Remix VM)**.

---

# 🎯 Objective

Develop a Solidity smart contract that:

- Stores an integer value.
- Allows incrementing the value by one.
- Allows decrementing the value by one.
- Makes the value publicly accessible.
- Compiles, deploys, and executes successfully.

---

# ✨ Features

- ✅ Stores an integer value on the blockchain.
- ✅ Public getter function generated automatically.
- ✅ Increment function.
- ✅ Decrement function.
- ✅ Prevents the value from becoming negative.
- ✅ Beginner-friendly and well documented.
- ✅ Compatible with Solidity 0.8.x.

---

# 🛠️ Technologies Used

| Technology | Purpose |
|------------|---------|
| Solidity ^0.8.20 | Smart Contract Development |
| Remix IDE | Writing, compiling, and deploying contracts |
| Remix VM | Local Ethereum blockchain for testing |
| Ethereum | Blockchain platform |

---

# 📂 Project Structure

```
Task-1-SimpleStorage/
│
├── SimpleStorage.sol
├── README.md
└── screenshots/
    ├── compile-success.png
    ├── deploy-contract.png
    ├── initial-value.png
    ├── increment-test.png
    └── decrement-test.png
```

---

# 📜 Smart Contract Explanation

## State Variable

```solidity
uint256 public number;
```

Stores the current integer value.

Since the variable is declared as **public**, Solidity automatically creates a getter function that allows anyone to read the stored value without writing additional code.

Initial value:

```
0
```

---

## Constructor

```solidity
constructor() {
    number = 0;
}
```

The constructor runs only once when the smart contract is deployed.

Its purpose is to initialize the stored number with the default value of **0**.

---

## Increment Function

```solidity
function increment() public {
    number += 1;
}
```

### Purpose

Increases the stored integer value by **1**.

### Example

Before

```
0
```

After

```
1
```

Another Call

```
2
```

---

## Decrement Function

```solidity
function decrement() public {
    require(number > 0, "Number cannot be less than zero");
    number -= 1;
}
```

### Purpose

Decreases the stored integer value by **1**.

### Validation

```solidity
require(number > 0, "Number cannot be less than zero");
```

Ensures that the stored value never becomes negative.

If the current value is **0**, the transaction is reverted with an error message.

Example

Before

```
2
```

After

```
1
```

---

# 🔄 Workflow

```
Deploy Contract

      │
      ▼

Initialize number = 0

      │
      ▼

Call increment()

      │
      ▼

Increase value by 1

      │
      ▼

Call decrement()

      │
      ▼

Decrease value by 1

      │
      ▼

Read updated value using getter
```

---

# ▶️ Deployment Steps

## Step 1

Open **Remix IDE**

---

## Step 2

Create

```
SimpleStorage.sol
```

---

## Step 3

Paste the Solidity smart contract code.

---

## Step 4

Compile the contract using

```
Solidity Compiler
```

---

## Step 5

Go to

```
Deploy & Run Transactions
```

---

## Step 6

Select

```
Environment → Remix VM
```

---

## Step 7

Click

```
Deploy
```

---

# 🧪 Testing

## Test Case 1

### Initial Value

```
number = 0
```

Expected Result

```
0
```

---

## Test Case 2

### Call increment()

Expected Result

```
1
```

---

## Test Case 3

### Call increment() again

Expected Result

```
2
```

---

## Test Case 4

### Call decrement()

Expected Result

```
1
```

---

## Test Case 5

### Call decrement() when value is 0

Expected Result

```
Transaction Reverted

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

# 🔒 Smart Contract Highlights

This smart contract demonstrates several Solidity best practices:

- Uses `uint256` for integer storage.
- Uses a constructor for initialization.
- Uses `require()` for input validation.
- Prevents integer underflow.
- Uses Solidity's automatic public getter.
- Includes NatSpec comments for better documentation.

---

# 📚 Learning Outcomes

By completing this project, I gained practical knowledge of:

- Solidity syntax
- Smart contract architecture
- State variables
- Constructors
- Public visibility
- State-changing functions
- Require statements
- Integer operations
- Smart contract compilation
- Smart contract deployment
- Testing using Remix IDE

---

# 🚀 Future Improvements

Possible enhancements include:

- Add a reset function.
- Allow users to set a custom value.
- Restrict access using contract ownership.
- Emit events for increment and decrement actions.
- Add unit tests using Hardhat or Foundry.
- Integrate with a frontend using React or Next.js.

---

# 👨‍💻 Author

**Tejasri Konidena**

Aspiring Full Stack & Blockchain Developer

---

# 📄 License

This project is licensed under the **MIT License**.



