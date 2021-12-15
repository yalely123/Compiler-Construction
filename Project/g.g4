grammar g;        
prog:    (stmts NEWLINE)* ;
stmts:    stmt ('and' stmts)*
    ;
stmt:   'open' ID ('in' INT TIME_UNIT)?
    |   'close' ID ('in' INT TIME_UNIT)?
    |   'increase' ID ID ('by' INT)?
    |   'decrease' ID ID ('by' INT)?
    |   'set' ID ID('to' TOGGLE)?
    |   'accept call'
    |   'deny call'
    |   'call security'
    ;
TIME_UNIT : 'hour' | 'minute'|'seconds'|'hr'|'min'|'sec';
TOGGLE : 'on' | 'off';	
ID : [a-z,A-Z,_]+ [a-z,A-Z,0-9,_]* ;	
INT : [0-9]+ ;
NEWLINE : [\r\n]+ ;