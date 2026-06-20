# 🔄 Flip-Flops using Verilog HDL

This repository contains the implementation and simulation of four fundamental flip-flops using **Behavioral Modeling in Verilog HDL**:

- SR Flip-Flop
- JK Flip-Flop
- D Flip-Flop
- T Flip-Flop

These flip-flops are the basic memory elements used in sequential digital circuits such as registers, counters, shift registers, and finite state machines.

---


# 1️⃣ SR Flip-Flop

## Description

The SR (Set-Reset) Flip-Flop stores one bit of data and has two control inputs:

- S = Set
- R = Reset

### Truth Table

| S | R | Q(next) | Operation |
|---|---|----------|-----------|
| 0 | 0 | Q | Hold |
| 0 | 1 | 0 | Reset |
| 1 | 0 | 1 | Set |
| 1 | 1 | X | Invalid |


## Description

The JK Flip-Flop is an improved version of the SR Flip-Flop that eliminates the invalid state.

### Truth Table

| J | K | Q(next) | Operation |
|---|---|----------|-----------|
| 0 | 0 | Q | Hold |
| 0 | 1 | 0 | Reset |
| 1 | 0 | 1 | Set |
| 1 | 1 | Q̅ | Toggle |



# 3️⃣ D Flip-Flop

## Description

The D (Data) Flip-Flop transfers the input data to the output at every positive clock edge.

### Truth Table

| D | Q(next) |
|---|----------|
| 0 | 0 |
| 1 | 1 |


# 4️⃣ T Flip-Flop

## Description

The T (Toggle) Flip-Flop changes its state whenever T = 1 and retains its state when T = 0.

### Truth Table

| T | Q(next) | Operation |
|---|----------|-----------|
| 0 | Q | Hold |
| 1 | Q̅ | Toggle |


# 🧪 Simulation

<img width="1622" height="912" alt="image" src="https://github.com/user-attachments/assets/76537f2d-0423-4939-a067-12a3dd73c1b2" />


### Clock Generation

```verilog
always #5 clk = ~clk;
```

### Test Cases

- SR Flip-Flop: Set, Reset, Hold
- JK Flip-Flop: Set, Reset, Toggle, Hold
- D Flip-Flop: Data Transfer
- T Flip-Flop: Toggle Operation

---



# 📊 Comparison of Flip-Flops

| Flip-Flop | Inputs | Operation |
|------------|---------|------------|
| SR | S, R | Set/Reset |
| JK | J, K | Set/Reset/Toggle |
| D | D | Data Storage |
| T | T | Toggle |

---

# 🚀 Applications

### SR Flip-Flop
- Memory Storage
- Control Circuits

### JK Flip-Flop
- Counters
- Frequency Dividers

### D Flip-Flop
- Registers
- Shift Registers
- Data Buffers

### T Flip-Flop
- Binary Counters
- Frequency Division Circuits

---



# 📈 Results

All four flip-flops were successfully implemented and simulated in Vivado. The output waveforms verified the expected behavior for each flip-flop according to their respective truth tables.















































