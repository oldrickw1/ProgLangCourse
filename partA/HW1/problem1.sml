fun is_older(d1 : int*int*int, d2 : int*int*int) =
    if ((#1 d1 < #1 d2) orelse ((#1 d1 = #1 d2) andalso (#2 d1 < #2 d2)) orelse ((#1 d1 = #1 d2) andalso (#2 d1 = #2 d2) andalso (#3 d1 < #3 d2)))
    then true
    else false;

fun number_in_month(dates : (int*int*int) list, month : int) =
    if null dates
    then 0
    else (if (#2(hd(dates)) = month) then 1 else 0) + number_in_month(tl dates, month)

  
fun number_in_months(dates : (int*int*int) list, months : int list) =
    if null months
    then 0
    else number_in_month(dates, hd months) + number_in_months(dates, tl months);


fun dates_in_month(dates : (int*int*int) list, month : int) =
    if null dates
    then []
    else if (#2(hd(dates)) = month) then  hd(dates) :: dates_in_month(tl dates, month) else dates_in_month(tl dates, month)

fun dates_in_months(dates :(int*int*int) list, months : int list) =
    if null months
    then []
    else dates_in_month(dates, hd months) @ dates_in_months(dates, tl months);
    
fun get_nth(strs : string list, n : int) =
    if n = 1
    then hd strs
    else get_nth(tl strs, n-1);


val months = ["January", "February", "March", "April",
	      "May", "June", "July", "August", "September", "October", "November", "December"];


fun date_to_string(date : (int*int*int)) =
    get_nth(months, #2(date)) ^ " " ^ Int.toString(#3 date) ^ ", " ^ Int.toString(#1 date);

val bdO = (1995, 03, 25);
val bdJ = (1999, 04, 13);
val bdP = (1997, 06, 20);
val bdB = (1961, 03, 22);
val bdI = (1959, 03, 13);

val bdList = [bdO, bdJ, bdP, bdB, bdI];

val nums = [3,5,8];


