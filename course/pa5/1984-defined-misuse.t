// overriding true keyword may lead to underfined behaviour: 
// http://forum.cppgm.org/question/1326/1764312-illegal-macro-names/?answer=1329#post-id-1329
#define True false
#define TRUE true
#if True
WRONG
#endif

#if TRUE
RIGHT
#endif
