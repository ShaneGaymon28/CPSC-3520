
# Files:
    sde2.ml - the main ocaml source for my implementation. Functions provided:
    
            val first_duplicate : int list -> int = <fun>:
                returns the first item in the list that occurs more than once

            val nonrepeat_help : int list * int list -> int = <fun>:
                helper function that returns the first non-repeating item in a list
            
            val first_nonrepeating : int list -> int = <fun>:
                returns the first non-repeating item in a list
            
            val sumOfTwo : int list * int list * int -> bool = <fun>:
                returns true if there is an integer in list A which added to an integer in list B,
                is equal to V
            
            val make_ascending : int * int -> int list = <fun>:
                helper function that adds elements to an ascending list, up to n
            
            val make_descending : int -> int list = <fun>:
                helper function that adds elements to a descending list, up to n
            
            val mergeLists : 'a list -> 'b list -> ('a * 'b) list = <fun>:
                helper function to create an integer tuple from each list that add up to n
            
            val cyk_sublists : int -> (int * int) list = <fun>:
                returns all integer pairs that add up to n

    sde2.log - ASCII log file containing 2 sample uses of each required function
