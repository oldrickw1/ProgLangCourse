(* This is a comment. This is our first program. *)

(* Create a variable, have that variable hold 34, of type int. x will be a variable of type int. val is a keyword, it means: I am about to create a variable. '=' is part of that syntax on the right side of the '='is an expression. An integer constant is the simplest kind of expression. Semicolon indicates end of statement.  *)

val x = 34;
(* static environment: x --> int. 34 is an integer. The program knows this (build in) *)
(* dynamic environment: x --> 34 *)

val y = 17;
(* static environment: x --> int, y --> int *)
(* dynamic e(nvironment: x --> 34, y --> 17 *)
  
(* Save with C-x C-s. This is now a program. This is a sequence of variable bindings. These 2 lines are bindings.
 To run a program, we use the REPL (Read, Eval, Print loop (C-c C-s + return) *)

val z = (x + y) + (y + 2);
(* static environment: x,y ..., z --> int. Addition has type int, if both sub-expressions have type int. The types of the variables are looked up in the static environment *)
(* dynamic environment: x --> 34, y --> 17, z --> 70. the expression is evaluated in the current dynamic environment *)

(* Before any of the code is run, the file is type-checked. If the program makes inconsistent assumptions of what's an int, or if variables are undefined, you get an error before the program runs. The static environment takes care of this. It happens before any evaluation! *)

val abs_of_z = if z < 0 then 0 - z else z;

(* Type checking of if, else statement: condition gives bool ( < is of type bool). The 2 branches can have any type, but need to have the same type. int in this case *)



