// http://forum.cppgm.org/question/1811/concat-operator-with-multiple-pp-tokens-in-the-parameter/
// suhorng
#define triple(a,b,c) a ## b ## c
triple(a, A.B, b)

#define triple(a,b,c) a ## b ## c
#define call_triple(a,b,c) triple(a,b,c)
#define hash_hash # ## #

call_triple(p, P hash_hash Q, q);
call_triple(x, X Y, y)
