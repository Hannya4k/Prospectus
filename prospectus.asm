.386
.model flat, stdcall
option casemap :none
include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
include \masm32\include\masm32.inc
includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\masm32.lib

.data
border0 db 9, "----------------------------------------------------------------------------------------------------------------------------------------------", 0
header0 db 10, 9, "| College/Department |                       COLLEGE OF BUSINESS ADMINISTRATION EDUCATION                      | Reference   | CMO 39, 2021  |", 0
border1 db 10, 9,"----------------------------------------------------------------------------------------------------------------------------------------------", 0
header1 db 10, 9,"| Program            |   B A C H E L O R  O F  S C I E N C E  I N  R E A L  E S T A T E  M A N A G E M E N T   | Effectivity | SY 2023-2024  |", 0
border2 db 10, 9,"----------------------------------------------------------------------------------------------------------------------------------------------", 0
header2 db 10, 9,"| Major              |                                                                                         | Revision No. |      2       |", 0
border3 db 10, 9,"----------------------------------------------------------------------------------------------------------------------------------------------", 0

border4 db 10, 9,"----------------------------------------------------------------------------------------------------------------------------------------------", 0
year1 db 10, 9,"|                                                                 FIRST YEAR                                                                 |", 0
border5 db 10, 9,"----------------------------------------------------------------------------------------------------------------------------------------------", 0
year1firstSem db 10, 9, 9, "| First Semester                                                                              | Unit Distribution |  PreReq  |", 0
border6 db 10, 9, 9,"------------------------------------------------------------------------------------------------------------------------------", 0
txt1 db 10, 9, 9, "| Subj Code   |                                 Subject Title                                 | Lec | Lab | Total |          |", 0
border7 db 10, 9, 9,"------------------------------------------------------------------------------------------------------------------------------", 0
fyfsSub1 db 10, 9, 9, "| ACCBP 100   | Accounting Plus                                                               |  3  |  0  |   3   |   NONE   |", 0
border8 db 10, 9, 9,"------------------------------------------------------------------------------------------------------------------------------", 0
fyfsSub2 db 10, 9, 9, "| GE 8        | Readings In Philippine History                                                |  3  |  0  |   3   |   NONE   |", 0
border9 db 10, 9, 9,"------------------------------------------------------------------------------------------------------------------------------", 0
fyfsSub3 db 10, 9, 9, "| GE 2        | Purposive Communication w/ Interactive Learning                               |  6  |  0  |   6   |   NONE   |", 0
border10 db 10, 9, 9,"------------------------------------------------------------------------------------------------------------------------------", 0
fyfsSub4 db 10, 9, 9, "| GE 15       | Environmental Science                                                         |  3  |  0  |   3   |   NONE   |", 0
border11 db 10, 9, 9,"------------------------------------------------------------------------------------------------------------------------------", 0
fyfsSub5 db 10, 9, 9, "| GE 3        | The Contemporary World                                                        |  3  |  0  |   3   |   NONE   |", 0
border12 db 10, 9, 9,"------------------------------------------------------------------------------------------------------------------------------", 0
fyfsSub6 db 10, 9, 9, "| BA 100      | Essentials to Business Principle and Practices                                |  3  |  0  |   3   |   NONE   |", 0
border13 db 10, 9, 9,"------------------------------------------------------------------------------------------------------------------------------", 0
fyfsSub7 db 10, 9, 9, "| PAHF 1      | Movement Competency Training                                                  |  2  |  0  |   2   |   NONE   |", 0
border14 db 10, 9, 9,"------------------------------------------------------------------------------------------------------------------------------", 0
fyfsSub8 db 10, 9, 9, "| NSTP 1      | National Service Training Program 1                                           |  3  |  0  |   3   |   NONE   |", 0
border15 db 10, 9, 9,"------------------------------------------------------------------------------------------------------------------------------", 0
total1 db 10, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9,  "    |   TOTAL UNITS   |  26  |  0  |  26  |", 0
border16 db 10, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9,  "    ---------------------------------------", 0

