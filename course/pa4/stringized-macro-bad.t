// http://forum.cppgm.org/question/1738/should-stringized-parameter-be-checked-for-correctness/
// this test fails on some incorrect fixes for the stringized-macro test.
#define max(a,b) (((a)>(b))?(a):(b))
#define stringize(x) # x x

stringize(max(0))
