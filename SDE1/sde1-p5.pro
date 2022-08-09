/**
 * Shane Gaymon
 * CPSC 3520 - 001
 * Software Development Experience 1
 * March 15, 2022
 */ 


flower(daisies, med, wet, yellow).
flower(roses, med, dry, red).
flower(petunias, med, wet, pink).
flower(daffodils, med, wet, yellow).
flower(begonias, tall, wet, white).
flower(snapdragons, tall, dry, red).
flower(marigolds, short, wet, yellow).
flower(gardenias, med, wet, red).
flower(gladiolas, tall, wet, red).
flower(bird_of_paradise, tall, wet, white).
flower(lilies, short, dry, white).
flower(azalea, med, dry, pink).
flower(buttercup, short, dry, yellow).
flower(poppy, med, dry, red).
flower(crocus, med, dry, orange).
flower(carnation, med, wet, white).
flower(tulip, short, wet, red).
flower(orchid, short, wet, white).
flower(chrysanthemum, tall, dry, pink).
flower(dahlia, med, wet, purple).
flower(geranium, short, dry, red).
flower(lavender, short, dry, purple).
flower(iris, tall, dry, purple).
flower(peonies, short, dry, pink).
flower(periwinkle, med, wet, purple).
flower(sunflower, tall, dry, yellow).
flower(violet, short, dry, purple).
flower(zinnia, short, wet, yellow).

isSameName(D1, D2) :- not(D1 = D2).    

wetBed(1, dry).
wetBed(3, wet).
wetBed(4, wet).
wetBed(6, dry).

allowed(X, X).
allowed(short, med).
allowed(med, tall).
allowed(med, short).
allowed(tall, med).

/**
 * correctColor/6 - returns true if no two adjacent beds share the same color
 */ 

correctColor(C1,C2,C3,C4,C5,C6) :-
    not(C1 = C2),
    not(C2 = C3),
    not(C3 = C4),
    not(C4 = C5),
    not(C5 = C6).

/**
 * allowedSize/6 - returns true if no two adjacent beds are more than one size difference
 * apart, returns false otherwise
 */ 

allowedSize(S1, S2, S3, S4, S5, S6) :-
    allowed(S1, S2),
    allowed(S2, S3),
    allowed(S3, S4),
    allowed(S4, S5), 
    allowed(S5, S6).

/**
 * noDuplicates/6 - returns true if no arguments bind to the same flower, false otherwise
 */

noDuplicates(F1,F2,F3,F4,F5,F6) :-
    isSameName(F1, F2),
    isSameName(F1, F3),
    isSameName(F1, F4),
    isSameName(F1, F5),
    isSameName(F1, F6),
    isSameName(F2, F3),
    isSameName(F2, F4),
    isSameName(F2, F5),
    isSameName(F2, F6),
    isSameName(F3, F4),
    isSameName(F3, F5),
    isSameName(F3, F6),
    isSameName(F4, F5),
    isSameName(F4, F6),
    isSameName(F5, F6).

/**
 * display_bed/5 -  write predicate to display each assigned bed's attributes
 */ 

display_bed(Bed, Flower, Size, WetOrDry, Color) :- 
    write('Bed #'), write(Bed), write(': \t'), write(Flower), write(' \t'), write(Size), write(' \t'), write(WetOrDry), write(' \t'), write(Color), nl, nl.


/**
 * bedplan/6 - goal predicate that will simply assign different flowers to the beds,
 * check that each of the flowers are different, check that no two adjacent beds have 
 * the same color, checks the wet/dry criteria, 
 * and then prints out each bed's attributes
 */ 

bedplan(F1,F2,F3,F4,F5,F6) :-
    flower(F1, S1, dry, C1),
    flower(F2, S2, W2, C2),
    flower(F3, S3, wet, C3),
    flower(F4, S4, wet, C4),
    flower(F5, S5, W5, C5),
    flower(F6, S6, dry, C6),
    noDuplicates(F1,F2,F3,F4,F5,F6),
    correctColor(C1,C2,C3,C4,C5,C6),
    allowedSize(S1,S2,S3,S4,S5,S6),
    display_bed(1, F1, S1, dry, C1),
    display_bed(2, F2, S2, W2, C2),
    display_bed(3, F3, S3, wet, C3),
    display_bed(4, F4, S4, wet, C4),
    display_bed(5, F5, S5, W5, C5),
    display_bed(6, F6, S6, dry, C6), nl.
