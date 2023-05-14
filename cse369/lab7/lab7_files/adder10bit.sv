module adder10bit (
    input logic [9:0] a, b,
    input logic cin0,
    output logic [9:0] sum, 
    output logic cout9
); 
    logic [8:0] cin;
    logic [8:0] cout;

    adder1bit adder0 (.a(a[0], .b(b[0]), .cin(cin0), .sum(sum[0]), .cout(cout[0])));
    adder1bit adder1 (.a(a[1], .b(b[1]), .cin(cin[0]), .sum(sum[1]), .cout(cout[1])));
    adder1bit adder2 (.a(a[2], .b(b[2]), .cin(cin[1]), .sum(sum[2]), .cout(cout[2])));
    adder1bit adder3 (.a(a[3], .b(b[3]), .cin(cin[2]), .sum(sum[3]), .cout(cout[3])));
    adder1bit adder4 (.a(a[4], .b(b[4]), .cin(cin[3]), .sum(sum[4]), .cout(cout[4])));
    adder1bit adder5 (.a(a[5], .b(b[5]), .cin(cin[4]), .sum(sum[5]), .cout(cout[5])));
    adder1bit adder6 (.a(a[6], .b(b[6]), .cin(cin[5]), .sum(sum[6]), .cout(cout[6])));
    adder1bit adder7 (.a(a[7], .b(b[7]), .cin(cin[6]), .sum(sum[7]), .cout(cout[7])));
    adder1bit adder8 (.a(a[8], .b(b[8]), .cin(cin[7]), .sum(sum[8]), .cout(cout[8])));
    adder1bit adder9 (.a(a[9], .b(b[9]), .cin(cin[8]), .sum(sum[9]), .cout(cout9)));
    

endmodule // adder10bit