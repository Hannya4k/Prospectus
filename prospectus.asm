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
borderE0 db 10, 9, 9,"------------------------------------------------------------------------------------------------------------------------------", 0
txt2 db 10, 9, 9, "| Subj Code   |                                 Subject Title                                 | Lec | Lab | Total |          |", 0
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
txt3 db 10, 9,32,32, "| Subj Code   |                                  Subject Title                                  | Lec | Lab | Total |                    |", 0
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
borderE1 db 10, 9, 32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
txt4 db 10, 9,32,32, "| Subj Code   |                                  Subject Title                                  | Lec | Lab | Total |                    |", 0
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
border53 db 10, 9,"----------------------------------------------------------------------------------------------------------------------------------------------", 0
year3 db 10, 9,"|                                                                  THIRD YEAR                                                                |", 0
border54 db 10, 9,"----------------------------------------------------------------------------------------------------------------------------------------------", 0
yearThreefirstSem db 10, 9, 32, 32,"| First Semester                                                                                | Unit Distribution |       PreReq       |", 0
border55 db 10, 9, 32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
txt5 db 10, 9,32,32, "| Subj Code   |                                  Subject Title                                  | Lec | Lab | Total |                    |", 0
border56 db 10, 9, 32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
tyfsSub1 db 10, 9, 32,32, "| GE 7        | Art Appreciation                                                                |  3  |  0  |   3   |       NONE         |", 0
border57 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
tyfsSub2 db 10, 9, 32,32, "| REM 319     | Real Property Law                                                               |  3  |  0  |   3   |      LAW 104       |", 0
border58 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
tyfsSub3 db 10, 9, 32,32, "| REM 327     | Real Estate Appraisal and Property Management                                   |  3  |  0  |   3   |  REM 214, REM 328  |", 0
border59 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
tyfsSub4 db 10, 9, 32,32, "| REM 321     | Real Estate Brokerage                                                           |  3  |  0  |   3   |       LAW 104      |", 0
border60 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
tyfsSub5 db 10, 9, 32,32, "| REM 322     | Real Estate Consulting and Investment Analysis                                  |  3  |  0  |   3   |       REM 216      |", 0
border61 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
tyfsSub6 db 10, 9, 32,32, "| REM 323     | Appraisal for Machinery and Equipment                                           |  3  |  0  |   3   |  REM 214, REM 328  |", 0
border62 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
tyfsSub7 db 10, 9, 32,32, "| LAW 105     | Law on Sales and Ballments                                                      |  3  |  0  |   3   |      LAW 101       |", 0
border63 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
tyfsSub8 db 10, 9, 32,32, "| REM 222     | Business and Real Estate Taxation                                               |  3  |  0  |   3   |      TAX 101       |", 0
border64 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
tyfsSub9 db 10, 9, 32,32, "| REM 329     | Housing and Subdivision Development                                             |  3  |  0  |   3   |      REM 311       |", 0
border65 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
total5 db 10, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9,"|   Total Units   |  27  |  0  |  27  |", 0
border66 db 10, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9,"---------------------------------------", 0
border67 db 10, 9, 32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
yearThreeSecondSem db 10, 9, 32, 32,"| Second Semester                                                                               | Unit Distribution |       PreReq       |", 0
border68 db 10, 9, 32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
txt6 db 10, 9,32,32, "| Subj Code   |                                  Subject Title                                  | Lec | Lab | Total |                    |", 0
border69 db 10, 9, 32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
tySsSub1 db 10, 9, 32,32, "| GE 9        | Ethics (Disciplinal)                                                            |  3  |  0  |   3   |        NONE        |", 0
border70 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
tySsSub2 db 10, 9, 32,32, "| REM 325     | Condominium Concept & other Specialized Dev't                                   |  3  |  0  |   3   |  REM 311, REM 321  |", 0
border71 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
tySsSub3 db 10, 9, 32,32, "| REM 324     | Real Estate Marketing and Brokerage                                             |  3  |  0  |   3   |      REM 321       |", 0
border72 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
tySsSub4 db 10, 9, 32,32, "| REM 326     | Legal Aspect or Real Estate                                                     |  6  |  0  |   6   |      REM 319       |", 0
border73 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
tySsSub5 db 10, 9, 32,32, "| REM 320     | Real Estate Appraisal in Government Sector                                      |  3  |  0  |   3   |REM215,REM214,REM221|", 0
border74 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
tySsSub6 db 10, 9, 32,32, "| REM 312     | Real Estate Consulting                                                          |  3  |  0  |   3   |  REM 322, REM 328  |", 0
border75 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
tySsSub7 db 10, 9, 32,32, "| REM 332     | Real Estate Project Feasibility Study                                           |  6  |  0  |   6   |  REM 311, REM 322  |", 0
border76 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
total6 db 10, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9,"|   Total Units   |  27  |  0  |  27  |", 0
border77 db 10, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9,"---------------------------------------", 0
border78 db 10, 9,"----------------------------------------------------------------------------------------------------------------------------------------------", 0
summer db 10, 9,"| Summer                                                | Unit Distribution |                              PreReq                            |", 0
border79 db 10, 9,"----------------------------------------------------------------------------------------------------------------------------------------------", 0
txt7 db 10, 9, "| Subj Code  |              Subject Title               | Lec | Lab | Total |                                                                |", 0
border80 db 10, 9,"----------------------------------------------------------------------------------------------------------------------------------------------", 0
summerSub1 db 10, 9, "| REM 100    | Work Integrated Learning                 |  6  |  0  |   6   | REM319,REM320,REM321,REM322,REM323,REM326,REM222,REM329,REM111 |", 0
border81 db 10, 9,"----------------------------------------------------------------------------------------------------------------------------------------------", 0
border82 db 10, 9,"----------------------------------------------------------------------------------------------------------------------------------------------", 0
year4 db 10, 9,"|                                                                  FOURTH YEAR                                                               |", 0
border83 db 10, 9,"----------------------------------------------------------------------------------------------------------------------------------------------", 0
yearFourfirstSem db 10, 9, 32, 32,"| First Semester                                                                                | Unit Distribution |       PreReq       |", 0
border84 db 10, 9, 32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
txt8 db 10, 9,32,32, "| Subj Code   |                                  Subject Title                                  | Lec | Lab | Total |                    |", 0
border85 db 10, 9, 32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
fourthfsSub1 db 10, 9, 32,32, "| GE 20       | Reading Visual Arts                                                             |  3  |  0  |   3   |        NONE        |", 0
border86 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
fourthfsSub2 db 10, 9, 32,32, "| CAED 500c   | Career and Personality Development                                              |  3  |  0  |   3   |   4th yr standing  |", 0
border87 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
fourthfsSub3 db 10, 9, 32,32, "| REM 419     | Valuation Procedures and Appraisal Report Writing                               |  3  |  0  |   3   |  REM 222, REM 329  |", 0
border88 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
fourthfsSub4 db 10, 9, 32,32, "| REM 413     | Property Management System                                                      |  3  |  0  |   3   |  REM 324, REM 325  |", 0
border89 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
fourthfsSub5 db 10, 9, 32,32, "| REM 411     | Human and Physical Geography                                                    |  3  |  0  |   3   |      REM 112       |", 0
border90 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
fourthfsSub6 db 10, 9, 32,32, "| REM 331     | Current Issues in Real Estate Business; National & International                |  3  |  0  |   3   |   4th yr standing  |", 0
border91 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
total7 db 10, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9,"|   Total Units   |  18  |  0  |  18  |", 0
border92 db 10, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9,"---------------------------------------", 0
border93 db 10, 9, 32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
yearFourSecondSem db 10, 9, 32, 32,"| Second Semester                                                                               | Unit Distribution |       PreReq       |", 0
border94 db 10, 9, 32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
txt9 db 10, 9,32,32, "| Subj Code   |                                  Subject Title                                  | Lec | Lab | Total |                    |", 0
border95 db 10, 9, 32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
fourthSsSub1 db 10, 9, 32,32, "| REM 401     | REM General/Fundamentals                                                        |  3  |  0  |   3   |     GRADUATING     |", 0
border96 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
fourthSsSub2 db 10, 9, 32,32, "| REM 402     | REM Spl & Technical Knowledge                                                   |  3  |  0  |   3   |     GRADUATING     |", 0
border97 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
fourthSsSub3 db 10, 9, 32,32, "| REM 403     | REM Professional Practice                                                       |  3  |  0  |   3   |     GRADUATING     |", 0
border98 db 10, 9,32, 32,"------------------------------------------------------------------------------------------------------------------------------------------", 0
total8 db 10, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9,"|   Total Units   |  9  |  0  |   9   |", 0
border99 db 10, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9,"---------------------------------------", 0
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
    invoke StdOut, addr borderE0 ;extension
    invoke StdOut, addr txt2
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
    invoke StdOut, addr txt3
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
    invoke StdOut, addr borderE1 ;extension
    invoke StdOut, addr txt4
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
      ; Display the third year
    invoke StdOut, addr border53
      invoke StdOut, addr year3
      invoke StdOut, addr border54
      invoke StdOut, addr yearThreefirstSem
      invoke StdOut, addr border55
      invoke StdOut, addr txt5
      invoke StdOut, addr border56
      invoke StdOut, addr tyfsSub1
      invoke StdOut, addr border57
      invoke StdOut, addr tyfsSub2
      invoke StdOut, addr border58
      invoke StdOut, addr tyfsSub3
      invoke StdOut, addr border59
      invoke StdOut, addr tyfsSub4
      invoke StdOut, addr border60
      invoke StdOut, addr tyfsSub5
      invoke StdOut, addr border61
      invoke StdOut, addr tyfsSub6
      invoke StdOut, addr border62
      invoke StdOut, addr tyfsSub7
      invoke StdOut, addr border63
      invoke StdOut, addr tyfsSub8
      invoke StdOut, addr border64
      invoke StdOut, addr tyfsSub9
      invoke StdOut, addr border65
      invoke StdOut, addr total5
      invoke StdOut, addr border66
      ; Display the second semester
      invoke StdOut, addr border67
      invoke StdOut, addr yearThreeSecondSem
      invoke StdOut, addr border68
      invoke StdOut, addr txt6
      invoke StdOut, addr border69
      invoke StdOut, addr tySsSub1
      invoke StdOut, addr border70
      invoke StdOut, addr tySsSub2
      invoke StdOut, addr border71
      invoke StdOut, addr tySsSub3
      invoke StdOut, addr border72
      invoke StdOut, addr tySsSub4
      invoke StdOut, addr border73
      invoke StdOut, addr tySsSub5
      invoke StdOut, addr border74
      invoke StdOut, addr tySsSub6
      invoke StdOut, addr border75
      invoke StdOut, addr tySsSub7
      invoke StdOut, addr border76
      invoke StdOut, addr total6
      invoke StdOut, addr border77
      ; Display the summer
      invoke StdOut, addr border78
      invoke StdOut, addr summer
      invoke StdOut, addr border79
      invoke StdOut, addr txt7
      invoke StdOut, addr border80
      invoke StdOut, addr summerSub1
      invoke StdOut, addr border80
      ; Display the fourth year
      invoke StdOut, addr border82
      invoke StdOut, addr year4
      invoke StdOut, addr border83
      invoke StdOut, addr yearFourfirstSem
      invoke StdOut, addr border84
      invoke StdOut, addr txt8
      invoke StdOut, addr border85
      invoke StdOut, addr fourthfsSub1
      invoke StdOut, addr border86
      invoke StdOut, addr fourthfsSub2
      invoke StdOut, addr border87
      invoke StdOut, addr fourthfsSub3
      invoke StdOut, addr border88
      invoke StdOut, addr fourthfsSub4
      invoke StdOut, addr border89
      invoke StdOut, addr fourthfsSub5
      invoke StdOut, addr border90
      invoke StdOut, addr fourthfsSub6
      invoke StdOut, addr border91
      invoke StdOut, addr total7
      invoke StdOut, addr border92
      ; Display the second semester
      invoke StdOut, addr border93
      invoke StdOut, addr yearFourSecondSem
      invoke StdOut, addr border94
      invoke StdOut, addr txt9
      invoke StdOut, addr border95
      invoke StdOut, addr fourthSsSub1
      invoke StdOut, addr border96
      invoke StdOut, addr fourthSsSub2
      invoke StdOut, addr border97
      invoke StdOut, addr fourthSsSub3 
      invoke StdOut, addr border98
      invoke StdOut, addr total8
      invoke StdOut, addr border99
 invoke ExitProcess, 0


end start