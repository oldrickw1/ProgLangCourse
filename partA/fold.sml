fun fold (f, acc, xs) =
    case xs of
	[] => acc
      | x::xs => fold(f, f(acc, x), xs);

fun h(x, y) = x + y;

val x = fold(h, 5, [1,2,3]);
