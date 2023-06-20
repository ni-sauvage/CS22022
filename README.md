# CSU22022
## A repository for CSU22022 Computer Architecture I as taught by Dr. Michael Manzke in 2022.
In this module, assessment was based solely on a singular project - this VHDL microprocessor. 

## This project is composed of:
- The Control Unit which includes, but is not limited to [Control Memory](https://github.com/ni-sauvage/CS22022/blob/main/Components/Control_Memory42Bit_256_InitV2_20334203.vhd).
- [The Functional Unit](https://github.com/ni-sauvage/CS22022/blob/main/Components/functional_unit_20334203.vhd).
- [Carry-Look-Ahead Adder](https://github.com/ni-sauvage/CS22022/blob/main/Components/CarryLookAheadAdder32Bit_20334203.vhd).

These components are made up of sub-components which are further made up of sub-components. At the bottom of this hierarchy, this project is implemented at a gate level. 

Control memory is what controls what our microprocessor, I have encoded 15 instructions here. It is prescient to note that this does not fully encompass what the microprocessor is technically capable of, but rather what I had time to encode. 

The Functional Unit is the part of the microprocessor responsible for executing instructions. As such, it includes the [ALU](https://github.com/ni-sauvage/CS22022/blob/main/Components/ALU_20334203.vhd) and the [registers](https://github.com/ni-sauvage/CS22022/blob/main/Components/register_file_20334203.vhd).

### Functional Unit Demo
![Functional Unit Screenshot](https://github.com/ni-sauvage/CS22022/blob/main/Screenshots/FunctionUnit32Bit_20334203.png)

### The Finished Product
This microprocessor was able to execute a small programme which had been encoded into the Control Memory and following a Fetch-Decode-Execute cycle. No input from the testbench was necessary apart from toggling reset. In this sense, it is fully reprogrammable.

![Programme Being Executed](https://github.com/ni-sauvage/CS22022/blob/main/Screenshots/Microprocessor32Bit_V3_20334203.png)

### Is there any more on this?
Absolutely, feel free to peruse the [screenshots](https://github.com/ni-sauvage/CS22022/tree/main/Screenshots) subdirectory. It contains screenshots of all the testbenches being executed for the various components and brief explanations. 


