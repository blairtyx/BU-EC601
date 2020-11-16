# Sprint4

Finit Field Multiplier

- Polynomial Multiplication
- Reduction Modulo the irreducible polynomial



irreducible polynomial is predefined, in our case : $ x^8 + x^7 + x^5 + x^4 + x^2 + x^1 + 1$





### Polynomial Multiplication

Integer:
$$
(x^4 + x^3 + x2 + x + 1) * (x + 1) = x^5 + 2x^4 + 2x^3 + 2x^2 + 2x^1 + 1
$$
Finite Field:
$$
(x^4 + x^3 + x2 + x + 1) * (x + 1) = x^5 + 1
$$





### Reduction Modulo









### Example

binary:
$$
8'b0000'1000 * 8'b 0101'0100
$$
Polynomial basis:
$$
(x^3 * (x^6 + x^4 + x^2)) mod ( x^8 + x^7 + x^5 + x^4 + x^2 + x^1 + 1) \\
= (x^9 + x^7 + x^5 ) mod (x^8 + x^7 + x^5 + x^4 + x^2 + x^1 + 1)\\
$$

$$
q = x+1\\
r = x^6 + x^5 + x^4 + x^3 + 1
$$



