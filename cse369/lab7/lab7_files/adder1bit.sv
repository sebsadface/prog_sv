module adder1bit (
    input logic a, b, cin,
    output logic sum, cout
);
    assign sum = a ^ b ^ cin;
    assign cout = a & b + a & c + b & c;

endmodule // adder1bit