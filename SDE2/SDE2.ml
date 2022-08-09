(* 
    Shane Gaymon
    CPSC 3520 - 001
    Software Development Experience 2
    Spring 2022
 

    1. First Duplicate in a List (first_duplicate) 
  *
  * Prototype - first_duplicate of a list returns -10000 if there are no duplicates in the integer list argument. Otherwise
  * the first item that occurs more than once (duplicate) in the integer list is returned
  * 
  * Signature - val first_duplicate : int list -> int = <fun> 
  *
 *)
 

let rec first_duplicate = function alist ->
    if alist == [] then -10000 (* check to see if the list is empty *)
        else 
            if List.mem (List.hd alist) (List.tl alist) == true then List.hd alist  (* if the head of list is in the tail, it is a duplicate *)
                else        
                    first_duplicate(List.tl alist);;    (* keep trying with the tail of the list *)


(*  Helper Function - nonrepeat_help
  *
  * Description - this function recursively tests each element in the list, adding duplicate integers to a duplicate list
  * and will return the first non-repeated element. Otherwise it returns -10000
  * 
  * Signature - val nonrepeat_help : int list * int list -> int = <fun>
  *
*)

let rec nonrepeat_help = function (alist, duplicate_list) ->
    if alist == [] then -10000      (* check to see if the list is empty *)
        else 
            if List.mem(List.hd alist)(List.tl alist) || List.mem(List.hd alist)(duplicate_list) then       (* if the current element being checked is a member of the list OR the duplicate list,  *)
                nonrepeat_help(List.tl alist, List.hd alist::duplicate_list)                                (* add the current element to the duplicate list and keep trying with the tail *)
                else                                                                                        
                    List.hd alist;;     (* found the first nonrepeating element *)


(*  2. First Non-Repeating Element in a List (first_nonrepeating) 
  *
  * Prototype - first_nonrepeating of a list returns -10000 if there are no non-repeated (non-duplicated) element in the list. Otherwise it
  * returns the first non-repeating element in the integer list.
  * 
  * Signature - val first_nonrepeating : int list -> int = <fun>
  *
 *)

let rec first_nonrepeating = function alist ->
    if List.tl alist == [] then -10000      (* check to see if the list is empty *)
        else 
            if List.mem (List.hd alist) (List.tl alist) == false then List.hd alist     (* if the head of the list is not in the tail, it is non repeating *)
                else     
                    nonrepeat_help(alist, []);;     


(*  3. The Sum of 2 Problem (sumOfTwo)
  *
  * Prototype - sumOfTwo(a, b, v) returns false if there does not exist an integer in a, which added to any
  * integer in b that sum to v, returns true
  * 
  * Signature - val sumOfTwo : int list * int list * int -> bool = <fun>
  *
 *)

let rec sumOfTwo = function (a, b, v) ->
    if a == [] || b == [] then false    (* if either of the two lists are empty, return false *)
        else 
            if List.hd a + List.hd b == v then true     (* if the heads of the two lists add up to v, we found our answer *)
                else 
                    sumOfTwo(List.tl a, b, v) || sumOfTwo(a, List.tl b, v);;   


(* Helper Function - make_ascending
  *
  * Description - this function will recursively add integers to a list, in ascending order, up to n
  *
  * Signature - val make_ascending : int * int -> int list = <fun>
  *
 *)

let rec make_ascending = function (n, idx) ->
    if n > 1 then idx::make_ascending(n-1, idx+1)   (* add the current index to the list, increment idx, decrement n *)
        else [];;

(* Helper Function - make_descending
  *
  * Description - this function will recursively add integers to a list, in descending order, down to n
  *
  * Signature - val make_descending : int -> int list = <fun>
  *
*)

let rec make_descending = function n ->
    if n > 1 then (n-1)::make_descending(n-1)   (* add the current index to the list and decrement n *)
        else [];;

(* Helper Function - mergeLists
  *
  * Description - this function will match each element in listA to each element in listB to create
  * the cyk sublist
  *
  * Signature - val mergeLists : 'a list -> 'b list -> ('a * 'b) list = <fun>
  *
*)

let rec mergeLists listA listB =
    match listA, listB with
    | [], _ -> []       (* if listA is empty, return an empty list *)
    | _, [] -> []       (* if listB is empty, return an empty list *)
    | hd :: tl, hd2 :: tl2 -> (hd, hd2) :: mergeLists(tl)(tl2);;    (* the heads from each list become a tuple which is added to the list of tuples *)



(* 4. CYK Parsing Algorithm-Inspired Problem (cyk_sublists)
  * 
  * Prototype - cyk_sublists n returns all of the positive integer pairs x and y that add up to n. Pairs
  * are returned as tuples. Argument n must be larger than 1, otherwise return []
  *
  * Signature - val cyk_sublists : int -> (int * int) list = <fun>
  *
*)

let rec cyk_sublists = function (n) ->
    if n < 1 then []        (* check to see if the list is empty *)
        else mergeLists(make_ascending(n, 1))(make_descending(n));;     (* merge the list with calls to make the ascending and descending lists as arguments *)


                


                    



            