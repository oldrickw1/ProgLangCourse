val pair = (4, 16);

fun swap (pr : int * int) =
    (#2 pr, #1 pr);

fun sum_two_pairs (pr1 : int * int, pr2 : int * int) =
    (#1 pr1 + #1 pr2, #2 pr1 + #2 pr2);

fun list_product (xs : int list) =
    if null xs
    then 1
    else hd xs * list_product(tl xs);
