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
yearOneFirstSem db 10, 9, 9, "| First Semester                                                                              | Unit Distribution |  PreReq  |", 0
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
total1 db 10, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 32, 32, 32, 32, "|   Total Units   |  26  |  0  |  26  |", 0
border16 db 10, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 32, 32, 32, 32,  "---------------------------------------", 0

border17 db 10, 9, 9,"------------------------------------------------------------------------------------------------------------------------------", 0
yearOneSecondtSem db 10, 9, 9, "| Second Semester                                                                             | Unit Distribution |  PreReq  |", 0
border18 db 10, 9, 9,"------------------------------------------------------------------------------------------------------------------------------", 0
fyssSub1 db 10, 9, 9, "| GE 1        | Understanding the self                                                        |  3  |  0  |   3   |   NONE   |", 0
border19 db 10, 9, 9,"------------------------------------------------------------------------------------------------------------------------------", 0
fyssSub2 db 10, 9, 9, "| GE 5        | Science, Technology, and Society                                              |  3  |  0  |   3   |   NONE   |", 0
border20 db 10, 9, 9,"------------------------------------------------------------------------------------------------------------------------------", 0
fyssSub3 db 10, 9, 9, "| UGE 1       | Reading Comprehension                                                         |  6  |  0  |   6   |   GE 2   |", 0
border21 db 10, 9, 9,"------------------------------------------------------------------------------------------------------------------------------", 0
fyssSub4 db 10, 9, 9, "| GE 4        | Mathematics in the Modern World                                               |  3  |  0  |   3   |   NONE   |", 0
border22 db 10, 9, 9,"------------------------------------------------------------------------------------------------------------------------------", 0
fyssSub5 db 10, 9, 9, "| REM 112     | Principles of Ecology                                                         |  3  |  0  |   3   |   NONE   |", 0
border23 db 10, 9, 9,"------------------------------------------------------------------------------------------------------------------------------", 0
fyssSub6 db 10, 9, 9, "| REM 122     | Ethical Standards for Real Estate Service Practice                            |  3  |  0  |   3   |   NONE   |", 0
border24 db 10, 9, 9,"------------------------------------------------------------------------------------------------------------------------------", 0
fyssSub7 db 10, 9, 9, "| PAHF 2      | Exercise-based Fitness Activities                                             |  2  |  0  |   2   |  PAHF 1  |", 0
border25 db 10, 9, 9,"------------------------------------------------------------------------------------------------------------------------------", 0
fyssSub8 db 10, 9, 9, "| NSTP 2      | National Service Training Program 2                                           |  3  |  0  |   3   |  NSTP 1  |", 0
border26 db 10, 9, 9,"------------------------------------------------------------------------------------------------------------------------------", 0
total2 db 10, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 32, 32, 32, 32,"|   Total Units   |  26  |  0  |  26  |", 0
border27 db 10, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 32, 32, 32, 32, "---------------------------------------", 0
border28 db 10, 9,"----------------------------------------------------------------------------------------------------------------------------------------------", 0
year2 db 10, 9,"|                                                                 SECOND YEAR                                                                |", 0
border29 db 10, 9,"----------------------------------------------------------------------------------------------------------------------------------------------", 0
yearTwofirstSem db 10, 9, 32, 32,"| First Semester                                                                                | Unit Distribution |       PreReq       |", 0
border30 db 10, 9, 32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
txt2 db 10, 9,32,32, "| Subj Code   |                                  Subject Title                                  | Lec | Lab | Total |                    |", 0
border31 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
syfsSub1 db 10, 9, 32,32, "| REM 123     | Law on Obligations and Contract w/ Real Property Law                            |  3  |  0  |   3   |  BA 100, REM 122   |", 0
border32 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
syfsSub2 db 10, 9, 32,32, "| REM 328     | Real Estate Economics                                                           |  3  |  0  |   3   |    GE 4, BA 100    |", 0
border33 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
syfsSub3 db 10, 9, 32,32, "| BAHR 213    | Good Governance & Social Responsibility                                         |  3  |  0  |   3   |        NONE        |", 0
border34 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
syfsSub4 db 10, 9, 32,32, "| REM 12L     | Fundamentals of Real Estate Management                                          |  3  |  0  |   3   |       REM 122      |", 0
border35 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
syfsSub5 db 10, 9, 32,32, "| TAX 101     | Philippine Tax System & Income Taxation                                         |  3  |  0  |   3   |    GE 4, BA 100    |", 0
border36 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
syfsSub6 db 10, 9, 32,32, "| LAW 103     | Partnership  and Corporation Law                                                |  3  |  0  |   3   |       BA 100       |", 0
border37 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
syfsSub7 db 10, 9, 32,32, "| GE 11       | The Entrepreneurial Mind                                                        |  3  |  0  |   3   |        NONE        |", 0
border38 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
syfsSub8 db 10, 9, 32,32, "| REM 215     | Basic Trigonometry in Real Estate Appraisal                                     |  3  |  0  |   3   |    GE 4, BA 100    |", 0
border39 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
syfsSub9 db 10, 9, 32,32, "| PAHF 3      | Dance and Sports 1                                                              |  2  |  0  |   2   |       PAHF 2       |", 0
border40 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
total3 db 10, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9,"|   Total Units   |  26  |  0  |  26  |", 0
border41 db 10, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9,"---------------------------------------", 0
border42 db 10, 9, 32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
yearTwoSecondSem db 10, 9, 32, 32,"| Second Semester                                                                               | Unit Distribution |       PreReq       |", 0
border43 db 10, 9, 32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
syssSub1 db 10, 9, 32,32, "| REM 216     | Real Estate Finance                                                             |  3  |  0  |   3   |      REM 328       |", 0
border44 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
syssSub2 db 10, 9, 32,32, "| UGE 2       | Technical Writing in the Discipline                                             |  3  |  0  |   3   |       UGE 1        |", 0
border45 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
syssSub3 db 10, 9, 32,32, "| GE 6        | Rizal's Life and Works                                                          |  3  |  0  |   3   |        NONE        |", 0
border46 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
syssSub4 db 10, 9, 32,32, "| REM 221     | Basic Land Survey                                                               |  3  |  0  |   3   |       REM 215      |", 0
border47 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
syssSub5 db 10, 9, 32,32, "| LAW 104     | Law on Negotiable Instruments                                                   |  3  |  0  |   3   |LAW103,REM121,REM123|", 0
border48 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
syssSub6 db 10, 9, 32,32, "| REM 214     | Real Estate Appraisal Methods                                                   |  3  |  0  |   3   |       REM 121      |", 0
border49 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
syssSub7 db 10, 9, 32,32, "| REM 311     | Real Estate Planning and Development                                            |  6  |  0  |   6   |  REM 112, REM 122  |", 0
border50 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
syssSub8 db 10, 9, 32,32, "| PAHF 4      | Dance and Sports 2                                                              |  2  |  0  |   2   |        PAHF 3      |", 0
border51 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
total4 db 10, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9,"|   Total Units   |  26  |  0  |  26  |", 0
border52 db 10, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9,"---------------------------------------", 0
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
    invoke StdOut, addr yearOneFirstSem
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
    invoke StdOut, addr yearOneSecondtSem
    invoke StdOut, addr border18
    invoke StdOut, addr fyssSub1
    invoke StdOut, addr border19
    invoke StdOut, addr fyssSub2
    invoke StdOut, addr border20
    invoke StdOut, addr fyssSub3
    invoke StdOut, addr border21
    invoke StdOut, addr fyssSub4
    invoke StdOut, addr border22
    invoke StdOut, addr fyssSub5
    invoke StdOut, addr border23
    invoke StdOut, addr fyssSub6
    invoke StdOut, addr border24
    invoke StdOut, addr fyssSub7
    invoke StdOut, addr border25
    invoke StdOut, addr fyssSub8
    invoke StdOut, addr border26
    invoke StdOut, addr total2
    invoke StdOut, addr border27
 ; Display the second year
    invoke StdOut, addr border28
    invoke StdOut, addr year2
    invoke StdOut, addr border29
    invoke StdOut, addr yearTwofirstSem
    invoke StdOut, addr border30
    invoke StdOut, addr txt2
    invoke StdOut, addr border31
    invoke StdOut, addr syfsSub1
    invoke StdOut, addr border32
    invoke StdOut, addr syfsSub2
    invoke StdOut, addr border33
    invoke StdOut, addr syfsSub3
    invoke StdOut, addr border34
    invoke StdOut, addr syfsSub4
    invoke StdOut, addr border35
    invoke StdOut, addr syfsSub5
    invoke StdOut, addr border36
    invoke StdOut, addr syfsSub6
    invoke StdOut, addr border37
    invoke StdOut, addr syfsSub7
    invoke StdOut, addr border38
    invoke StdOut, addr syfsSub8
    invoke StdOut, addr border39
    invoke StdOut, addr syfsSub9
    invoke StdOut, addr border40
    invoke StdOut, addr total3
    invoke StdOut, addr border41
    ; Display the second semester
    invoke StdOut, addr border42
    invoke StdOut, addr yearTwoSecondSem
    invoke StdOut, addr border43
    invoke StdOut, addr syssSub1
    invoke StdOut, addr border44
    invoke StdOut, addr syssSub2
    invoke StdOut, addr border45
    invoke StdOut, addr syssSub3
    invoke StdOut, addr border46
    invoke StdOut, addr syssSub4
    invoke StdOut, addr border47
    invoke StdOut, addr syssSub5
    invoke StdOut, addr border48
    invoke StdOut, addr syssSub6
    invoke StdOut, addr border49
    invoke StdOut, addr syssSub7
    invoke StdOut, addr border50
    invoke StdOut, addr syssSub8
    invoke StdOut, addr border51
    invoke StdOut, addr total4
    invoke StdOut, addr border52
 invoke ExitProcess, 0


end start