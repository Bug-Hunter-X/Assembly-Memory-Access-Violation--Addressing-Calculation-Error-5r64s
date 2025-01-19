# Assembly Memory Access Violation Bug

This repository demonstrates a common yet subtle error in assembly programming: memory access violations due to incorrect calculations in memory addresses.

The `bug.asm` file contains code with a potential error in memory address calculation using registers. The `bugSolution.asm` file provides a corrected version of the code.

## Bug Description

The original assembly code contains a potential for memory access violations resulting from incorrect values in registers `ebx` and `ecx` that are used to calculate the target memory address. This can lead to segmentation faults, data corruption, or program crashes.

## Solution

The corrected code in `bugSolution.asm` addresses these issues by implementing appropriate checks or altering the register values to ensure that memory access is within the valid range and properly aligned.  Specifically, bounds checking and input validation should be added to the original code to prevent this type of issue.