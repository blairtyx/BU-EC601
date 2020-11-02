# Sprint 1

### Design Path

1. Understand the BATS protocol
2. Design the hardware for BATS operations
   1. Find out what module is computationally consuming / not suitable for CPU.
   2. Write Verilog to describe the hardware behaviour of these module 
   3. Accelerate the overall performance (maybe)
3. Integrate this FPGA module with an ARM-based edge device.
   1. Softcore: Designstart by ARM , Cortex M/A5 cores on an FPGA. (simulating the ARM)
   2. (if possible) Hardcore: ZYNQ/Altera which has ARM processors on board. (Real ARM)

### Define your product mission

- Implement decode and encode module on FPGA for BATS protocol.
- Link these modules to a web-terminal (PC, or an ARM embedded device)

### Comprehensive literature review (build on project 1)

Yin, H. H. F., Yeung, R. W., & Yang, S. (2020). A protocol design paradigm for batched sparse codes. Entropy, 22(7), 1–57. [https://doi.org/10.3390/e22070790](https://doi.org/10.3390/e22070790)

Zhou, Z., Kang, J., & Zhou, L. (2020). Joint BATS Code and Periodic Scheduling in Multihop Wireless Networks. IEEE Access, 8, 29690–29701. [https://doi.org/10.1109/ACCESS.2020.2972110](https://doi.org/10.1109/ACCESS.2020.2972110)

Zhou, Q., Yang, S., Yin, H. H. F., & Tang, B. (2017). On BATS Codes with Variable Batch Sizes. IEEE Communications Letters, 21(9), 1917–1920. [https://doi.org/10.1109/LCOMM.2017.2713813](https://doi.org/10.1109/LCOMM.2017.2713813)

Zhang, H., Sun, K., Huang, Q., Wen, Y., & Wu, D. (2016). FUN Coding: Design and Analysis. IEEE/ACM Transactions on Networking, 24(6), 3340–3353. [https://doi.org/10.1109/TNET.2016.2516819](https://doi.org/10.1109/TNET.2016.2516819)

Yang, S., & Yeung, R. W. (2014). Batched sparse codes. IEEE Transactions on Information Theory, 60(9), 5322–5346. [https://doi.org/10.1109/TIT.2014.2334315](https://doi.org/10.1109/TIT.2014.2334315)

### Define MVP and MVP user stories

#### MVP

- Control module (Soft ARM core)
- Encode module
- Decode module
- Internet module
- Storage / Buffer / Memory
  - Stores packets
  - Degree distribution
  - Random matrix generator

#### MVP user stories

- Devices which are operating in a lossy-wireless multi-hop communication environment, want to reduce their rate of packet loss.

### Technologies to evaluate and reason for choosing them

- AWS-FPGA
  - portable
  - easy for team-development
- Xilinx FPGA
  - no web legacy

### Setup of development environment

Finished:

- Xilinx FPGA (Vivado)
- C/C++ environment

Todo:

- AWS-FPGA



### Links
[simbats](https://github.com/blairtyx/simbats)


[AWS-fpga](https://github.com/aws/aws-fpga)
