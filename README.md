# Two-Bit Subtractor

This repository contains the design and implementation of a **Two-Bit Binary Subtractor**. The circuit accepts two 2-bit binary numbers as input and produces their difference and a borrow bit.

## Overview

A 2-bit subtractor calculates the difference $A - B$, where $A$ and $B$ are 2-bit numbers.
- **Inputs**: $A$ ($A_1 A_0$), $B$ ($B_1 B_0$)
- **Outputs**: Difference ($D_1 D_0$), Borrow Out ($B_{out}$)

## Features

- **Logic Design**: Implemented using basic logic gates / Full Adders.
- **Scalable**: Can be cascaded for larger bit subtractions.
- **Verified**: Truth table and logic levels verified in simulation.

## Inputs and Outputs

| Signal | Type | Description |
| :--- | :--- | :--- |
| `A[1:0]` | Input | Minuend (The number being subtracted from) |
| `B[1:0]` | Input | Subtrahend (The number to subtract) |
| `Diff[1:0]` | Output | Result of $A - B$ |
| `Bout` | Output | Borrow indicator (if $B > A$) |

## Getting Started

1. Clone the repository:
   ```bash
   git clone [https://github.com/SaifoSaeed/Two-Bit-Subtractor.git](https://github.com/SaifoSaeed/Two-Bit-Subtractor.git)
