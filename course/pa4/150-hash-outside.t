#define X(A) A
ab ## cd
a #name
X(a ## c)
// http://forum.cppgm.org/question/1074/token-generated-from-macro-replacement/
#define x(a,b) a ## b
#define f(x) a x b
f(##)
x(A,B)
