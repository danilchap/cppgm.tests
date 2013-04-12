// http://forum.cppgm.org/question/1178/additional-tests-for-pa5/
stage1
#if 0
#include "nonexistent.h"
#endif
stage2
#if 0
#define WRONG __VA_ARGS__
#endif
stage3
#define X(a)
#if 0
X(a, b)
#endif
staget4
