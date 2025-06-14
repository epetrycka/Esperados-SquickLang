grammar Esperados;
import EsperadosTokens, EsperadosExpr;

// PARSER

program         : skipBefore (GREETING instructions* GOODBYE ( skipBefore (GREETING instructions* GOODBYE ))* skipAfter) ;

skipBefore      : (~(GREETING | GOODBYE))* ;

skipAfter       : (~(GREETING | GOODBYE))* ;

instructions    : printExpr
                | variableExpr
                | variableChange
                | deleteStmt
                | condition 
                | forLoop 
                | forEachLoop
                | whileLoop
                | functionDef
                | functionCall
                | defList
                | addToList
                | removeFromList
                | insertToList
                | returnStmt
                | replaceInStruct
                | defDict
                ;

actions         : instructions
                | BREAK
                | CONTINUE ;

printExpr       : PRINT LP expr (COMMA expr)* RP ;

variableExpr    : GLOBAL? VARDEF type? NAME ASG (expr | INPUT LP RP);

variableChange  : NAME ASG (expr | INPUT LP RP | LS (expr (COMMA expr)*)? PS | LC (expr COLON expr (COMMA expr COLON expr)*)? RC);

deleteStmt      : DEL NAME ;

condition       : ifExpr elifExpr* elseExpr? ;

ifExpr          : IF LP expr RP LC actions* RC ;

elifExpr        : ELIF LP expr RP LC actions* RC ;

elseExpr        : ELSE LC actions* RC ;

forLoop         : FOR LP NAME forParam forParam forParam? RP LC actions* RC ;

forParam        : SEMICOLON (INT | expr);

whileLoop       : WHILE LP expr RP LC actions* RC ;

forEachLoop     : FOREACH NAME IN NAME LC actions* RC ;

functionDef     : DEF NAME LP parameters? RP LC actions* RC ;

parameters      : (type COLON)? NAME (COMMA (type? COLON)? NAME)* ;

returnStmt      : RETURN expr? ;

defList         : GLOBAL? VARDEF LIST NAME ASG (LS (expr (COMMA expr)*)? PS | getDictKeys | getDictValues);

addToList       : NAME ADD expr ;

removeFromList  : NAME SUB expr ;

insertToList    : NAME ADD LP expr COMMA expr RP ;

replaceInStruct : NAME LS expr PS ASG expr ;

defDict         : GLOBAL? VARDEF DICT NAME ASG LC (expr COLON expr (COMMA expr COLON expr)*)? RC ;