#define PLUS(x,y) x ## y
#define ADD(x,y) x ## y
#define SUM(x,y,z) x ## y ## z
PLUS(,);
PLUS(,id);
PLUS(,1);
PLUS(,"string");
PLUS(,'c');
PLUS(,@);
PLUS(,.);
PLUS(id,);
PLUS(1,);
PLUS("string",);
PLUS('c',);
PLUS(@,);
PLUS(.,);

PLUS(id1,id2);
PLUS(or_,eq);
PLUS(id1,1);
PLUS(id1,1e5);
PLUS(id1,1_id);
PLUS(u8,"ab");
PLUS(L,"ABC");
PLUS(R,"ab(cd)ab");
PLUS(u,'x');
PLUS(id1,\u0300\u0300);//id + non-whitespace character that can be part of id
PLUS(id1,or);//id + operator that can be added to id
//id + punctuation can't be valid
PLUS(13,_id2);
PLUS(1.,_id2);
PLUS(1.0e+14,_id2);
PLUS(1e-13,_id2);
PLUS(0.14,_id2);
PLUS(1..2,_id2);//valid ppnumber, invalid number
PLUS(0x43,_id2);
PLUS(0,xff);
PLUS(0x,ab13);
PLUS(0xf,_id);
PLUS("abc",_id2);
PLUS('c',_id2);
//non-whitespace + id can't be valid
PLUS(and,_id2);
//punc + id can't ve valid
PLUS(1,2);
PLUS(1.,2);
PLUS(1,.2);
PLUS(1e+,15);
PLUS(1e+0,2);
PLUS(0x,034);
PLUS(0,77);
//number + string or char do not look valid
PLUS(1_,\u0300);
PLUS(1,.);
//SUM(1e,+,15);if 2nd ## applies first, +15 will be invalid token=>undefined
PLUS(1e,+);//valid pp-number
PLUS(3,...);
PLUS(.,14);
PLUS(|,=);
PLUS(and,or);
PLUS(>,>=);
