//This file was generated from (Commercial) UPPAAL 4.0.14 (rev. 5615), May 2014

/*

*/
//NO_QUERY

/*
Toutes les armes peuvent \u00eatre d\u00e9truites simultan\u00e9ment
*/
E<> Mangonel1.detruit && Ram1.detruit && Scorpion1.detruit && Trebuchet1.detruit && Trebuchet2.detruit

/*
Le ch\u00e2teau peut \u00eatre d\u00e9truit
*/
E<> Chateau.detruit

/*
Si toutes les armes sont d\u00e9truites, alors le ch\u00e2teau n'est pas d\u00e9truit
*/
A[] (Mangonel1.detruit && Ram1.detruit && Scorpion1.detruit && Trebuchet1.detruit && Trebuchet2.detruit) imply not Chateau.detruit

/*
Si le ch\u00e2teau est d\u00e9truit alors au moins une des armes n'est pas d\u00e9truite
*/
A[] Chateau.detruit imply not (Mangonel1.detruit && Ram1.detruit && Scorpion1.detruit && Trebuchet1.detruit && Trebuchet2.detruit)

/*
\u00e0 un moment, soit le ch\u00e2teau est d\u00e9truit, soit toutes les armes sont d\u00e9truites
*/
A<> Chateau.detruit || (Mangonel1.detruit && Ram1.detruit && Scorpion1.detruit && Trebuchet1.detruit && Trebuchet2.detruit)

/*
Si il a deadlock alors le ch\u00e2teau est d\u00e9truit ou toutes les armes sont d\u00e9truties
*/
A[] deadlock imply (Chateau.detruit || (Mangonel1.detruit && Ram1.detruit && Scorpion1.detruit && Trebuchet1.detruit && Trebuchet2.detruit))

/*
Si la fabrique est occup\u00e9e elle sera libre \u00e0 un moment
*/
Fabrique1.occupee --> Fabrique1.libre

/*
Le ch\u00e2teau peut \u00eatre en 223 secondes ou moins
*/
E<> Chateau.detruit && globalClock <= 223

/*
Toutes les armes peuvent \u00eatre d\u00e9truites en 308 secondes ou moins
*/
E<> (Mangonel1.detruit && Ram1.detruit && Scorpion1.detruit && Trebuchet1.detruit && Trebuchet2.detruit) && globalClock <= 308

/*

*/
E<> Chateau.detruit && ((Mangonel1.detruit + Ram1.detruit + Scorpion1.detruit + Trebuchet1.detruit + Trebuchet2.detruit) == 1)

/*

*/
E<> (Mangonel1.detruit && Ram1.detruit && Scorpion1.detruit && Trebuchet1.detruit && Trebuchet2.detruit) && Chateau.castlePV >= 779

/*

*/
//NO_QUERY
