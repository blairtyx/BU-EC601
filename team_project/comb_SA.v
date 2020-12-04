module comb_SA (
  input wire functionA,
  input wire clk,
  input wire rst,
  input start,
  input finish,
  input wire [19:0] op_in,
  input wire [9:0] data,
  output reg [9:0] data_out,
  output wire [19:0] op_out,
  output wire r_A_and
  );

  reg [9 : 0] functionA_dup;

  reg [9 : 1] start_tmp;
  reg [9 : 1] start_row;

  reg [9 : 1] finish_tmp;
  reg [9 : 1] finish_in;
  wire [9 : 0] finish_out;

  always @(posedge clk) begin
    functionA_dup[0] <= functionA;
    functionA_dup[1] <= functionA;
    functionA_dup[2] <= functionA;
    functionA_dup[3] <= functionA;
    functionA_dup[4] <= functionA;
    functionA_dup[5] <= functionA;
    functionA_dup[6] <= functionA;
    functionA_dup[7] <= functionA;
    functionA_dup[8] <= functionA;
    functionA_dup[9] <= functionA;

    start_tmp[1] <= start;
    start_row[1] <= start_tmp[1];
    start_tmp[2] <= start_row[1];
    start_row[2] <= start_tmp[2];
    start_tmp[3] <= start_row[2];
    start_row[3] <= start_tmp[3];
    start_tmp[4] <= start_row[3];
    start_row[4] <= start_tmp[4];
    start_tmp[5] <= start_row[4];
    start_row[5] <= start_tmp[5];
    start_tmp[6] <= start_row[5];
    start_row[6] <= start_tmp[6];
    start_tmp[7] <= start_row[6];
    start_row[7] <= start_tmp[7];
    start_tmp[8] <= start_row[7];
    start_row[8] <= start_tmp[8];
    start_tmp[9] <= start_row[8];
    start_row[9] <= start_tmp[9];

    finish_tmp[1] <= finish_out[0];
    finish_in[1]  <= finish_tmp[1];
    finish_tmp[2] <= finish_out[1];
    finish_in[2]  <= finish_tmp[2];
    finish_tmp[3] <= finish_out[2];
    finish_in[3]  <= finish_tmp[3];
    finish_tmp[4] <= finish_out[3];
    finish_in[4]  <= finish_tmp[4];
    finish_tmp[5] <= finish_out[4];
    finish_in[5]  <= finish_tmp[5];
    finish_tmp[6] <= finish_out[5];
    finish_in[6]  <= finish_tmp[6];
    finish_tmp[7] <= finish_out[6];
    finish_in[7]  <= finish_tmp[7];
    finish_tmp[8] <= finish_out[7];
    finish_in[8]  <= finish_tmp[8];
    finish_tmp[9] <= finish_out[8];
    finish_in[9]  <= finish_tmp[9];
  end

  /////////////////////////////////////
  // row 0
  // row 0, col 0

  wire start_in_0_0;
  wire start_out_0_0;

  wire [1:0] op_in_0_0;
  wire [1:0] op_out_0_0;

  wire r_0_0;

  wire data_in_0_0;
  wire data_out_0_0;

  assign data_in_0_0 = data[0];

  assign start_in_0_0 = start;
  assign op_in_0_0 = op_in[1:0];

  processor_AB AB_0_0 (
    .functionA  (functionA_dup[0]),
    .clk        (clk),
    .rst        (rst),
    .data_in    (data_in_0_0),
    .start_in   (start_in_0_0),
    .finish_in  (finish),
    .finish_out (finish_out[0]),
    .op_in      (op_in_0_0),
    .op_out     (op_out_0_0),
    .start_out  (start_out_0_0),
    .data_out   (data_out_0_0),
    .r          (r_0_0)
  );

  // row 0, col 1

  wire start_in_0_1;
  wire start_out_0_1;

  wire [1:0] op_in_0_1;
  wire [1:0] op_out_0_1;

  wire data_in_0_1;
  wire data_out_0_1;

  assign data_in_0_1 = data[1];

  assign start_in_0_1 = start_out_0_0;
  assign op_in_0_1 = op_out_0_0;

  processor_B B_0_1 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_0_1),
    .start_in  (start_in_0_1),
    .op_in     (op_in_0_1),
    .op_out    (op_out_0_1),
    .start_out (start_out_0_1),
    .data_out  (data_out_0_1)
  );

  // row 0, col 2

  wire start_in_0_2;
  wire start_out_0_2;

  wire [1:0] op_in_0_2;
  wire [1:0] op_out_0_2;

  wire data_in_0_2;
  wire data_out_0_2;

  assign data_in_0_2 = data[2];

  assign start_in_0_2 = start_out_0_1;
  assign op_in_0_2 = op_out_0_1;

  processor_B B_0_2 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_0_2),
    .start_in  (start_in_0_2),
    .op_in     (op_in_0_2),
    .op_out    (op_out_0_2),
    .start_out (start_out_0_2),
    .data_out  (data_out_0_2)
  );

  // row 0, col 3

  wire start_in_0_3;
  wire start_out_0_3;

  wire [1:0] op_in_0_3;
  wire [1:0] op_out_0_3;

  wire data_in_0_3;
  wire data_out_0_3;

  assign data_in_0_3 = data[3];

  assign start_in_0_3 = start_out_0_2;
  assign op_in_0_3 = op_out_0_2;

  processor_B B_0_3 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_0_3),
    .start_in  (start_in_0_3),
    .op_in     (op_in_0_3),
    .op_out    (op_out_0_3),
    .start_out (start_out_0_3),
    .data_out  (data_out_0_3)
  );

  // row 0, col 4

  wire start_in_0_4;
  wire start_out_0_4;

  wire [1:0] op_in_0_4;
  wire [1:0] op_out_0_4;

  wire data_in_0_4;
  wire data_out_0_4;

  assign data_in_0_4 = data[4];

  assign start_in_0_4 = start_out_0_3;
  assign op_in_0_4 = op_out_0_3;

  processor_B B_0_4 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_0_4),
    .start_in  (start_in_0_4),
    .op_in     (op_in_0_4),
    .op_out    (op_out_0_4),
    .start_out (start_out_0_4),
    .data_out  (data_out_0_4)
  );

  // row 0, col 5

  wire start_in_0_5;
  wire start_out_0_5;

  wire [1:0] op_in_0_5;
  wire [1:0] op_out_0_5;

  wire data_in_0_5;
  wire data_out_0_5;

  assign data_in_0_5 = data[5];

  assign start_in_0_5 = start_out_0_4;
  assign op_in_0_5 = op_out_0_4;

  processor_B B_0_5 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_0_5),
    .start_in  (start_in_0_5),
    .op_in     (op_in_0_5),
    .op_out    (op_out_0_5),
    .start_out (start_out_0_5),
    .data_out  (data_out_0_5)
  );

  // row 0, col 6

  wire start_in_0_6;
  wire start_out_0_6;

  wire [1:0] op_in_0_6;
  wire [1:0] op_out_0_6;

  wire data_in_0_6;
  wire data_out_0_6;

  assign data_in_0_6 = data[6];

  assign start_in_0_6 = start_out_0_5;
  assign op_in_0_6 = op_out_0_5;

  processor_B B_0_6 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_0_6),
    .start_in  (start_in_0_6),
    .op_in     (op_in_0_6),
    .op_out    (op_out_0_6),
    .start_out (start_out_0_6),
    .data_out  (data_out_0_6)
  );

  // row 0, col 7

  wire start_in_0_7;
  wire start_out_0_7;

  wire [1:0] op_in_0_7;
  wire [1:0] op_out_0_7;

  wire data_in_0_7;
  wire data_out_0_7;

  assign data_in_0_7 = data[7];

  assign start_in_0_7 = start_out_0_6;
  assign op_in_0_7 = op_out_0_6;

  processor_B B_0_7 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_0_7),
    .start_in  (start_in_0_7),
    .op_in     (op_in_0_7),
    .op_out    (op_out_0_7),
    .start_out (start_out_0_7),
    .data_out  (data_out_0_7)
  );

  // row 0, col 8

  wire start_in_0_8;
  wire start_out_0_8;

  wire [1:0] op_in_0_8;
  wire [1:0] op_out_0_8;

  wire data_in_0_8;
  wire data_out_0_8;

  assign data_in_0_8 = data[8];

  assign start_in_0_8 = start_out_0_7;
  assign op_in_0_8 = op_out_0_7;

  processor_B B_0_8 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_0_8),
    .start_in  (start_in_0_8),
    .op_in     (op_in_0_8),
    .op_out    (op_out_0_8),
    .start_out (start_out_0_8),
    .data_out  (data_out_0_8)
  );

  // row 0, col 9

  wire start_in_0_9;
  wire start_out_0_9;

  wire [1:0] op_in_0_9;
  wire [1:0] op_out_0_9;

  wire data_in_0_9;
  wire data_out_0_9;

  assign data_in_0_9 = data[9];

  assign start_in_0_9 = start_out_0_8;
  assign op_in_0_9 = op_out_0_8;

  processor_B B_0_9 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_0_9),
    .start_in  (start_in_0_9),
    .op_in     (op_in_0_9),
    .op_out    (op_out_0_9),
    .start_out (start_out_0_9),
    .data_out  (data_out_0_9)
  );

  /////////////////////////////////////
  // row 1
  // row 1, col 0

  wire start_in_1_0;
  wire start_out_1_0;

  wire [1:0] op_in_1_0;
  wire [1:0] op_out_1_0;

  reg data_in_1_0;
  wire data_out_1_0;

  always @(posedge clk) begin
    data_in_1_0 <= data_out_0_0;
  end

  assign start_in_1_0 = start_row[1];
  assign op_in_1_0 = op_in[3:2];

  processor_B B_1_0 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_1_0),
    .start_in  (start_in_1_0),
    .op_in     (op_in_1_0),
    .op_out    (op_out_1_0),
    .start_out (start_out_1_0),
    .data_out  (data_out_1_0)
  );

  // row 1, col 1

  wire start_in_1_1;
  wire start_out_1_1;

  wire [1:0] op_in_1_1;
  wire [1:0] op_out_1_1;

  wire r_1_1;

  reg data_in_1_1;
  wire data_out_1_1;

  always @(posedge clk) begin
    data_in_1_1 <= data_out_0_1;
  end

  assign start_in_1_1 = start_out_1_0;
  assign op_in_1_1 = op_out_1_0;

  processor_AB AB_1_1 (
    .functionA  (functionA_dup[1]),
    .clk        (clk),
    .rst        (rst),
    .data_in    (data_in_1_1),
    .start_in   (start_in_1_1),
    .finish_in  (finish_in[1]),
    .finish_out (finish_out[1]),
    .op_in      (op_in_1_1),
    .op_out     (op_out_1_1),
    .start_out  (start_out_1_1),
    .data_out   (data_out_1_1),
    .r          (r_1_1)
  );

  // row 1, col 2

  wire start_in_1_2;
  wire start_out_1_2;

  wire [1:0] op_in_1_2;
  wire [1:0] op_out_1_2;

  reg data_in_1_2;
  wire data_out_1_2;

  always @(posedge clk) begin
    data_in_1_2 <= data_out_0_2;
  end

  assign start_in_1_2 = start_out_1_1;
  assign op_in_1_2 = op_out_1_1;

  processor_B B_1_2 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_1_2),
    .start_in  (start_in_1_2),
    .op_in     (op_in_1_2),
    .op_out    (op_out_1_2),
    .start_out (start_out_1_2),
    .data_out  (data_out_1_2)
  );

  // row 1, col 3

  wire start_in_1_3;
  wire start_out_1_3;

  wire [1:0] op_in_1_3;
  wire [1:0] op_out_1_3;

  reg data_in_1_3;
  wire data_out_1_3;

  always @(posedge clk) begin
    data_in_1_3 <= data_out_0_3;
  end

  assign start_in_1_3 = start_out_1_2;
  assign op_in_1_3 = op_out_1_2;

  processor_B B_1_3 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_1_3),
    .start_in  (start_in_1_3),
    .op_in     (op_in_1_3),
    .op_out    (op_out_1_3),
    .start_out (start_out_1_3),
    .data_out  (data_out_1_3)
  );

  // row 1, col 4

  wire start_in_1_4;
  wire start_out_1_4;

  wire [1:0] op_in_1_4;
  wire [1:0] op_out_1_4;

  reg data_in_1_4;
  wire data_out_1_4;

  always @(posedge clk) begin
    data_in_1_4 <= data_out_0_4;
  end

  assign start_in_1_4 = start_out_1_3;
  assign op_in_1_4 = op_out_1_3;

  processor_B B_1_4 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_1_4),
    .start_in  (start_in_1_4),
    .op_in     (op_in_1_4),
    .op_out    (op_out_1_4),
    .start_out (start_out_1_4),
    .data_out  (data_out_1_4)
  );

  // row 1, col 5

  wire start_in_1_5;
  wire start_out_1_5;

  wire [1:0] op_in_1_5;
  wire [1:0] op_out_1_5;

  reg data_in_1_5;
  wire data_out_1_5;

  always @(posedge clk) begin
    data_in_1_5 <= data_out_0_5;
  end

  assign start_in_1_5 = start_out_1_4;
  assign op_in_1_5 = op_out_1_4;

  processor_B B_1_5 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_1_5),
    .start_in  (start_in_1_5),
    .op_in     (op_in_1_5),
    .op_out    (op_out_1_5),
    .start_out (start_out_1_5),
    .data_out  (data_out_1_5)
  );

  // row 1, col 6

  wire start_in_1_6;
  wire start_out_1_6;

  wire [1:0] op_in_1_6;
  wire [1:0] op_out_1_6;

  reg data_in_1_6;
  wire data_out_1_6;

  always @(posedge clk) begin
    data_in_1_6 <= data_out_0_6;
  end

  assign start_in_1_6 = start_out_1_5;
  assign op_in_1_6 = op_out_1_5;

  processor_B B_1_6 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_1_6),
    .start_in  (start_in_1_6),
    .op_in     (op_in_1_6),
    .op_out    (op_out_1_6),
    .start_out (start_out_1_6),
    .data_out  (data_out_1_6)
  );

  // row 1, col 7

  wire start_in_1_7;
  wire start_out_1_7;

  wire [1:0] op_in_1_7;
  wire [1:0] op_out_1_7;

  reg data_in_1_7;
  wire data_out_1_7;

  always @(posedge clk) begin
    data_in_1_7 <= data_out_0_7;
  end

  assign start_in_1_7 = start_out_1_6;
  assign op_in_1_7 = op_out_1_6;

  processor_B B_1_7 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_1_7),
    .start_in  (start_in_1_7),
    .op_in     (op_in_1_7),
    .op_out    (op_out_1_7),
    .start_out (start_out_1_7),
    .data_out  (data_out_1_7)
  );

  // row 1, col 8

  wire start_in_1_8;
  wire start_out_1_8;

  wire [1:0] op_in_1_8;
  wire [1:0] op_out_1_8;

  reg data_in_1_8;
  wire data_out_1_8;

  always @(posedge clk) begin
    data_in_1_8 <= data_out_0_8;
  end

  assign start_in_1_8 = start_out_1_7;
  assign op_in_1_8 = op_out_1_7;

  processor_B B_1_8 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_1_8),
    .start_in  (start_in_1_8),
    .op_in     (op_in_1_8),
    .op_out    (op_out_1_8),
    .start_out (start_out_1_8),
    .data_out  (data_out_1_8)
  );

  // row 1, col 9

  wire start_in_1_9;
  wire start_out_1_9;

  wire [1:0] op_in_1_9;
  wire [1:0] op_out_1_9;

  reg data_in_1_9;
  wire data_out_1_9;

  always @(posedge clk) begin
    data_in_1_9 <= data_out_0_9;
  end

  assign start_in_1_9 = start_out_1_8;
  assign op_in_1_9 = op_out_1_8;

  processor_B B_1_9 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_1_9),
    .start_in  (start_in_1_9),
    .op_in     (op_in_1_9),
    .op_out    (op_out_1_9),
    .start_out (start_out_1_9),
    .data_out  (data_out_1_9)
  );

  /////////////////////////////////////
  // row 2
  // row 2, col 0

  wire start_in_2_0;
  wire start_out_2_0;

  wire [1:0] op_in_2_0;
  wire [1:0] op_out_2_0;

  reg data_in_2_0;
  wire data_out_2_0;

  always @(posedge clk) begin
    data_in_2_0 <= data_out_1_0;
  end

  assign start_in_2_0 = start_row[2];
  assign op_in_2_0 = op_in[5:4];

  processor_B B_2_0 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_2_0),
    .start_in  (start_in_2_0),
    .op_in     (op_in_2_0),
    .op_out    (op_out_2_0),
    .start_out (start_out_2_0),
    .data_out  (data_out_2_0)
  );

  // row 2, col 1

  wire start_in_2_1;
  wire start_out_2_1;

  wire [1:0] op_in_2_1;
  wire [1:0] op_out_2_1;

  reg data_in_2_1;
  wire data_out_2_1;

  always @(posedge clk) begin
    data_in_2_1 <= data_out_1_1;
  end

  assign start_in_2_1 = start_out_2_0;
  assign op_in_2_1 = op_out_2_0;

  processor_B B_2_1 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_2_1),
    .start_in  (start_in_2_1),
    .op_in     (op_in_2_1),
    .op_out    (op_out_2_1),
    .start_out (start_out_2_1),
    .data_out  (data_out_2_1)
  );

  // row 2, col 2

  wire start_in_2_2;
  wire start_out_2_2;

  wire [1:0] op_in_2_2;
  wire [1:0] op_out_2_2;

  wire r_2_2;

  reg data_in_2_2;
  wire data_out_2_2;

  always @(posedge clk) begin
    data_in_2_2 <= data_out_1_2;
  end

  assign start_in_2_2 = start_out_2_1;
  assign op_in_2_2 = op_out_2_1;

  processor_AB AB_2_2 (
    .functionA  (functionA_dup[2]),
    .clk        (clk),
    .rst        (rst),
    .data_in    (data_in_2_2),
    .start_in   (start_in_2_2),
    .finish_in  (finish_in[2]),
    .finish_out (finish_out[2]),
    .op_in      (op_in_2_2),
    .op_out     (op_out_2_2),
    .start_out  (start_out_2_2),
    .data_out   (data_out_2_2),
    .r          (r_2_2)
  );

  // row 2, col 3

  wire start_in_2_3;
  wire start_out_2_3;

  wire [1:0] op_in_2_3;
  wire [1:0] op_out_2_3;

  reg data_in_2_3;
  wire data_out_2_3;

  always @(posedge clk) begin
    data_in_2_3 <= data_out_1_3;
  end

  assign start_in_2_3 = start_out_2_2;
  assign op_in_2_3 = op_out_2_2;

  processor_B B_2_3 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_2_3),
    .start_in  (start_in_2_3),
    .op_in     (op_in_2_3),
    .op_out    (op_out_2_3),
    .start_out (start_out_2_3),
    .data_out  (data_out_2_3)
  );

  // row 2, col 4

  wire start_in_2_4;
  wire start_out_2_4;

  wire [1:0] op_in_2_4;
  wire [1:0] op_out_2_4;

  reg data_in_2_4;
  wire data_out_2_4;

  always @(posedge clk) begin
    data_in_2_4 <= data_out_1_4;
  end

  assign start_in_2_4 = start_out_2_3;
  assign op_in_2_4 = op_out_2_3;

  processor_B B_2_4 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_2_4),
    .start_in  (start_in_2_4),
    .op_in     (op_in_2_4),
    .op_out    (op_out_2_4),
    .start_out (start_out_2_4),
    .data_out  (data_out_2_4)
  );

  // row 2, col 5

  wire start_in_2_5;
  wire start_out_2_5;

  wire [1:0] op_in_2_5;
  wire [1:0] op_out_2_5;

  reg data_in_2_5;
  wire data_out_2_5;

  always @(posedge clk) begin
    data_in_2_5 <= data_out_1_5;
  end

  assign start_in_2_5 = start_out_2_4;
  assign op_in_2_5 = op_out_2_4;

  processor_B B_2_5 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_2_5),
    .start_in  (start_in_2_5),
    .op_in     (op_in_2_5),
    .op_out    (op_out_2_5),
    .start_out (start_out_2_5),
    .data_out  (data_out_2_5)
  );

  // row 2, col 6

  wire start_in_2_6;
  wire start_out_2_6;

  wire [1:0] op_in_2_6;
  wire [1:0] op_out_2_6;

  reg data_in_2_6;
  wire data_out_2_6;

  always @(posedge clk) begin
    data_in_2_6 <= data_out_1_6;
  end

  assign start_in_2_6 = start_out_2_5;
  assign op_in_2_6 = op_out_2_5;

  processor_B B_2_6 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_2_6),
    .start_in  (start_in_2_6),
    .op_in     (op_in_2_6),
    .op_out    (op_out_2_6),
    .start_out (start_out_2_6),
    .data_out  (data_out_2_6)
  );

  // row 2, col 7

  wire start_in_2_7;
  wire start_out_2_7;

  wire [1:0] op_in_2_7;
  wire [1:0] op_out_2_7;

  reg data_in_2_7;
  wire data_out_2_7;

  always @(posedge clk) begin
    data_in_2_7 <= data_out_1_7;
  end

  assign start_in_2_7 = start_out_2_6;
  assign op_in_2_7 = op_out_2_6;

  processor_B B_2_7 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_2_7),
    .start_in  (start_in_2_7),
    .op_in     (op_in_2_7),
    .op_out    (op_out_2_7),
    .start_out (start_out_2_7),
    .data_out  (data_out_2_7)
  );

  // row 2, col 8

  wire start_in_2_8;
  wire start_out_2_8;

  wire [1:0] op_in_2_8;
  wire [1:0] op_out_2_8;

  reg data_in_2_8;
  wire data_out_2_8;

  always @(posedge clk) begin
    data_in_2_8 <= data_out_1_8;
  end

  assign start_in_2_8 = start_out_2_7;
  assign op_in_2_8 = op_out_2_7;

  processor_B B_2_8 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_2_8),
    .start_in  (start_in_2_8),
    .op_in     (op_in_2_8),
    .op_out    (op_out_2_8),
    .start_out (start_out_2_8),
    .data_out  (data_out_2_8)
  );

  // row 2, col 9

  wire start_in_2_9;
  wire start_out_2_9;

  wire [1:0] op_in_2_9;
  wire [1:0] op_out_2_9;

  reg data_in_2_9;
  wire data_out_2_9;

  always @(posedge clk) begin
    data_in_2_9 <= data_out_1_9;
  end

  assign start_in_2_9 = start_out_2_8;
  assign op_in_2_9 = op_out_2_8;

  processor_B B_2_9 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_2_9),
    .start_in  (start_in_2_9),
    .op_in     (op_in_2_9),
    .op_out    (op_out_2_9),
    .start_out (start_out_2_9),
    .data_out  (data_out_2_9)
  );

  /////////////////////////////////////
  // row 3
  // row 3, col 0

  wire start_in_3_0;
  wire start_out_3_0;

  wire [1:0] op_in_3_0;
  wire [1:0] op_out_3_0;

  reg data_in_3_0;
  wire data_out_3_0;

  always @(posedge clk) begin
    data_in_3_0 <= data_out_2_0;
  end

  assign start_in_3_0 = start_row[3];
  assign op_in_3_0 = op_in[7:6];

  processor_B B_3_0 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_3_0),
    .start_in  (start_in_3_0),
    .op_in     (op_in_3_0),
    .op_out    (op_out_3_0),
    .start_out (start_out_3_0),
    .data_out  (data_out_3_0)
  );

  // row 3, col 1

  wire start_in_3_1;
  wire start_out_3_1;

  wire [1:0] op_in_3_1;
  wire [1:0] op_out_3_1;

  reg data_in_3_1;
  wire data_out_3_1;

  always @(posedge clk) begin
    data_in_3_1 <= data_out_2_1;
  end

  assign start_in_3_1 = start_out_3_0;
  assign op_in_3_1 = op_out_3_0;

  processor_B B_3_1 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_3_1),
    .start_in  (start_in_3_1),
    .op_in     (op_in_3_1),
    .op_out    (op_out_3_1),
    .start_out (start_out_3_1),
    .data_out  (data_out_3_1)
  );

  // row 3, col 2

  wire start_in_3_2;
  wire start_out_3_2;

  wire [1:0] op_in_3_2;
  wire [1:0] op_out_3_2;

  reg data_in_3_2;
  wire data_out_3_2;

  always @(posedge clk) begin
    data_in_3_2 <= data_out_2_2;
  end

  assign start_in_3_2 = start_out_3_1;
  assign op_in_3_2 = op_out_3_1;

  processor_B B_3_2 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_3_2),
    .start_in  (start_in_3_2),
    .op_in     (op_in_3_2),
    .op_out    (op_out_3_2),
    .start_out (start_out_3_2),
    .data_out  (data_out_3_2)
  );

  // row 3, col 3

  wire start_in_3_3;
  wire start_out_3_3;

  wire [1:0] op_in_3_3;
  wire [1:0] op_out_3_3;

  wire r_3_3;

  reg data_in_3_3;
  wire data_out_3_3;

  always @(posedge clk) begin
    data_in_3_3 <= data_out_2_3;
  end

  assign start_in_3_3 = start_out_3_2;
  assign op_in_3_3 = op_out_3_2;

  processor_AB AB_3_3 (
    .functionA  (functionA_dup[3]),
    .clk        (clk),
    .rst        (rst),
    .data_in    (data_in_3_3),
    .start_in   (start_in_3_3),
    .finish_in  (finish_in[3]),
    .finish_out (finish_out[3]),
    .op_in      (op_in_3_3),
    .op_out     (op_out_3_3),
    .start_out  (start_out_3_3),
    .data_out   (data_out_3_3),
    .r          (r_3_3)
  );

  // row 3, col 4

  wire start_in_3_4;
  wire start_out_3_4;

  wire [1:0] op_in_3_4;
  wire [1:0] op_out_3_4;

  reg data_in_3_4;
  wire data_out_3_4;

  always @(posedge clk) begin
    data_in_3_4 <= data_out_2_4;
  end

  assign start_in_3_4 = start_out_3_3;
  assign op_in_3_4 = op_out_3_3;

  processor_B B_3_4 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_3_4),
    .start_in  (start_in_3_4),
    .op_in     (op_in_3_4),
    .op_out    (op_out_3_4),
    .start_out (start_out_3_4),
    .data_out  (data_out_3_4)
  );

  // row 3, col 5

  wire start_in_3_5;
  wire start_out_3_5;

  wire [1:0] op_in_3_5;
  wire [1:0] op_out_3_5;

  reg data_in_3_5;
  wire data_out_3_5;

  always @(posedge clk) begin
    data_in_3_5 <= data_out_2_5;
  end

  assign start_in_3_5 = start_out_3_4;
  assign op_in_3_5 = op_out_3_4;

  processor_B B_3_5 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_3_5),
    .start_in  (start_in_3_5),
    .op_in     (op_in_3_5),
    .op_out    (op_out_3_5),
    .start_out (start_out_3_5),
    .data_out  (data_out_3_5)
  );

  // row 3, col 6

  wire start_in_3_6;
  wire start_out_3_6;

  wire [1:0] op_in_3_6;
  wire [1:0] op_out_3_6;

  reg data_in_3_6;
  wire data_out_3_6;

  always @(posedge clk) begin
    data_in_3_6 <= data_out_2_6;
  end

  assign start_in_3_6 = start_out_3_5;
  assign op_in_3_6 = op_out_3_5;

  processor_B B_3_6 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_3_6),
    .start_in  (start_in_3_6),
    .op_in     (op_in_3_6),
    .op_out    (op_out_3_6),
    .start_out (start_out_3_6),
    .data_out  (data_out_3_6)
  );

  // row 3, col 7

  wire start_in_3_7;
  wire start_out_3_7;

  wire [1:0] op_in_3_7;
  wire [1:0] op_out_3_7;

  reg data_in_3_7;
  wire data_out_3_7;

  always @(posedge clk) begin
    data_in_3_7 <= data_out_2_7;
  end

  assign start_in_3_7 = start_out_3_6;
  assign op_in_3_7 = op_out_3_6;

  processor_B B_3_7 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_3_7),
    .start_in  (start_in_3_7),
    .op_in     (op_in_3_7),
    .op_out    (op_out_3_7),
    .start_out (start_out_3_7),
    .data_out  (data_out_3_7)
  );

  // row 3, col 8

  wire start_in_3_8;
  wire start_out_3_8;

  wire [1:0] op_in_3_8;
  wire [1:0] op_out_3_8;

  reg data_in_3_8;
  wire data_out_3_8;

  always @(posedge clk) begin
    data_in_3_8 <= data_out_2_8;
  end

  assign start_in_3_8 = start_out_3_7;
  assign op_in_3_8 = op_out_3_7;

  processor_B B_3_8 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_3_8),
    .start_in  (start_in_3_8),
    .op_in     (op_in_3_8),
    .op_out    (op_out_3_8),
    .start_out (start_out_3_8),
    .data_out  (data_out_3_8)
  );

  // row 3, col 9

  wire start_in_3_9;
  wire start_out_3_9;

  wire [1:0] op_in_3_9;
  wire [1:0] op_out_3_9;

  reg data_in_3_9;
  wire data_out_3_9;

  always @(posedge clk) begin
    data_in_3_9 <= data_out_2_9;
  end

  assign start_in_3_9 = start_out_3_8;
  assign op_in_3_9 = op_out_3_8;

  processor_B B_3_9 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_3_9),
    .start_in  (start_in_3_9),
    .op_in     (op_in_3_9),
    .op_out    (op_out_3_9),
    .start_out (start_out_3_9),
    .data_out  (data_out_3_9)
  );

  /////////////////////////////////////
  // row 4
  // row 4, col 0

  wire start_in_4_0;
  wire start_out_4_0;

  wire [1:0] op_in_4_0;
  wire [1:0] op_out_4_0;

  reg data_in_4_0;
  wire data_out_4_0;

  always @(posedge clk) begin
    data_in_4_0 <= data_out_3_0;
  end

  assign start_in_4_0 = start_row[4];
  assign op_in_4_0 = op_in[9:8];

  processor_B B_4_0 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_4_0),
    .start_in  (start_in_4_0),
    .op_in     (op_in_4_0),
    .op_out    (op_out_4_0),
    .start_out (start_out_4_0),
    .data_out  (data_out_4_0)
  );

  // row 4, col 1

  wire start_in_4_1;
  wire start_out_4_1;

  wire [1:0] op_in_4_1;
  wire [1:0] op_out_4_1;

  reg data_in_4_1;
  wire data_out_4_1;

  always @(posedge clk) begin
    data_in_4_1 <= data_out_3_1;
  end

  assign start_in_4_1 = start_out_4_0;
  assign op_in_4_1 = op_out_4_0;

  processor_B B_4_1 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_4_1),
    .start_in  (start_in_4_1),
    .op_in     (op_in_4_1),
    .op_out    (op_out_4_1),
    .start_out (start_out_4_1),
    .data_out  (data_out_4_1)
  );

  // row 4, col 2

  wire start_in_4_2;
  wire start_out_4_2;

  wire [1:0] op_in_4_2;
  wire [1:0] op_out_4_2;

  reg data_in_4_2;
  wire data_out_4_2;

  always @(posedge clk) begin
    data_in_4_2 <= data_out_3_2;
  end

  assign start_in_4_2 = start_out_4_1;
  assign op_in_4_2 = op_out_4_1;

  processor_B B_4_2 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_4_2),
    .start_in  (start_in_4_2),
    .op_in     (op_in_4_2),
    .op_out    (op_out_4_2),
    .start_out (start_out_4_2),
    .data_out  (data_out_4_2)
  );

  // row 4, col 3

  wire start_in_4_3;
  wire start_out_4_3;

  wire [1:0] op_in_4_3;
  wire [1:0] op_out_4_3;

  reg data_in_4_3;
  wire data_out_4_3;

  always @(posedge clk) begin
    data_in_4_3 <= data_out_3_3;
  end

  assign start_in_4_3 = start_out_4_2;
  assign op_in_4_3 = op_out_4_2;

  processor_B B_4_3 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_4_3),
    .start_in  (start_in_4_3),
    .op_in     (op_in_4_3),
    .op_out    (op_out_4_3),
    .start_out (start_out_4_3),
    .data_out  (data_out_4_3)
  );

  // row 4, col 4

  wire start_in_4_4;
  wire start_out_4_4;

  wire [1:0] op_in_4_4;
  wire [1:0] op_out_4_4;

  wire r_4_4;

  reg data_in_4_4;
  wire data_out_4_4;

  always @(posedge clk) begin
    data_in_4_4 <= data_out_3_4;
  end

  assign start_in_4_4 = start_out_4_3;
  assign op_in_4_4 = op_out_4_3;

  processor_AB AB_4_4 (
    .functionA  (functionA_dup[4]),
    .clk        (clk),
    .rst        (rst),
    .data_in    (data_in_4_4),
    .start_in   (start_in_4_4),
    .finish_in  (finish_in[4]),
    .finish_out (finish_out[4]),
    .op_in      (op_in_4_4),
    .op_out     (op_out_4_4),
    .start_out  (start_out_4_4),
    .data_out   (data_out_4_4),
    .r          (r_4_4)
  );

  // row 4, col 5

  wire start_in_4_5;
  wire start_out_4_5;

  wire [1:0] op_in_4_5;
  wire [1:0] op_out_4_5;

  reg data_in_4_5;
  wire data_out_4_5;

  always @(posedge clk) begin
    data_in_4_5 <= data_out_3_5;
  end

  assign start_in_4_5 = start_out_4_4;
  assign op_in_4_5 = op_out_4_4;

  processor_B B_4_5 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_4_5),
    .start_in  (start_in_4_5),
    .op_in     (op_in_4_5),
    .op_out    (op_out_4_5),
    .start_out (start_out_4_5),
    .data_out  (data_out_4_5)
  );

  // row 4, col 6

  wire start_in_4_6;
  wire start_out_4_6;

  wire [1:0] op_in_4_6;
  wire [1:0] op_out_4_6;

  reg data_in_4_6;
  wire data_out_4_6;

  always @(posedge clk) begin
    data_in_4_6 <= data_out_3_6;
  end

  assign start_in_4_6 = start_out_4_5;
  assign op_in_4_6 = op_out_4_5;

  processor_B B_4_6 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_4_6),
    .start_in  (start_in_4_6),
    .op_in     (op_in_4_6),
    .op_out    (op_out_4_6),
    .start_out (start_out_4_6),
    .data_out  (data_out_4_6)
  );

  // row 4, col 7

  wire start_in_4_7;
  wire start_out_4_7;

  wire [1:0] op_in_4_7;
  wire [1:0] op_out_4_7;

  reg data_in_4_7;
  wire data_out_4_7;

  always @(posedge clk) begin
    data_in_4_7 <= data_out_3_7;
  end

  assign start_in_4_7 = start_out_4_6;
  assign op_in_4_7 = op_out_4_6;

  processor_B B_4_7 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_4_7),
    .start_in  (start_in_4_7),
    .op_in     (op_in_4_7),
    .op_out    (op_out_4_7),
    .start_out (start_out_4_7),
    .data_out  (data_out_4_7)
  );

  // row 4, col 8

  wire start_in_4_8;
  wire start_out_4_8;

  wire [1:0] op_in_4_8;
  wire [1:0] op_out_4_8;

  reg data_in_4_8;
  wire data_out_4_8;

  always @(posedge clk) begin
    data_in_4_8 <= data_out_3_8;
  end

  assign start_in_4_8 = start_out_4_7;
  assign op_in_4_8 = op_out_4_7;

  processor_B B_4_8 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_4_8),
    .start_in  (start_in_4_8),
    .op_in     (op_in_4_8),
    .op_out    (op_out_4_8),
    .start_out (start_out_4_8),
    .data_out  (data_out_4_8)
  );

  // row 4, col 9

  wire start_in_4_9;
  wire start_out_4_9;

  wire [1:0] op_in_4_9;
  wire [1:0] op_out_4_9;

  reg data_in_4_9;
  wire data_out_4_9;

  always @(posedge clk) begin
    data_in_4_9 <= data_out_3_9;
  end

  assign start_in_4_9 = start_out_4_8;
  assign op_in_4_9 = op_out_4_8;

  processor_B B_4_9 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_4_9),
    .start_in  (start_in_4_9),
    .op_in     (op_in_4_9),
    .op_out    (op_out_4_9),
    .start_out (start_out_4_9),
    .data_out  (data_out_4_9)
  );

  /////////////////////////////////////
  // row 5
  // row 5, col 0

  wire start_in_5_0;
  wire start_out_5_0;

  wire [1:0] op_in_5_0;
  wire [1:0] op_out_5_0;

  reg data_in_5_0;
  wire data_out_5_0;

  always @(posedge clk) begin
    data_in_5_0 <= data_out_4_0;
  end

  assign start_in_5_0 = start_row[5];
  assign op_in_5_0 = op_in[11:10];

  processor_B B_5_0 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_5_0),
    .start_in  (start_in_5_0),
    .op_in     (op_in_5_0),
    .op_out    (op_out_5_0),
    .start_out (start_out_5_0),
    .data_out  (data_out_5_0)
  );

  // row 5, col 1

  wire start_in_5_1;
  wire start_out_5_1;

  wire [1:0] op_in_5_1;
  wire [1:0] op_out_5_1;

  reg data_in_5_1;
  wire data_out_5_1;

  always @(posedge clk) begin
    data_in_5_1 <= data_out_4_1;
  end

  assign start_in_5_1 = start_out_5_0;
  assign op_in_5_1 = op_out_5_0;

  processor_B B_5_1 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_5_1),
    .start_in  (start_in_5_1),
    .op_in     (op_in_5_1),
    .op_out    (op_out_5_1),
    .start_out (start_out_5_1),
    .data_out  (data_out_5_1)
  );

  // row 5, col 2

  wire start_in_5_2;
  wire start_out_5_2;

  wire [1:0] op_in_5_2;
  wire [1:0] op_out_5_2;

  reg data_in_5_2;
  wire data_out_5_2;

  always @(posedge clk) begin
    data_in_5_2 <= data_out_4_2;
  end

  assign start_in_5_2 = start_out_5_1;
  assign op_in_5_2 = op_out_5_1;

  processor_B B_5_2 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_5_2),
    .start_in  (start_in_5_2),
    .op_in     (op_in_5_2),
    .op_out    (op_out_5_2),
    .start_out (start_out_5_2),
    .data_out  (data_out_5_2)
  );

  // row 5, col 3

  wire start_in_5_3;
  wire start_out_5_3;

  wire [1:0] op_in_5_3;
  wire [1:0] op_out_5_3;

  reg data_in_5_3;
  wire data_out_5_3;

  always @(posedge clk) begin
    data_in_5_3 <= data_out_4_3;
  end

  assign start_in_5_3 = start_out_5_2;
  assign op_in_5_3 = op_out_5_2;

  processor_B B_5_3 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_5_3),
    .start_in  (start_in_5_3),
    .op_in     (op_in_5_3),
    .op_out    (op_out_5_3),
    .start_out (start_out_5_3),
    .data_out  (data_out_5_3)
  );

  // row 5, col 4

  wire start_in_5_4;
  wire start_out_5_4;

  wire [1:0] op_in_5_4;
  wire [1:0] op_out_5_4;

  reg data_in_5_4;
  wire data_out_5_4;

  always @(posedge clk) begin
    data_in_5_4 <= data_out_4_4;
  end

  assign start_in_5_4 = start_out_5_3;
  assign op_in_5_4 = op_out_5_3;

  processor_B B_5_4 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_5_4),
    .start_in  (start_in_5_4),
    .op_in     (op_in_5_4),
    .op_out    (op_out_5_4),
    .start_out (start_out_5_4),
    .data_out  (data_out_5_4)
  );

  // row 5, col 5

  wire start_in_5_5;
  wire start_out_5_5;

  wire [1:0] op_in_5_5;
  wire [1:0] op_out_5_5;

  wire r_5_5;

  reg data_in_5_5;
  wire data_out_5_5;

  always @(posedge clk) begin
    data_in_5_5 <= data_out_4_5;
  end

  assign start_in_5_5 = start_out_5_4;
  assign op_in_5_5 = op_out_5_4;

  processor_AB AB_5_5 (
    .functionA  (functionA_dup[5]),
    .clk        (clk),
    .rst        (rst),
    .data_in    (data_in_5_5),
    .start_in   (start_in_5_5),
    .finish_in  (finish_in[5]),
    .finish_out (finish_out[5]),
    .op_in      (op_in_5_5),
    .op_out     (op_out_5_5),
    .start_out  (start_out_5_5),
    .data_out   (data_out_5_5),
    .r          (r_5_5)
  );

  // row 5, col 6

  wire start_in_5_6;
  wire start_out_5_6;

  wire [1:0] op_in_5_6;
  wire [1:0] op_out_5_6;

  reg data_in_5_6;
  wire data_out_5_6;

  always @(posedge clk) begin
    data_in_5_6 <= data_out_4_6;
  end

  assign start_in_5_6 = start_out_5_5;
  assign op_in_5_6 = op_out_5_5;

  processor_B B_5_6 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_5_6),
    .start_in  (start_in_5_6),
    .op_in     (op_in_5_6),
    .op_out    (op_out_5_6),
    .start_out (start_out_5_6),
    .data_out  (data_out_5_6)
  );

  // row 5, col 7

  wire start_in_5_7;
  wire start_out_5_7;

  wire [1:0] op_in_5_7;
  wire [1:0] op_out_5_7;

  reg data_in_5_7;
  wire data_out_5_7;

  always @(posedge clk) begin
    data_in_5_7 <= data_out_4_7;
  end

  assign start_in_5_7 = start_out_5_6;
  assign op_in_5_7 = op_out_5_6;

  processor_B B_5_7 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_5_7),
    .start_in  (start_in_5_7),
    .op_in     (op_in_5_7),
    .op_out    (op_out_5_7),
    .start_out (start_out_5_7),
    .data_out  (data_out_5_7)
  );

  // row 5, col 8

  wire start_in_5_8;
  wire start_out_5_8;

  wire [1:0] op_in_5_8;
  wire [1:0] op_out_5_8;

  reg data_in_5_8;
  wire data_out_5_8;

  always @(posedge clk) begin
    data_in_5_8 <= data_out_4_8;
  end

  assign start_in_5_8 = start_out_5_7;
  assign op_in_5_8 = op_out_5_7;

  processor_B B_5_8 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_5_8),
    .start_in  (start_in_5_8),
    .op_in     (op_in_5_8),
    .op_out    (op_out_5_8),
    .start_out (start_out_5_8),
    .data_out  (data_out_5_8)
  );

  // row 5, col 9

  wire start_in_5_9;
  wire start_out_5_9;

  wire [1:0] op_in_5_9;
  wire [1:0] op_out_5_9;

  reg data_in_5_9;
  wire data_out_5_9;

  always @(posedge clk) begin
    data_in_5_9 <= data_out_4_9;
  end

  assign start_in_5_9 = start_out_5_8;
  assign op_in_5_9 = op_out_5_8;

  processor_B B_5_9 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_5_9),
    .start_in  (start_in_5_9),
    .op_in     (op_in_5_9),
    .op_out    (op_out_5_9),
    .start_out (start_out_5_9),
    .data_out  (data_out_5_9)
  );

  /////////////////////////////////////
  // row 6
  // row 6, col 0

  wire start_in_6_0;
  wire start_out_6_0;

  wire [1:0] op_in_6_0;
  wire [1:0] op_out_6_0;

  reg data_in_6_0;
  wire data_out_6_0;

  always @(posedge clk) begin
    data_in_6_0 <= data_out_5_0;
  end

  assign start_in_6_0 = start_row[6];
  assign op_in_6_0 = op_in[13:12];

  processor_B B_6_0 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_6_0),
    .start_in  (start_in_6_0),
    .op_in     (op_in_6_0),
    .op_out    (op_out_6_0),
    .start_out (start_out_6_0),
    .data_out  (data_out_6_0)
  );

  // row 6, col 1

  wire start_in_6_1;
  wire start_out_6_1;

  wire [1:0] op_in_6_1;
  wire [1:0] op_out_6_1;

  reg data_in_6_1;
  wire data_out_6_1;

  always @(posedge clk) begin
    data_in_6_1 <= data_out_5_1;
  end

  assign start_in_6_1 = start_out_6_0;
  assign op_in_6_1 = op_out_6_0;

  processor_B B_6_1 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_6_1),
    .start_in  (start_in_6_1),
    .op_in     (op_in_6_1),
    .op_out    (op_out_6_1),
    .start_out (start_out_6_1),
    .data_out  (data_out_6_1)
  );

  // row 6, col 2

  wire start_in_6_2;
  wire start_out_6_2;

  wire [1:0] op_in_6_2;
  wire [1:0] op_out_6_2;

  reg data_in_6_2;
  wire data_out_6_2;

  always @(posedge clk) begin
    data_in_6_2 <= data_out_5_2;
  end

  assign start_in_6_2 = start_out_6_1;
  assign op_in_6_2 = op_out_6_1;

  processor_B B_6_2 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_6_2),
    .start_in  (start_in_6_2),
    .op_in     (op_in_6_2),
    .op_out    (op_out_6_2),
    .start_out (start_out_6_2),
    .data_out  (data_out_6_2)
  );

  // row 6, col 3

  wire start_in_6_3;
  wire start_out_6_3;

  wire [1:0] op_in_6_3;
  wire [1:0] op_out_6_3;

  reg data_in_6_3;
  wire data_out_6_3;

  always @(posedge clk) begin
    data_in_6_3 <= data_out_5_3;
  end

  assign start_in_6_3 = start_out_6_2;
  assign op_in_6_3 = op_out_6_2;

  processor_B B_6_3 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_6_3),
    .start_in  (start_in_6_3),
    .op_in     (op_in_6_3),
    .op_out    (op_out_6_3),
    .start_out (start_out_6_3),
    .data_out  (data_out_6_3)
  );

  // row 6, col 4

  wire start_in_6_4;
  wire start_out_6_4;

  wire [1:0] op_in_6_4;
  wire [1:0] op_out_6_4;

  reg data_in_6_4;
  wire data_out_6_4;

  always @(posedge clk) begin
    data_in_6_4 <= data_out_5_4;
  end

  assign start_in_6_4 = start_out_6_3;
  assign op_in_6_4 = op_out_6_3;

  processor_B B_6_4 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_6_4),
    .start_in  (start_in_6_4),
    .op_in     (op_in_6_4),
    .op_out    (op_out_6_4),
    .start_out (start_out_6_4),
    .data_out  (data_out_6_4)
  );

  // row 6, col 5

  wire start_in_6_5;
  wire start_out_6_5;

  wire [1:0] op_in_6_5;
  wire [1:0] op_out_6_5;

  reg data_in_6_5;
  wire data_out_6_5;

  always @(posedge clk) begin
    data_in_6_5 <= data_out_5_5;
  end

  assign start_in_6_5 = start_out_6_4;
  assign op_in_6_5 = op_out_6_4;

  processor_B B_6_5 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_6_5),
    .start_in  (start_in_6_5),
    .op_in     (op_in_6_5),
    .op_out    (op_out_6_5),
    .start_out (start_out_6_5),
    .data_out  (data_out_6_5)
  );

  // row 6, col 6

  wire start_in_6_6;
  wire start_out_6_6;

  wire [1:0] op_in_6_6;
  wire [1:0] op_out_6_6;

  wire r_6_6;

  reg data_in_6_6;
  wire data_out_6_6;

  always @(posedge clk) begin
    data_in_6_6 <= data_out_5_6;
  end

  assign start_in_6_6 = start_out_6_5;
  assign op_in_6_6 = op_out_6_5;

  processor_AB AB_6_6 (
    .functionA  (functionA_dup[6]),
    .clk        (clk),
    .rst        (rst),
    .data_in    (data_in_6_6),
    .start_in   (start_in_6_6),
    .finish_in  (finish_in[6]),
    .finish_out (finish_out[6]),
    .op_in      (op_in_6_6),
    .op_out     (op_out_6_6),
    .start_out  (start_out_6_6),
    .data_out   (data_out_6_6),
    .r          (r_6_6)
  );

  // row 6, col 7

  wire start_in_6_7;
  wire start_out_6_7;

  wire [1:0] op_in_6_7;
  wire [1:0] op_out_6_7;

  reg data_in_6_7;
  wire data_out_6_7;

  always @(posedge clk) begin
    data_in_6_7 <= data_out_5_7;
  end

  assign start_in_6_7 = start_out_6_6;
  assign op_in_6_7 = op_out_6_6;

  processor_B B_6_7 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_6_7),
    .start_in  (start_in_6_7),
    .op_in     (op_in_6_7),
    .op_out    (op_out_6_7),
    .start_out (start_out_6_7),
    .data_out  (data_out_6_7)
  );

  // row 6, col 8

  wire start_in_6_8;
  wire start_out_6_8;

  wire [1:0] op_in_6_8;
  wire [1:0] op_out_6_8;

  reg data_in_6_8;
  wire data_out_6_8;

  always @(posedge clk) begin
    data_in_6_8 <= data_out_5_8;
  end

  assign start_in_6_8 = start_out_6_7;
  assign op_in_6_8 = op_out_6_7;

  processor_B B_6_8 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_6_8),
    .start_in  (start_in_6_8),
    .op_in     (op_in_6_8),
    .op_out    (op_out_6_8),
    .start_out (start_out_6_8),
    .data_out  (data_out_6_8)
  );

  // row 6, col 9

  wire start_in_6_9;
  wire start_out_6_9;

  wire [1:0] op_in_6_9;
  wire [1:0] op_out_6_9;

  reg data_in_6_9;
  wire data_out_6_9;

  always @(posedge clk) begin
    data_in_6_9 <= data_out_5_9;
  end

  assign start_in_6_9 = start_out_6_8;
  assign op_in_6_9 = op_out_6_8;

  processor_B B_6_9 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_6_9),
    .start_in  (start_in_6_9),
    .op_in     (op_in_6_9),
    .op_out    (op_out_6_9),
    .start_out (start_out_6_9),
    .data_out  (data_out_6_9)
  );

  /////////////////////////////////////
  // row 7
  // row 7, col 0

  wire start_in_7_0;
  wire start_out_7_0;

  wire [1:0] op_in_7_0;
  wire [1:0] op_out_7_0;

  reg data_in_7_0;
  wire data_out_7_0;

  always @(posedge clk) begin
    data_in_7_0 <= data_out_6_0;
  end

  assign start_in_7_0 = start_row[7];
  assign op_in_7_0 = op_in[15:14];

  processor_B B_7_0 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_7_0),
    .start_in  (start_in_7_0),
    .op_in     (op_in_7_0),
    .op_out    (op_out_7_0),
    .start_out (start_out_7_0),
    .data_out  (data_out_7_0)
  );

  // row 7, col 1

  wire start_in_7_1;
  wire start_out_7_1;

  wire [1:0] op_in_7_1;
  wire [1:0] op_out_7_1;

  reg data_in_7_1;
  wire data_out_7_1;

  always @(posedge clk) begin
    data_in_7_1 <= data_out_6_1;
  end

  assign start_in_7_1 = start_out_7_0;
  assign op_in_7_1 = op_out_7_0;

  processor_B B_7_1 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_7_1),
    .start_in  (start_in_7_1),
    .op_in     (op_in_7_1),
    .op_out    (op_out_7_1),
    .start_out (start_out_7_1),
    .data_out  (data_out_7_1)
  );

  // row 7, col 2

  wire start_in_7_2;
  wire start_out_7_2;

  wire [1:0] op_in_7_2;
  wire [1:0] op_out_7_2;

  reg data_in_7_2;
  wire data_out_7_2;

  always @(posedge clk) begin
    data_in_7_2 <= data_out_6_2;
  end

  assign start_in_7_2 = start_out_7_1;
  assign op_in_7_2 = op_out_7_1;

  processor_B B_7_2 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_7_2),
    .start_in  (start_in_7_2),
    .op_in     (op_in_7_2),
    .op_out    (op_out_7_2),
    .start_out (start_out_7_2),
    .data_out  (data_out_7_2)
  );

  // row 7, col 3

  wire start_in_7_3;
  wire start_out_7_3;

  wire [1:0] op_in_7_3;
  wire [1:0] op_out_7_3;

  reg data_in_7_3;
  wire data_out_7_3;

  always @(posedge clk) begin
    data_in_7_3 <= data_out_6_3;
  end

  assign start_in_7_3 = start_out_7_2;
  assign op_in_7_3 = op_out_7_2;

  processor_B B_7_3 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_7_3),
    .start_in  (start_in_7_3),
    .op_in     (op_in_7_3),
    .op_out    (op_out_7_3),
    .start_out (start_out_7_3),
    .data_out  (data_out_7_3)
  );

  // row 7, col 4

  wire start_in_7_4;
  wire start_out_7_4;

  wire [1:0] op_in_7_4;
  wire [1:0] op_out_7_4;

  reg data_in_7_4;
  wire data_out_7_4;

  always @(posedge clk) begin
    data_in_7_4 <= data_out_6_4;
  end

  assign start_in_7_4 = start_out_7_3;
  assign op_in_7_4 = op_out_7_3;

  processor_B B_7_4 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_7_4),
    .start_in  (start_in_7_4),
    .op_in     (op_in_7_4),
    .op_out    (op_out_7_4),
    .start_out (start_out_7_4),
    .data_out  (data_out_7_4)
  );

  // row 7, col 5

  wire start_in_7_5;
  wire start_out_7_5;

  wire [1:0] op_in_7_5;
  wire [1:0] op_out_7_5;

  reg data_in_7_5;
  wire data_out_7_5;

  always @(posedge clk) begin
    data_in_7_5 <= data_out_6_5;
  end

  assign start_in_7_5 = start_out_7_4;
  assign op_in_7_5 = op_out_7_4;

  processor_B B_7_5 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_7_5),
    .start_in  (start_in_7_5),
    .op_in     (op_in_7_5),
    .op_out    (op_out_7_5),
    .start_out (start_out_7_5),
    .data_out  (data_out_7_5)
  );

  // row 7, col 6

  wire start_in_7_6;
  wire start_out_7_6;

  wire [1:0] op_in_7_6;
  wire [1:0] op_out_7_6;

  reg data_in_7_6;
  wire data_out_7_6;

  always @(posedge clk) begin
    data_in_7_6 <= data_out_6_6;
  end

  assign start_in_7_6 = start_out_7_5;
  assign op_in_7_6 = op_out_7_5;

  processor_B B_7_6 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_7_6),
    .start_in  (start_in_7_6),
    .op_in     (op_in_7_6),
    .op_out    (op_out_7_6),
    .start_out (start_out_7_6),
    .data_out  (data_out_7_6)
  );

  // row 7, col 7

  wire start_in_7_7;
  wire start_out_7_7;

  wire [1:0] op_in_7_7;
  wire [1:0] op_out_7_7;

  wire r_7_7;

  reg data_in_7_7;
  wire data_out_7_7;

  always @(posedge clk) begin
    data_in_7_7 <= data_out_6_7;
  end

  assign start_in_7_7 = start_out_7_6;
  assign op_in_7_7 = op_out_7_6;

  processor_AB AB_7_7 (
    .functionA  (functionA_dup[7]),
    .clk        (clk),
    .rst        (rst),
    .data_in    (data_in_7_7),
    .start_in   (start_in_7_7),
    .finish_in  (finish_in[7]),
    .finish_out (finish_out[7]),
    .op_in      (op_in_7_7),
    .op_out     (op_out_7_7),
    .start_out  (start_out_7_7),
    .data_out   (data_out_7_7),
    .r          (r_7_7)
  );

  // row 7, col 8

  wire start_in_7_8;
  wire start_out_7_8;

  wire [1:0] op_in_7_8;
  wire [1:0] op_out_7_8;

  reg data_in_7_8;
  wire data_out_7_8;

  always @(posedge clk) begin
    data_in_7_8 <= data_out_6_8;
  end

  assign start_in_7_8 = start_out_7_7;
  assign op_in_7_8 = op_out_7_7;

  processor_B B_7_8 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_7_8),
    .start_in  (start_in_7_8),
    .op_in     (op_in_7_8),
    .op_out    (op_out_7_8),
    .start_out (start_out_7_8),
    .data_out  (data_out_7_8)
  );

  // row 7, col 9

  wire start_in_7_9;
  wire start_out_7_9;

  wire [1:0] op_in_7_9;
  wire [1:0] op_out_7_9;

  reg data_in_7_9;
  wire data_out_7_9;

  always @(posedge clk) begin
    data_in_7_9 <= data_out_6_9;
  end

  assign start_in_7_9 = start_out_7_8;
  assign op_in_7_9 = op_out_7_8;

  processor_B B_7_9 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_7_9),
    .start_in  (start_in_7_9),
    .op_in     (op_in_7_9),
    .op_out    (op_out_7_9),
    .start_out (start_out_7_9),
    .data_out  (data_out_7_9)
  );

  /////////////////////////////////////
  // row 8
  // row 8, col 0

  wire start_in_8_0;
  wire start_out_8_0;

  wire [1:0] op_in_8_0;
  wire [1:0] op_out_8_0;

  reg data_in_8_0;
  wire data_out_8_0;

  always @(posedge clk) begin
    data_in_8_0 <= data_out_7_0;
  end

  assign start_in_8_0 = start_row[8];
  assign op_in_8_0 = op_in[17:16];

  processor_B B_8_0 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_8_0),
    .start_in  (start_in_8_0),
    .op_in     (op_in_8_0),
    .op_out    (op_out_8_0),
    .start_out (start_out_8_0),
    .data_out  (data_out_8_0)
  );

  // row 8, col 1

  wire start_in_8_1;
  wire start_out_8_1;

  wire [1:0] op_in_8_1;
  wire [1:0] op_out_8_1;

  reg data_in_8_1;
  wire data_out_8_1;

  always @(posedge clk) begin
    data_in_8_1 <= data_out_7_1;
  end

  assign start_in_8_1 = start_out_8_0;
  assign op_in_8_1 = op_out_8_0;

  processor_B B_8_1 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_8_1),
    .start_in  (start_in_8_1),
    .op_in     (op_in_8_1),
    .op_out    (op_out_8_1),
    .start_out (start_out_8_1),
    .data_out  (data_out_8_1)
  );

  // row 8, col 2

  wire start_in_8_2;
  wire start_out_8_2;

  wire [1:0] op_in_8_2;
  wire [1:0] op_out_8_2;

  reg data_in_8_2;
  wire data_out_8_2;

  always @(posedge clk) begin
    data_in_8_2 <= data_out_7_2;
  end

  assign start_in_8_2 = start_out_8_1;
  assign op_in_8_2 = op_out_8_1;

  processor_B B_8_2 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_8_2),
    .start_in  (start_in_8_2),
    .op_in     (op_in_8_2),
    .op_out    (op_out_8_2),
    .start_out (start_out_8_2),
    .data_out  (data_out_8_2)
  );

  // row 8, col 3

  wire start_in_8_3;
  wire start_out_8_3;

  wire [1:0] op_in_8_3;
  wire [1:0] op_out_8_3;

  reg data_in_8_3;
  wire data_out_8_3;

  always @(posedge clk) begin
    data_in_8_3 <= data_out_7_3;
  end

  assign start_in_8_3 = start_out_8_2;
  assign op_in_8_3 = op_out_8_2;

  processor_B B_8_3 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_8_3),
    .start_in  (start_in_8_3),
    .op_in     (op_in_8_3),
    .op_out    (op_out_8_3),
    .start_out (start_out_8_3),
    .data_out  (data_out_8_3)
  );

  // row 8, col 4

  wire start_in_8_4;
  wire start_out_8_4;

  wire [1:0] op_in_8_4;
  wire [1:0] op_out_8_4;

  reg data_in_8_4;
  wire data_out_8_4;

  always @(posedge clk) begin
    data_in_8_4 <= data_out_7_4;
  end

  assign start_in_8_4 = start_out_8_3;
  assign op_in_8_4 = op_out_8_3;

  processor_B B_8_4 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_8_4),
    .start_in  (start_in_8_4),
    .op_in     (op_in_8_4),
    .op_out    (op_out_8_4),
    .start_out (start_out_8_4),
    .data_out  (data_out_8_4)
  );

  // row 8, col 5

  wire start_in_8_5;
  wire start_out_8_5;

  wire [1:0] op_in_8_5;
  wire [1:0] op_out_8_5;

  reg data_in_8_5;
  wire data_out_8_5;

  always @(posedge clk) begin
    data_in_8_5 <= data_out_7_5;
  end

  assign start_in_8_5 = start_out_8_4;
  assign op_in_8_5 = op_out_8_4;

  processor_B B_8_5 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_8_5),
    .start_in  (start_in_8_5),
    .op_in     (op_in_8_5),
    .op_out    (op_out_8_5),
    .start_out (start_out_8_5),
    .data_out  (data_out_8_5)
  );

  // row 8, col 6

  wire start_in_8_6;
  wire start_out_8_6;

  wire [1:0] op_in_8_6;
  wire [1:0] op_out_8_6;

  reg data_in_8_6;
  wire data_out_8_6;

  always @(posedge clk) begin
    data_in_8_6 <= data_out_7_6;
  end

  assign start_in_8_6 = start_out_8_5;
  assign op_in_8_6 = op_out_8_5;

  processor_B B_8_6 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_8_6),
    .start_in  (start_in_8_6),
    .op_in     (op_in_8_6),
    .op_out    (op_out_8_6),
    .start_out (start_out_8_6),
    .data_out  (data_out_8_6)
  );

  // row 8, col 7

  wire start_in_8_7;
  wire start_out_8_7;

  wire [1:0] op_in_8_7;
  wire [1:0] op_out_8_7;

  reg data_in_8_7;
  wire data_out_8_7;

  always @(posedge clk) begin
    data_in_8_7 <= data_out_7_7;
  end

  assign start_in_8_7 = start_out_8_6;
  assign op_in_8_7 = op_out_8_6;

  processor_B B_8_7 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_8_7),
    .start_in  (start_in_8_7),
    .op_in     (op_in_8_7),
    .op_out    (op_out_8_7),
    .start_out (start_out_8_7),
    .data_out  (data_out_8_7)
  );

  // row 8, col 8

  wire start_in_8_8;
  wire start_out_8_8;

  wire [1:0] op_in_8_8;
  wire [1:0] op_out_8_8;

  wire r_8_8;

  reg data_in_8_8;
  wire data_out_8_8;

  always @(posedge clk) begin
    data_in_8_8 <= data_out_7_8;
  end

  assign start_in_8_8 = start_out_8_7;
  assign op_in_8_8 = op_out_8_7;

  processor_AB AB_8_8 (
    .functionA  (functionA_dup[8]),
    .clk        (clk),
    .rst        (rst),
    .data_in    (data_in_8_8),
    .start_in   (start_in_8_8),
    .finish_in  (finish_in[8]),
    .finish_out (finish_out[8]),
    .op_in      (op_in_8_8),
    .op_out     (op_out_8_8),
    .start_out  (start_out_8_8),
    .data_out   (data_out_8_8),
    .r          (r_8_8)
  );

  // row 8, col 9

  wire start_in_8_9;
  wire start_out_8_9;

  wire [1:0] op_in_8_9;
  wire [1:0] op_out_8_9;

  reg data_in_8_9;
  wire data_out_8_9;

  always @(posedge clk) begin
    data_in_8_9 <= data_out_7_9;
  end

  assign start_in_8_9 = start_out_8_8;
  assign op_in_8_9 = op_out_8_8;

  processor_B B_8_9 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_8_9),
    .start_in  (start_in_8_9),
    .op_in     (op_in_8_9),
    .op_out    (op_out_8_9),
    .start_out (start_out_8_9),
    .data_out  (data_out_8_9)
  );

  /////////////////////////////////////
  // row 9
  // row 9, col 0

  wire start_in_9_0;
  wire start_out_9_0;

  wire [1:0] op_in_9_0;
  wire [1:0] op_out_9_0;

  reg data_in_9_0;
  wire data_out_9_0;

  always @(posedge clk) begin
    data_in_9_0 <= data_out_8_0;
  end

  assign start_in_9_0 = start_row[9];
  assign op_in_9_0 = op_in[19:18];

  processor_B B_9_0 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_9_0),
    .start_in  (start_in_9_0),
    .op_in     (op_in_9_0),
    .op_out    (op_out_9_0),
    .start_out (start_out_9_0),
    .data_out  (data_out_9_0)
  );

  // row 9, col 1

  wire start_in_9_1;
  wire start_out_9_1;

  wire [1:0] op_in_9_1;
  wire [1:0] op_out_9_1;

  reg data_in_9_1;
  wire data_out_9_1;

  always @(posedge clk) begin
    data_in_9_1 <= data_out_8_1;
  end

  assign start_in_9_1 = start_out_9_0;
  assign op_in_9_1 = op_out_9_0;

  processor_B B_9_1 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_9_1),
    .start_in  (start_in_9_1),
    .op_in     (op_in_9_1),
    .op_out    (op_out_9_1),
    .start_out (start_out_9_1),
    .data_out  (data_out_9_1)
  );

  // row 9, col 2

  wire start_in_9_2;
  wire start_out_9_2;

  wire [1:0] op_in_9_2;
  wire [1:0] op_out_9_2;

  reg data_in_9_2;
  wire data_out_9_2;

  always @(posedge clk) begin
    data_in_9_2 <= data_out_8_2;
  end

  assign start_in_9_2 = start_out_9_1;
  assign op_in_9_2 = op_out_9_1;

  processor_B B_9_2 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_9_2),
    .start_in  (start_in_9_2),
    .op_in     (op_in_9_2),
    .op_out    (op_out_9_2),
    .start_out (start_out_9_2),
    .data_out  (data_out_9_2)
  );

  // row 9, col 3

  wire start_in_9_3;
  wire start_out_9_3;

  wire [1:0] op_in_9_3;
  wire [1:0] op_out_9_3;

  reg data_in_9_3;
  wire data_out_9_3;

  always @(posedge clk) begin
    data_in_9_3 <= data_out_8_3;
  end

  assign start_in_9_3 = start_out_9_2;
  assign op_in_9_3 = op_out_9_2;

  processor_B B_9_3 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_9_3),
    .start_in  (start_in_9_3),
    .op_in     (op_in_9_3),
    .op_out    (op_out_9_3),
    .start_out (start_out_9_3),
    .data_out  (data_out_9_3)
  );

  // row 9, col 4

  wire start_in_9_4;
  wire start_out_9_4;

  wire [1:0] op_in_9_4;
  wire [1:0] op_out_9_4;

  reg data_in_9_4;
  wire data_out_9_4;

  always @(posedge clk) begin
    data_in_9_4 <= data_out_8_4;
  end

  assign start_in_9_4 = start_out_9_3;
  assign op_in_9_4 = op_out_9_3;

  processor_B B_9_4 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_9_4),
    .start_in  (start_in_9_4),
    .op_in     (op_in_9_4),
    .op_out    (op_out_9_4),
    .start_out (start_out_9_4),
    .data_out  (data_out_9_4)
  );

  // row 9, col 5

  wire start_in_9_5;
  wire start_out_9_5;

  wire [1:0] op_in_9_5;
  wire [1:0] op_out_9_5;

  reg data_in_9_5;
  wire data_out_9_5;

  always @(posedge clk) begin
    data_in_9_5 <= data_out_8_5;
  end

  assign start_in_9_5 = start_out_9_4;
  assign op_in_9_5 = op_out_9_4;

  processor_B B_9_5 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_9_5),
    .start_in  (start_in_9_5),
    .op_in     (op_in_9_5),
    .op_out    (op_out_9_5),
    .start_out (start_out_9_5),
    .data_out  (data_out_9_5)
  );

  // row 9, col 6

  wire start_in_9_6;
  wire start_out_9_6;

  wire [1:0] op_in_9_6;
  wire [1:0] op_out_9_6;

  reg data_in_9_6;
  wire data_out_9_6;

  always @(posedge clk) begin
    data_in_9_6 <= data_out_8_6;
  end

  assign start_in_9_6 = start_out_9_5;
  assign op_in_9_6 = op_out_9_5;

  processor_B B_9_6 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_9_6),
    .start_in  (start_in_9_6),
    .op_in     (op_in_9_6),
    .op_out    (op_out_9_6),
    .start_out (start_out_9_6),
    .data_out  (data_out_9_6)
  );

  // row 9, col 7

  wire start_in_9_7;
  wire start_out_9_7;

  wire [1:0] op_in_9_7;
  wire [1:0] op_out_9_7;

  reg data_in_9_7;
  wire data_out_9_7;

  always @(posedge clk) begin
    data_in_9_7 <= data_out_8_7;
  end

  assign start_in_9_7 = start_out_9_6;
  assign op_in_9_7 = op_out_9_6;

  processor_B B_9_7 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_9_7),
    .start_in  (start_in_9_7),
    .op_in     (op_in_9_7),
    .op_out    (op_out_9_7),
    .start_out (start_out_9_7),
    .data_out  (data_out_9_7)
  );

  // row 9, col 8

  wire start_in_9_8;
  wire start_out_9_8;

  wire [1:0] op_in_9_8;
  wire [1:0] op_out_9_8;

  reg data_in_9_8;
  wire data_out_9_8;

  always @(posedge clk) begin
    data_in_9_8 <= data_out_8_8;
  end

  assign start_in_9_8 = start_out_9_7;
  assign op_in_9_8 = op_out_9_7;

  processor_B B_9_8 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_9_8),
    .start_in  (start_in_9_8),
    .op_in     (op_in_9_8),
    .op_out    (op_out_9_8),
    .start_out (start_out_9_8),
    .data_out  (data_out_9_8)
  );

  // row 9, col 9

  wire start_in_9_9;
  wire start_out_9_9;

  wire [1:0] op_in_9_9;
  wire [1:0] op_out_9_9;

  wire r_9_9;

  reg data_in_9_9;
  wire data_out_9_9;

  always @(posedge clk) begin
    data_in_9_9 <= data_out_8_9;
  end

  assign start_in_9_9 = start_out_9_8;
  assign op_in_9_9 = op_out_9_8;

  processor_AB AB_9_9 (
    .functionA  (functionA_dup[9]),
    .clk        (clk),
    .rst        (rst),
    .data_in    (data_in_9_9),
    .start_in   (start_in_9_9),
    .finish_in  (finish_in[9]),
    .finish_out (finish_out[9]),
    .op_in      (op_in_9_9),
    .op_out     (op_out_9_9),
    .start_out  (start_out_9_9),
    .data_out   (data_out_9_9),
    .r          (r_9_9)
  );


  /////////////////////////
  // outputs 

  always @(posedge clk) begin
    data_out[0] <= data_out_9_0;
    data_out[1] <= data_out_9_1;
    data_out[2] <= data_out_9_2;
    data_out[3] <= data_out_9_3;
    data_out[4] <= data_out_9_4;
    data_out[5] <= data_out_9_5;
    data_out[6] <= data_out_9_6;
    data_out[7] <= data_out_9_7;
    data_out[8] <= data_out_9_8;
    data_out[9] <= data_out_9_9;
  end

  assign op_out[1:0] = op_out_0_9;
  assign op_out[3:2] = op_out_1_9;
  assign op_out[5:4] = op_out_2_9;
  assign op_out[7:6] = op_out_3_9;
  assign op_out[9:8] = op_out_4_9;
  assign op_out[11:10] = op_out_5_9;
  assign op_out[13:12] = op_out_6_9;
  assign op_out[15:14] = op_out_7_9;
  assign op_out[17:16] = op_out_8_9;
  assign op_out[19:18] = op_out_9_9;

  assign r_A_and = r_0_0 && r_1_1 && r_2_2 && r_3_3 && r_4_4 && r_5_5 && r_6_6 && r_7_7 && r_8_8 && r_9_9;

endmodule

