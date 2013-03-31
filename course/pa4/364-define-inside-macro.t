#define B(X) X
#define A(X) B(X)

A(#define D E)
D
