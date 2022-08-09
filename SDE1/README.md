# SDE 1 - Spring 2022

### Objective:
  The objective of this project is to create Prolog predicates to create a 6 bed layout based on a list of flower criteria
  
### Flower Bed Rules:
  1. Beds are in a straight line, so each bed has two adjacent beds.  Beds are
numbered 1 .. N, N is at least 4 and should be even. Bed i is adjacent to
beds i-1 and i+1 (except beds 1 and N, of course).

  2. Only one bed can have a given type of flower - available flowers are listed
in the flower predicate.

  3. Flowers have Name, Size, Wet/Dry, Color.
   
  4. No two adjacent beds can have the same color flower.
   
  5. No two adjacent beds can have flowers whose size is more than one size
difference.  Sizes are small, med and tall so small next to small is fine,
small next to medium is fine, but small next to tall is not.
  
  6. the two outermost beds (1 and N) are dry, the two innermost are wet, the
ones in between (if there are any) can take either.  For example, if there
were 8 beds the layout would be D E E W W E E D where D is dry, E is either,
and W is wet.

### Flower List:
    Flower Name, Size, Wet/Dry, Color
  
  - daisies, med, wet, yellow
  - roses, med, dry, red
  - petunias, med, wet, pink
  - daffodils, med, wet, yellow
  - begonias, tall, wet, white
  - snapdragons, tall, dry, red
  - marigolds, short, wet, yellow
  - gardenias, med, wet, red
  - gladiolas, tall, wet, red
  - bird_of_paradise, tall, wet, white
  - lilies, short, dry, white
  - azalea, med, dry, pink
  - buttercup, short, dry, yellow
  - poppy, med, dry, red
  - crocus, med, dry, orange
  - carnation, med, wet, white
  - tulip, short, wet, red
  - orchid, short, wet, white
  - chrysanthemum, tall, dry, pink
  - dahlia, med, wet, purple
  - geranium, short, dry, red
  - lavender, short, dry, purple
  - iris, tall, dry, purple
  - peonies, short, dry, pink
  - periwinkle, med, wet, purple
  - sunflower, tall, dry, yellow
  - violet, short, dry, purple
  - zinnia, short, wet, yellow


### Input
  Use the following command to run the bedplan() predicate:
    % bedplan(F1,F2,F3,F4,F5,F6):- ...
    
  Or you can specify any of the flower #'s name (e.g. F1 = azalea) to get a possible layout with the flower in the specified bed position
 

### Output:
  The bedplan() predicate will return the bed layout (including bed position, flower name, size, wet or dry, and flower color) that follows the given 
  flower bed rules
  
  Note: If you would like more than one layout, you can enter a ';' in the command prompt to run the program again
  


