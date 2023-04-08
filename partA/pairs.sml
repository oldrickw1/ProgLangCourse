fun swap(pr : int * bool) =
    (#2 pr, #1 pr);

val pair = (3, true);

val pairSwapped = swap(pair);
