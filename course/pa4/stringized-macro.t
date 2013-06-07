// http://forum.cppgm.org/question/1738/should-stringized-parameter-be-checked-for-correctness/
#define max(a,b) (((a)>(b))?(a):(b))
#define stringize(x) # x

stringize(max(0))
