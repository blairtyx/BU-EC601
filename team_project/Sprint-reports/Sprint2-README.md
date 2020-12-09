# Definition of Architecture



## BATS Computational module 



![Inter-nodes](https://github.com/blairtyx/EC601/blob/master/team_project/Sprint-reports/img/s2-Inter-nodes.png)





![Side-notes](https://github.com/blairtyx/EC601/blob/master/team_project/Sprint-reports/img/s2-side-nodes.png)



(control signal and flags have been ignored)





### Encoding module

#### How it works:

This module applies a BATS encoder on the data to be encoded. It converts the raw packets into BATS packets. It plays like the Fountain code generator (outer code in the BATS terms) with the a packetizer which wrap these packets up into transimitable packets in the exising networks. 

**Input:** raw packets (input data / sliced data segment)

**Output:** BATS packets (with headers)

#### Where:

In the source node of this BATS-style network

#### Who it works with:

**Frontend:** The file system in the source node would generate the raw data (more specifily, the information source). 

**Backend:** The output of this module (BATS packets) would be passed to the Recoding module for furture encoding. 

#### What's inside

**BATS encoder:** encoding the raw packets into BATS codes 

**Packetizer:** prepends the header to batches

#### Note

The source node may contain several encoding module, since the protocol paradigm suggests, a separate encoding module would be used for different source file. 



### Recoding module

#### How it works:

**Input:** BATS packets

**Output:** BATS packets

#### Where:

Both source node and intermediate nodes

#### What's inside

**ISMU(Input stream management unit):** handle the incoming virtual data link by a) redistribution, b) transmision finished flag, c)  stream error handler ( break link or out-of-order packets)

**recoding unit:** recoding the packets packets

batch buffer: store the incoming, classified packets.

**OSMU(output stream management unit):** handle the outgoing virtual data link

#### Who it works with: 

**Frontend:** Internet Packet receiver. 

**Backend:** Internet Packet sender.





### Decode module

#### How it works: 

The decode module 

**Input:** BATS packets

**Output:** raw data/ recovery info

#### Where:

At receriver/destination node

#### What's inside:

**Demultiplexer:** distribute the BATS packets to the correct data link/flow

depacketizer: converts the BATS code into raw packets.

**BATS decoder:** Decode the information based on the packets and coefficient vectors it receives.

#### Who it works with: 

Frontend: Internet receiver

**Backend:** filesystem



# Tcheology Selection and Justification

### AWS FPGA

#### Software

### Xilinx FPGA 

#### Hardware

FPGA chip: XC7A35T-2FGG484I 

- ~~Button and LED~~

- Internet Interface: Micrel KSZ9031RNX

- DDR3 chip: Micron 2Gbit(256MB)

#### Software: 
~~Vivado WebPack Tool~~




# Functional demonstration of major user story



delayed





# Sprint 3

- Finish Internet Interface
  -  MAC, FIFO (may try opencores.org solutions)
- Controller
- (DDR3)
- (Encoding) (Fountain code generator)