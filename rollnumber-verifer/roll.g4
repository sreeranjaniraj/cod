lexer grammar roll ;
//CAMPUS : ['CB''AM''BL'] -> skip;
//SCHOOL : ['EN''AS''MG'] -> skip;
//LEVEL : ['U''P'] -> skip;
//DOT: '.' -> skip;
//DUR : [1-6] -> skip;
//CIR : ['CSE''ECE''EEE'] -> skip;
//BATCH: [00-30] -> skip;
//ROLLNO: [000-599] -> skip;
//ROLL: ['CB''AM''BL']+'.'+['EN''AS''MG']+'.'+['U''P']+[1-6]+['CSE''ECE''EEE']+[0-9]+[0-9]+[0-5]+[0-9]+[0-9] {System.out.println("\nRoll no. is valid");};
//DIGIT:[0-9]+ {System.out.println("Digit");};
//WS : [ \t\r\n]+ -> skip ;

CAMPUS:'CB'|'AM'|'BL';
SCHOOL:'EN'|'AS'|'MG';
LEVEL:'U'|'P';
DURATION:[1-6];
DOT: '.' ;
CIRCUIT:'CSE'|'ECE'|'EEE';
BATCH:[0-9][0-9];
ROLL:[0-5][0-9][0-9];
ROLLNO:(CAMPUS)(DOT)(SCHOOL)(DOT)(LEVEL)(DURATION)(CIRCUIT)(BATCH)(ROLL){System.out.println("\nRoll no. is valid");};
WS:[\t\r\n]+ ->skip;