border17 db 10, 9, 9,"------------------------------------------------------------------------------------------------------------------------------", 0
year1SecondtSem db 10, 9, 9, "| Second Semester                                                                             | Unit Distribution |  PreReq  |", 0
border18 db 10, 9, 9,"------------------------------------------------------------------------------------------------------------------------------", 0
fySsSub1 db 10, 9, 9, "| GE 1        | Understanding the self                                                        |  3  |  0  |   3   |   NONE   |", 0
border19 db 10, 9, 9,"------------------------------------------------------------------------------------------------------------------------------", 0
fySsSub2 db 10, 9, 9, "| GE 5        | Science, Technology, and Society                                              |  3  |  0  |   3   |   NONE   |", 0
border20 db 10, 9, 9,"------------------------------------------------------------------------------------------------------------------------------", 0
fySsSub3 db 10, 9, 9, "| UGE 1       | Reading Comprehension                                                         |  6  |  0  |   6   |   GE 2   |", 0
border21 db 10, 9, 9,"------------------------------------------------------------------------------------------------------------------------------", 0
fySsSub4 db 10, 9, 9, "| GE 4        | Mathematics in the Modern World                                               |  3  |  0  |   3   |   NONE   |", 0
border22 db 10, 9, 9,"------------------------------------------------------------------------------------------------------------------------------", 0
fySsSub5 db 10, 9, 9, "| REM 112     | Principles of Ecology                                                         |  3  |  0  |   3   |   NONE   |", 0
border23 db 10, 9, 9,"------------------------------------------------------------------------------------------------------------------------------", 0
fySsSub6 db 10, 9, 9, "| REM 122     | Ethical Standards for Real Estate Service Practice                            |  3  |  0  |   3   |   NONE   |", 0
border24 db 10, 9, 9,"------------------------------------------------------------------------------------------------------------------------------", 0
fySsSub7 db 10, 9, 9, "| PAHF 2      | Exercise-based Fitness Activities                                             |  2  |  0  |   2   |  PAHF 1  |", 0
border25 db 10, 9, 9,"------------------------------------------------------------------------------------------------------------------------------", 0
fySsSub8 db 10, 9, 9, "| NSTP 2      | National Service Training Program 2                                           |  3  |  0  |   3   |  NSTP 1  |", 0
border26 db 10, 9, 9,"------------------------------------------------------------------------------------------------------------------------------", 0
total2 db 10, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9,  "    |   TOTAL UNITS   |  26  |  0  |  26  |", 0
border27 db 10, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9,  "    ---------------------------------------", 0
.code
start:

 invoke ClearScreen
; Display the header
 invoke StdOut, addr border0
 invoke StdOut, addr header0
 invoke StdOut, addr border1
 invoke StdOut, addr header1
 invoke StdOut, addr border2
 invoke StdOut, addr header2
 invoke StdOut, addr border3
; Display the first year
invoke StdOut, addr border4
 invoke StdOut, addr year1
 invoke StdOut, addr border5
 invoke StdOut, addr year1firstSem
 invoke StdOut, addr border6
 invoke StdOut, addr txt1
 invoke StdOut, addr border7
 invoke StdOut, addr fyfsSub1
 invoke StdOut, addr border8
 invoke StdOut, addr fyfsSub2
 invoke StdOut, addr border9
 invoke StdOut, addr fyfsSub3
 invoke StdOut, addr border10
 invoke StdOut, addr fyfsSub4
 invoke StdOut, addr border11
 invoke StdOut, addr fyfsSub5
 invoke StdOut, addr border12
 invoke StdOut, addr fyfsSub6
 invoke StdOut, addr border13
 invoke StdOut, addr fyfsSub7
 invoke StdOut, addr border14
 invoke StdOut, addr fyfsSub8
 invoke StdOut, addr border15
 invoke StdOut, addr total1
 invoke StdOut, addr border16
 ; Display the second semester
 invoke StdOut, addr border17
 invoke StdOut, addr year1SecondtSem
 invoke StdOut, addr border18
 invoke StdOut, addr fySsSub1
 invoke StdOut, addr border19
 invoke StdOut, addr fySsSub2
 invoke StdOut, addr border20
 invoke StdOut, addr fySsSub3
 invoke StdOut, addr border21
 invoke StdOut, addr fySsSub4
 invoke StdOut, addr border22
 invoke StdOut, addr fySsSub5
 invoke StdOut, addr border23
 invoke StdOut, addr fySsSub6
 invoke StdOut, addr border24
 invoke StdOut, addr fySsSub7
 invoke StdOut, addr border25
 invoke StdOut, addr fySsSub8
 invoke StdOut, addr border26
 invoke StdOut, addr total2
 invoke StdOut, addr border27
 invoke ExitProcess, 0


end start