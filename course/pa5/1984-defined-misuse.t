#define defined(y) true
#if defined(y)
BOO
#endif
#if defined defined
BAD_STYLE
#endif
defined(y)

#define true false
#if true
WRONG
#endif
