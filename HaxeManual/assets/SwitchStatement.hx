// if...else if 構文を使った条件分岐
if( v == 0 )
  e1;
else if( v == foo(1) )
  e2;
else if( v == 65 || v == 90 )
  e3;
else
  e4;


// switchを使った同様の条件分岐
switch( v ) {
  case 0:
    e1;
  case foo(1):
    e2;
  case 65, 90:
    e3;
  default:
    e4;
}
