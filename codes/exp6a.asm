DATA SEGMENT
    S1 DB 20H,4H,66H,13H,17H
DATA ENDS

CODE SEGMENT
ASSUME CS:CODE, DS:DATA

START:
MOV AX,DATA
MOV DS,AX
MOV CH,04H

UP2:
MOV CL,04H
LEA SI,S1

UP1:
MOV AL,[SI]
MOV BL,[SI+1]
CMP AL,BL
JC DOWN   
MOV DL,[SI+1]
XCHG [SI],DL
MOV [SI+1],DL

DOWN:
INC SI
DEC CL
JNZ UP1
DEC CH
JNZ UP2      

CODE ENDS
END START