# Sprint3



### Packet Matrix Definition

#### Encoding process

1. slice a file into K original data packets/ data blocks.

2. each of these blocks has T symbols over a finite field of degree q = 2^8. 

   each of them are regarded as a column vector of the data matrix B. 

   hence, this data matrix has a size of T*K.

   one symbol in finite field F(2^8) means a byte of data. 


![data-blocks](https://github.com/blairtyx/EC601/blob/master/team_project/Sprint-reports/img/s3-data-blocks.png)

![data-vector](https://github.com/blairtyx/EC601/blob/master/team_project/Sprint-reports/img/s3-data-vector.png)

 3. generate the Batches (groups / chunks) by picking d (batch degree) packets from B data matrix, to form a new subset of the data matrix, B'. 

 4. Xi = Bi' * Gi. where Xi is the batch with batch ID i, and Bi' is one subset of the data matrix B, generated under a specific degree distribution. Gi is the batch generator matrix, whose elements are totally randomly generated symbols over the same finite field degree. (which should preserve the property of linear independent) The packets in one batch are random linear combination of the original packets.

    ![batch-packet](https://github.com/blairtyx/EC601/blob/master/team_project/Sprint-reports/img/s3-batch-packet.png)



#### Recoding process

##### For source node:

![recoding](https://github.com/blairtyx/EC601/blob/master/team_project/Sprint-reports/img/s3-recoding.png)



##### For intermediate nodes:

![recoding-inter](https://github.com/blairtyx/EC601/blob/master/team_project/Sprint-reports/img/s3-recoding-inter.png)

each hop would recalculate both coefficient field and the data field. 

##### For one batch packet:

![batch-packet-stru](https://github.com/blairtyx/EC601/blob/master/team_project/Sprint-reports/img/s3-batch-packet-stru.png)





### Computing Unit

Matrix Manipulation

- Multiplication (over finite field of 2^8 and 2^1)

  Less complicated, and suitable for massive parallelism. 

- Gaussian Elimination (Decoding part, over finite field of 2^8)

  1. Forward elimination

     Hard to implement parallelism

  2. Backward substitution

     Less complicated, and suitable for massive parallelism. 

