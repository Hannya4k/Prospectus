.386
.model flat, stdcall
option casemap :none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
include \masm32\include\masm32.inc
include \masm32\include\user32.inc

includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\user32.lib
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


enrolled db " - ENROLLED",0

;=================================================================================
; APPLYING UNITS
;==============================


; FIRST YEAR FIRST SEM UNITS
;==============================

ACCBP100 dd 3
GE8 dd 3
GE2 dd 6
GE15 dd 3
GE3 dd 3
BA100 dd 3
PAHF1 dd 2
NSTP1 dd 3

; ENROLL
;==============
eACCBP100 dd 0
eGE8 dd 0
eGE2 dd 0
eGE15 dd 0
eGE3 dd 0
eBA100 dd 0
ePAHF1 dd 0
eNSTP1 dd 0

; FIRST YEAR SECOND SEM UNITS
;==============================
GE1 dd 3
GE5 dd 3
UGE1 dd 6
GE4 dd 3
REM112 dd 3
REM122 dd 3
PAHF2 dd 2
NSTP2 dd 3

; ENROLL
;==============
eGE1 dd 0
eGE5 dd 0
eUGE1 dd 0
eGE4 dd 0
eREM112 dd 0
eREM122 dd 0
ePAHF2 dd 0
eNSTP2 dd 0



; SECOND YEAR FIRST SEM UNITS
;==============================
REM123 dd 3
REM328 dd 3
BAHR213 dd 3
REM12L dd 3
TAX101 dd 3
LAW103 dd 3
GE11 dd 3
REM215 dd 3
PAHF3 dd 3

; ENROLL
;==============
eREM123 dd 0
eREM328 dd 0
eBAHR213 dd 0
eREM12L dd 0
eTAX101 dd 0
eLAW103 dd 0
eGE11 dd 0
eREM215 dd 0
ePAHF3 dd 0


; SECOND YEAR SECOND SEM UNITS
;==============================
REM216 dd 3
UGE2 dd 3
GE6 dd 3
REM221 dd 3
LAW104 dd 3
REM214 dd 3
REM311 dd 6
PAHF4 dd 2

; ENROLL
;==============
eREM216 dd 0
eUGE2 dd 0
eGE6 dd 0
eREM221 dd 0
eLAW104 dd 0
eREM214 dd 0
eREM311 dd 0
ePAHF4 dd 0


; THIRD YEAR FIRST SEM UNITS
;==============================
GE7 dd 3
REM319 dd 3
REM327 dd 3
REM321 dd 3
REM322 dd 3
REM323 dd 3
LAW105 dd 3
REM222 dd 3
REM329 dd 3

; ENROLL
;==============
eGE7 dd 0
eREM319 dd 0 
eREM327 dd 0
eREM321 dd 0
eREM322 dd 0
eREM323 dd 0
eLAW105 dd 0
eREM222 dd 0
eREM329 dd 0


; THIRD YEAR SECOND SEM UNITS
;==============================
GE9 dd 3
REM325 dd 3
REM324 dd 3
REM326 dd 6
REM320 dd 3
REM312 dd 3
REM332 dd 6

; ENROLL
;==============
eGE9 dd 0
eREM325 dd 0
eREM324 dd 0
eREM326 dd 0
eREM320 dd 0
eREM312 dd 0
eREM332 dd 0


; THIRD YEAR SUMMER UNITS
;==============================
REM100 dd 6


; ENROLL
;==============
eREM100 dd 0


; FOURTH YEAR FIRST SEM UNITS
;==============================
GE20 dd 3
CAED500C dd 3
REM419 dd 3
REM413 dd 3
REM411 dd 3
REM331 dd 3


; ENROLL
;==============
eGE20 dd 0
eCAED500C dd 0
eREM419 dd 0
eREM413 dd 0
eREM411 dd 0
eREM331 dd 0


; FOURTH YEAR SECOND SEM UNITS
;==============================
REM401 dd 3
REM402 dd 3
REM403 dd 3


; ENROLL
;==============
eREM401 dd 0
eREM402 dd 0
eREM403 dd 0

;=================================================================================
;CALCULATIONS
;==============================



totalUnits dd 0
totalU db 50 dup(?)

;=================================================================================

;WRONG VALUE
;==============================
wrongValue db "You have entered a wrong value please try again", 10,0



;QUESTION NAME AND SCHOOL ID PROMPT
;==============================

fname db 50 dup(?)

enterName db "Enter Name -: ",0

schoolID db 50 dup(?)

enterID db "Enter School ID -: ",0



;QUESTION YEAR AND SEMESTER PROMPT
;==============================

year db 3 dup(?)
semester db 3 dup(?)

enterYear db "Enter Year -: ",0
enterSemester db "Enter Semester -: ",0



;QUESTION TO ENROLL / VIEW / EXIT
;==============================

choose db 50 dup(?)

enterChoose db "Enter (e) to Enroll",10,"Enter (v) to View",10,"Enter (x) to Exit",10,"-: ",0



;QUESTION TO CONITNUE VIEWING
;==============================

continueView db 50 dup(?)

enterContinueView db 10,"Do you want to view another year and sem? [Y / N] -: ",0



;QUESTION TO ENROLL
;==============================

enroll db 50 dup(?)
viewEnroll db 10,"TO ENROLL: ADD (CODE)  | DELETE SUBJECT: DEL (CODE) | CONFIRM: CONFIRM",10,"-: ",0

.code

















start:

 call ClearScreen

; INITALIZE NAME QUESTION.
;==============================

invoke StdOut, addr enterName
invoke StdIn, addr fname, 50

invoke StdOut, addr enterID
invoke StdIn, addr schoolID,50

; GET RESULT IF WANT TO VIEW OR ENROLL
;==============================
result: 
    call ClearScreen
    invoke StdOut, addr enterChoose
    invoke StdIn, addr choose, 50

    cmp choose, "e"
        je sem
    cmp choose, "v"
        je sem
    cmp choose, "x"
        je exitProgram
    jmp result
    ret
    

; GET YEAR AND SEM FUNCTION
;==============================
sem:
    call ClearScreen
    invoke StdOut, addr enterYear
    invoke StdIn, addr year, 3

    invoke StdOut, addr enterSemester
    invoke StdIn, addr semester, 3

    
    
    ; FIRST YEAR
    ;===============

    ; VIEW
    ; ======


    .if year =="1" && semester =="1" && choose == "v"
        je fyfs
    .endif

    .if year =="1" && semester =="2" && choose == "v"
        je fyss
    .endif



    ; ENROLL
    ; ======
    

    .if year =="1" && semester =="1" && choose == "e"
        je efyfs
    .endif

    .if year =="1" && semester =="2" && choose == "e"
        je efyss
    .endif




    ; SECOND YEAR
    ;===============

    .if year =="2" && semester =="1" && choose == "v"
        je syfs
    .endif

    .if year =="2" && semester =="2" && choose == "v"
        je syss
    .endif


    ; ENROLL
    ; ======
    

    .if year =="2" && semester =="1" && choose == "e"
        je esyfs
    .endif

    .if year =="2" && semester =="2" && choose == "e"
        je esyss
    .endif



    ; THIRD YEAR
    ;===============
    .if year =="3" && semester =="1" && choose == "v"
        je tyfs
    .endif

    .if year =="3" && semester =="2" && choose == "v"
        je tyss
    .endif

    .if year =="3" && semester == "3" && choose == "v"
        je tys
    .endif



    ; ENROLL
    ; ======

    .if year =="3" && semester =="1" && choose == "e"
        je etyfs
    .endif

    .if year =="3" && semester =="2" && choose == "e"
        je etyss
    .endif

    .if year =="3" && semester == "3" && choose == "e"
        je etys
    .endif




    ; FOURTH YEAR
    ;===============
    .if year =="4" && semester =="1" && choose == "v"
        je ftyfs
    .endif
    
    .if year =="4" && semester =="2" && choose == "v"
        je ftyss
    .endif

    ; ENROLL
    ; ======
    .if year =="4" && semester =="1" && choose == "e"
        je eftyfs
    .endif
    
    .if year =="4" && semester =="2" && choose == "e"
        je eftyss
    .endif
    



    jmp sem
    ret



;=================================================================================


; ENROLL
; FIRST YEAR FIRST SEM
;==============================
efyfs:
    call ClearScreen
    invoke StdOut, addr border0
    invoke StdOut, addr header0
    invoke StdOut, addr border1
    invoke StdOut, addr header1
    invoke StdOut, addr border2
    invoke StdOut, addr header2
    invoke StdOut, addr border3
    
    invoke StdOut, addr border4
    invoke StdOut, addr year1
    invoke StdOut, addr border5
    invoke StdOut, addr yearOneFirstSem
    invoke StdOut, addr border6
    invoke StdOut, addr txt1
    invoke StdOut, addr border7

    invoke StdOut, addr fyfsSub1
    .if eACCBP100 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border8
    
    invoke StdOut, addr fyfsSub2
    .if eGE8 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border9
    
    invoke StdOut, addr fyfsSub3
    .if eGE2 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border10
    
    invoke StdOut, addr fyfsSub4
    .if eGE15 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border11
    
    invoke StdOut, addr fyfsSub5
    .if eGE3 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border12
    
    invoke StdOut, addr fyfsSub6
    .if eBA100 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border13
    
    invoke StdOut, addr fyfsSub7
    .if ePAHF1 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border14
    
    invoke StdOut, addr fyfsSub8
    .if eNSTP1 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border15
    invoke StdOut, addr total1
    invoke StdOut, addr border16

    invoke StdOut, addr viewEnroll
    invoke StdIn, addr enroll, 50


    ; ADDING SUBJECT
    ; ===========================


    .if eACCBP100 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "A" && enroll[5] == "C" && enroll[6] == "C" && enroll[7] == "B" && enroll[8] == "P" && enroll[9] == "1" && enroll[10] == "0" && enroll[11] == "0" 
        mov eACCBP100, 1
        mov eax, totalUnits
        add eax, ACCBP100
        mov totalUnits, eax
        
    .elseif eGE8 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "G" && enroll[5] == "E" && enroll[6] == "8"
        mov eGE8, 1
        mov eax, totalUnits
        add eax, GE8
        mov totalUnits, eax
        
    .elseif eGE2 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "G" && enroll[5] == "E" && enroll[6] == "2"
        mov eGE2, 1
        mov eax, totalUnits
        add eax, GE2
        mov totalUnits, eax
        
    .elseif eGE15 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "G" && enroll[5] == "E" && enroll[6] == "1" && enroll[7] == "5"
        mov eGE15, 1
        mov eax, totalUnits
        add eax, GE15
        mov totalUnits, eax
        
    .elseif eGE3 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "G" && enroll[5] == "E" && enroll[6] == "3"
        mov eGE3, 1
        mov eax, totalUnits
        add eax, GE3
        mov totalUnits, eax
        
    .elseif eBA100 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "B" && enroll[5] == "A" && enroll[6] == "1" && enroll[7] == "0" && enroll[8] == "0"
        mov eBA100, 1
        mov eax, totalUnits
        add eax, BA100
        mov totalUnits, eax
        
    .elseif ePAHF1 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "P" && enroll[5] == "A" && enroll[6] == "H" && enroll[7] == "F" && enroll[8] == "1"
        mov ePAHF1, 1
        mov eax, totalUnits
        add eax, PAHF1
        mov totalUnits, eax
        
    .elseif eNSTP1 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "N" && enroll[5] == "S" && enroll[6] == "T" && enroll[7] == "P" && enroll[8] == "1"
        mov eNSTP1, 1
        mov eax, totalUnits
        add eax, NSTP1
        mov totalUnits, eax
        
    .endif


    ; DELETING SUBJECT
    ; ===========================

    .if eACCBP100 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "A" && enroll[5] == "C" && enroll[6] == "C" && enroll[7] == "B" && enroll[8] == "P" && enroll[9] == "1" && enroll[10] == "0" && enroll[11] == "0" 
        mov eACCBP100, 0
        mov eax, totalUnits
        sub eax, ACCBP100
        mov totalUnits, eax
        
    .elseif eGE8 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "G" && enroll[5] == "E" && enroll[6] == "8"
        mov eGE8, 0
        mov eax, totalUnits
        sub eax, GE8
        mov totalUnits, eax
        
    .elseif eGE2 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "G" && enroll[5] == "E" && enroll[6] == "2"
        mov eGE2, 0
        mov eax, totalUnits
        sub eax, GE2
        mov totalUnits, eax
        
    .elseif eGE15 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "G" && enroll[5] == "E" && enroll[6] == "1" && enroll[7] == "5"
        mov eGE15, 0
        mov eax, totalUnits
        sub eax, GE15
        mov totalUnits, eax
        
    .elseif eGE3 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "G" && enroll[5] == "E" && enroll[6] == "3"
        mov eGE3, 0
        mov eax, totalUnits
        sub eax, GE3
        mov totalUnits, eax
        
    .elseif eBA100 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "B" && enroll[5] == "A" && enroll[6] == "1" && enroll[7] == "0" && enroll[8] == "0"
        mov eBA100, 0
        mov eax, totalUnits
        sub eax, BA100
        mov totalUnits, eax
        
    .elseif ePAHF1 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "P" && enroll[5] == "A" && enroll[6] == "H" && enroll[7] == "F" && enroll[8] == "1"
        mov ePAHF1, 0
        mov eax, totalUnits
        sub eax, PAHF1
        mov totalUnits, eax
        
    .elseif eNSTP1 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "N" && enroll[5] == "S" && enroll[6] == "T" && enroll[7] == "P" && enroll[8] == "1"
        mov eNSTP1, 0
        mov eax, totalUnits
        sub eax, NSTP1
        mov totalUnits, eax
        
    .endif

    
    call ClearScreen
    jmp efyfs
    ret



; FIRST YEAR SECOND SEM
;==============================
efyss:
    call ClearScreen
    invoke StdOut, addr border0
    invoke StdOut, addr header0
    invoke StdOut, addr border1
    invoke StdOut, addr header1
    invoke StdOut, addr border2
    invoke StdOut, addr header2
    invoke StdOut, addr border3
    
    invoke StdOut, addr border17
    invoke StdOut, addr yearOneSecondtSem
    invoke StdOut, addr borderE0 ;extension
    invoke StdOut, addr txt2
    invoke StdOut, addr border18
    
    invoke StdOut, addr fyssSub1
    .if eGE1 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border19
    
    invoke StdOut, addr fyssSub2
    .if eGE5 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border20
    
    invoke StdOut, addr fyssSub3
    .if eUGE1 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border21
    
    invoke StdOut, addr fyssSub4
    .if eGE4 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border22
    
    invoke StdOut, addr fyssSub5
    .if eREM112 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border23
    
    invoke StdOut, addr fyssSub6
    .if eREM122 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border24
    
    invoke StdOut, addr fyssSub7
    .if ePAHF2 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border25
    
    invoke StdOut, addr fyssSub8
    .if eNSTP2 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border26
    
    invoke StdOut, addr total2
    invoke StdOut, addr border27

    invoke StdOut, addr viewEnroll
    invoke StdIn, addr enroll, 50


    ; ADDING SUBJECT
    ; ===========================


    .if eGE1 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "G" && enroll[5] == "E" && enroll[6] == "1" 
        mov eGE1, 1
        mov eax, totalUnits
        add eax, GE1
        mov totalUnits, eax
        
    .elseif eGE5 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "G" && enroll[5] == "E" && enroll[6] == "5"
        mov eGE5, 1
        mov eax, totalUnits
        add eax, GE5
        mov totalUnits, eax
        
    .elseif eUGE1 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "U" && enroll[5] == "G" && enroll[6] == "E" && enroll[7] == "1"
        mov eUGE1, 1
        mov eax, totalUnits
        add eax, UGE1
        mov totalUnits, eax
        
    .elseif eGE4 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "G" && enroll[5] == "E" && enroll[6] == "4" 
        mov eGE4, 1
        mov eax, totalUnits
        add eax, GE4
        mov totalUnits, eax
        
    .elseif eREM112 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "1" && enroll[8] == "1" && enroll[9] == "2"
        mov eREM112, 1
        mov eax, totalUnits
        add eax, REM112
        mov totalUnits, eax
        
    .elseif eREM122 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "1" && enroll[8] == "2" && enroll[9] == "2"
        mov eREM122, 1
        mov eax, totalUnits
        add eax, REM122
        mov totalUnits, eax
        
    .elseif ePAHF2 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "P" && enroll[5] == "A" && enroll[6] == "H" && enroll[7] == "F" && enroll[8] == "2"
        mov ePAHF2, 1
        mov eax, totalUnits
        add eax, PAHF2
        mov totalUnits, eax
        
    .elseif eNSTP2 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "N" && enroll[5] == "S" && enroll[6] == "T" && enroll[7] == "P" && enroll[8] == "2"
        mov eNSTP2, 1
        mov eax, totalUnits
        add eax, NSTP2
        mov totalUnits, eax
        
    .endif


    ; DELETING SUBJECT
    ; ===========================

    .if eGE1 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "G" && enroll[5] == "E" && enroll[6] == "1" 
        mov eGE1, 0
        mov eax, totalUnits
        sub eax, GE1
        mov totalUnits, eax
        
    .elseif eGE5 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "G" && enroll[5] == "E" && enroll[6] == "5"
        mov eGE5, 0
        mov eax, totalUnits
        sub eax, GE5
        mov totalUnits, eax
        
    .elseif eUGE1 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "U" && enroll[5] == "G" && enroll[6] == "E" && enroll[7] == "1"
        mov eUGE1, 0
        mov eax, totalUnits
        sub eax, UGE1
        mov totalUnits, eax
        
    .elseif eGE4 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "G" && enroll[5] == "E" && enroll[6] == "4" 
        mov eGE4, 0
        mov eax, totalUnits
        sub eax, GE4
        mov totalUnits, eax
        
    .elseif eREM112 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "1" && enroll[8] == "1" && enroll[9] == "2"
        mov eREM112, 0
        mov eax, totalUnits
        sub eax, REM112
        mov totalUnits, eax
        
    .elseif eREM122 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "1" && enroll[8] == "2" && enroll[9] == "2"
        mov eREM122, 0
        mov eax, totalUnits
        sub eax, REM122
        mov totalUnits, eax
        
    .elseif ePAHF2 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "P" && enroll[5] == "A" && enroll[6] == "H" && enroll[7] == "F" && enroll[8] == "2"
        mov ePAHF2, 0
        mov eax, totalUnits
        sub eax, PAHF2
        mov totalUnits, eax
        
    .elseif eNSTP2 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "N" && enroll[5] == "S" && enroll[6] == "T" && enroll[7] == "P" && enroll[8] == "2"
        mov eNSTP2, 0
        mov eax, totalUnits
        sub eax, NSTP2
        mov totalUnits, eax
        
    .endif



    call ClearScreen
    jmp efyss
    ret



; SECOND YEAR FIRST SEM
;==============================
esyfs:
    call ClearScreen
    invoke StdOut, addr border0
    invoke StdOut, addr header0
    invoke StdOut, addr border1
    invoke StdOut, addr header1
    invoke StdOut, addr border2
    invoke StdOut, addr header2
    invoke StdOut, addr border3
    
    invoke StdOut, addr border28
    invoke StdOut, addr year2
    invoke StdOut, addr border29
    invoke StdOut, addr yearTwofirstSem
    invoke StdOut, addr border30
    invoke StdOut, addr txt3
    invoke StdOut, addr border31
    
    invoke StdOut, addr syfsSub1
    .if eREM123 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border32
    
    invoke StdOut, addr syfsSub2
    .if eREM328 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border33
    
    invoke StdOut, addr syfsSub3
    .if eBAHR213 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border34
    
    invoke StdOut, addr syfsSub4
    .if eREM12L == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border35
    
    invoke StdOut, addr syfsSub5
    .if eTAX101 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border36
    
    invoke StdOut, addr syfsSub6
    .if eLAW103 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border37
    
    invoke StdOut, addr syfsSub7
    .if eGE11 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border38
    
    invoke StdOut, addr syfsSub8
    .if eREM215 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border39
    
    invoke StdOut, addr syfsSub9
    .if ePAHF3 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border40
    
    invoke StdOut, addr total3
    invoke StdOut, addr border41

    invoke StdOut, addr viewEnroll
    invoke StdIn, addr enroll, 50
    

    ; ADDING SUBJECT
    ; ===========================


    .if eREM123 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "1" && enroll[8] == "2" && enroll[9] == "3"
        mov eREM123, 1
        mov eax, totalUnits
        add eax, REM123
        mov totalUnits, eax
        
    .elseif eREM328 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "3" && enroll[8] == "2" && enroll[9] == "8"
        mov eREM328, 1
        mov eax, totalUnits
        add eax, REM328
        mov totalUnits, eax
        
    .elseif eBAHR213 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "B" && enroll[5] == "A" && enroll[6] == "H" && enroll[7] == "R" && enroll[8] == "2" && enroll[9] == "1" && enroll[10] == "3"
        mov eBAHR213, 1
        mov eax, totalUnits
        add eax, BAHR213
        mov totalUnits, eax
        
    .elseif eREM12L == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "1" && enroll[8] == "2" && enroll[9] == "L"
        mov eREM12L, 1
        mov eax, totalUnits
        add eax, REM12L
        mov totalUnits, eax
        
    .elseif eTAX101 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "T" && enroll[5] == "A" && enroll[6] == "X" && enroll[7] == "1" && enroll[8] == "0" && enroll[9] == "1"
        mov eTAX101, 1
        mov eax, totalUnits
        add eax, TAX101
        mov totalUnits, eax
        
    .elseif eLAW103 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "L" && enroll[5] == "A" && enroll[6] == "W" && enroll[7] == "1" && enroll[8] == "0" && enroll[9] == "3"
        mov eLAW103, 1
        mov eax, totalUnits
        add eax, LAW103
        mov totalUnits, eax
        
    .elseif eGE11 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "G" && enroll[5] == "E" && enroll[6] == "1" && enroll[7] == "1" 
        mov eGE11, 1
        mov eax, totalUnits
        add eax, GE11
        mov totalUnits, eax

    .elseif ePAHF3 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "P" && enroll[5] == "A" && enroll[6] == "H" && enroll[7] == "F" && enroll[8] == "3"
        mov ePAHF3, 1
        mov eax, totalUnits
        add eax, PAHF3
        mov totalUnits, eax

    .elseif eREM215 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "2" && enroll[8] == "1" && enroll[9] == "5"
        mov eREM215, 1
        mov eax, totalUnits
        add eax, REM215
        mov totalUnits, eax
          
    .endif


    ; DELETING SUBJECT
    ; ===========================

    .if eREM123 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "1" && enroll[8] == "2" && enroll[9] == "3"
        mov eREM123, 0
        mov eax, totalUnits
        sub eax, REM123
        mov totalUnits, eax
        
    .elseif eREM328 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "3" && enroll[8] == "2" && enroll[9] == "8"
        mov eREM328, 0
        mov eax, totalUnits
        sub eax, REM328
        mov totalUnits, eax
        
    .elseif eBAHR213 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "B" && enroll[5] == "A" && enroll[6] == "H" && enroll[7] == "R" && enroll[8] == "2" && enroll[9] == "1" && enroll[10] == "3"
        mov eBAHR213, 0
        mov eax, totalUnits
        sub eax, BAHR213
        mov totalUnits, eax
        
    .elseif eREM12L == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "1" && enroll[8] == "2" && enroll[9] == "L"
        mov eREM12L, 0
        mov eax, totalUnits
        sub eax, REM12L
        mov totalUnits, eax
        
    .elseif eTAX101 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "T" && enroll[5] == "A" && enroll[6] == "X" && enroll[7] == "1" && enroll[8] == "0" && enroll[9] == "1"
        mov eTAX101, 0
        mov eax, totalUnits
        sub eax, TAX101
        mov totalUnits, eax
        
    .elseif eLAW103 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "L" && enroll[5] == "A" && enroll[6] == "W" && enroll[7] == "1" && enroll[8] == "0" && enroll[9] == "3"
        mov eLAW103, 0
        mov eax, totalUnits
        sub eax, LAW103
        mov totalUnits, eax
        
    .elseif eGE11 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "G" && enroll[5] == "E" && enroll[6] == "1" && enroll[7] == "1" 
        mov eGE11, 0
        mov eax, totalUnits
        sub eax, GE11
        mov totalUnits, eax

    .elseif ePAHF3 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "P" && enroll[5] == "A" && enroll[6] == "H" && enroll[7] == "F" && enroll[8] == "3"
        mov ePAHF3, 0
        mov eax, totalUnits
        sub eax, PAHF3
        mov totalUnits, eax

    .elseif eREM215 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "2" && enroll[8] == "1" && enroll[9] == "5"
        mov eREM215, 0
        mov eax, totalUnits
        sub eax, REM215
        mov totalUnits, eax
          
    .endif



    call ClearScreen
    jmp esyfs
    ret

; SECOND YEAR SECOND SEM
;==============================
esyss:
    call ClearScreen
    invoke StdOut, addr border0
    invoke StdOut, addr header0
    invoke StdOut, addr border1
    invoke StdOut, addr header1
    invoke StdOut, addr border2
    invoke StdOut, addr header2
    invoke StdOut, addr border3
    
    invoke StdOut, addr border42
    invoke StdOut, addr yearTwoSecondSem
    invoke StdOut, addr borderE1 ;extension
    invoke StdOut, addr txt4
    invoke StdOut, addr border43
    
    invoke StdOut, addr syssSub1
    .if eREM216 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border44
    
    invoke StdOut, addr syssSub2
    .if eUGE2 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border45
    
    invoke StdOut, addr syssSub3
    .if eGE6 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border46
    
    invoke StdOut, addr syssSub4
    .if eREM221 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border47
    
    invoke StdOut, addr syssSub5
    .if eLAW104 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border48
    
    invoke StdOut, addr syssSub6
    .if eREM214 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border49
    
    invoke StdOut, addr syssSub7
    .if eREM311 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border50
    
    invoke StdOut, addr syssSub8
    .if ePAHF4 == 1
        invoke StdOut, addr enrolled
    .endif
    invoke StdOut, addr border51
    
    invoke StdOut, addr total4
    invoke StdOut, addr border52

    
    invoke StdOut, addr viewEnroll
    invoke StdIn, addr enroll, 50
    

    ; ADDING SUBJECT
    ; ===========================


    .if eREM216 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "2" && enroll[8] == "1" && enroll[9] == "6"
        mov eREM216, 1
        mov eax, totalUnits
        add eax, REM216
        mov totalUnits, eax
        
    .elseif eUGE2 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "U" && enroll[5] == "G" && enroll[6] == "E" && enroll[7] == "2"
        mov eUGE2, 1
        mov eax, totalUnits
        add eax, UGE2
        mov totalUnits, eax
        
    .elseif eGE6 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "G" && enroll[5] == "E" && enroll[6] == "6"
        mov eGE6, 1
        mov eax, totalUnits
        add eax, GE6
        mov totalUnits, eax
        
    .elseif eREM221 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "2" && enroll[8] == "2" && enroll[9] == "1"
        mov eREM221, 1
        mov eax, totalUnits
        add eax, REM221
        mov totalUnits, eax
        
    .elseif eLAW104 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "L" && enroll[5] == "A" && enroll[6] == "W" && enroll[7] == "1" && enroll[8] == "0" && enroll[9] == "4"
        mov eLAW104, 1
        mov eax, totalUnits
        add eax, LAW104
        mov totalUnits, eax
        
    .elseif eLAW103 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "L" && enroll[5] == "A" && enroll[6] == "W" && enroll[7] == "1" && enroll[8] == "0" && enroll[9] == "3"
        mov eLAW103, 1
        mov eax, totalUnits
        add eax, LAW103
        mov totalUnits, eax
        
    .elseif eREM214 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "2" && enroll[8] == "1" && enroll[9] == "4"
        mov eREM214, 1
        mov eax, totalUnits
        add eax, REM214
        mov totalUnits, eax

    .elseif eREM311 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "3" && enroll[8] == "1" && enroll[9] == "1"
        mov eREM311, 1
        mov eax, totalUnits
        add eax, REM311
        mov totalUnits, eax

    .elseif ePAHF4 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "P" && enroll[5] == "A" && enroll[6] == "H" && enroll[7] == "F" && enroll[8] == "4"
        mov ePAHF4, 1
        mov eax, totalUnits
        add eax, PAHF4
        mov totalUnits, eax

          
    .endif


    ; DELETING SUBJECT
    ; ===========================

    .if eREM216 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "2" && enroll[8] == "1" && enroll[9] == "6"
        mov eREM216, 0
        mov eax, totalUnits
        sub eax, REM216
        mov totalUnits, eax
        
    .elseif eUGE2 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "U" && enroll[5] == "G" && enroll[6] == "E" && enroll[7] == "2"
        mov eUGE2, 0
        mov eax, totalUnits
        add eax, UGE2
        mov totalUnits, eax
        
    .elseif eGE6 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "G" && enroll[5] == "E" && enroll[6] == "6"
        mov eGE6, 0
        mov eax, totalUnits
        sub eax, GE6
        mov totalUnits, eax
        
    .elseif eREM221 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "2" && enroll[8] == "2" && enroll[9] == "1"
        mov eREM221, 0
        mov eax, totalUnits
        sub eax, REM221
        mov totalUnits, eax
        
    .elseif eLAW104 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "L" && enroll[5] == "A" && enroll[6] == "W" && enroll[7] == "1" && enroll[8] == "0" && enroll[9] == "4"
        mov eLAW104, 0
        mov eax, totalUnits
        sub eax, LAW104
        mov totalUnits, eax
        
    .elseif eLAW103 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "L" && enroll[5] == "A" && enroll[6] == "W" && enroll[7] == "1" && enroll[8] == "0" && enroll[9] == "3"
        mov eLAW103, 0
        mov eax, totalUnits
        sub eax, LAW103
        mov totalUnits, eax
        
    .elseif eREM214 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "2" && enroll[8] == "1" && enroll[9] == "4"
        mov eREM214, 0
        mov eax, totalUnits
        sub eax, REM214
        mov totalUnits, eax

    .elseif eREM311 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "3" && enroll[8] == "1" && enroll[9] == "1"
        mov eREM311, 0
        mov eax, totalUnits
        sub eax, REM311
        mov totalUnits, eax

    .elseif ePAHF4 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "P" && enroll[5] == "A" && enroll[6] == "H" && enroll[7] == "F" && enroll[8] == "4"
        mov ePAHF4, 0
        mov eax, totalUnits
        sub eax, PAHF4
        mov totalUnits, eax

          
    .endif


    jmp esyss
    ret

; THIRD YEAR FIRST SEM
;==============================
etyfs:
      call ClearScreen
      invoke StdOut, addr border0
      invoke StdOut, addr header0
      invoke StdOut, addr border1
      invoke StdOut, addr header1
      invoke StdOut, addr border2
      invoke StdOut, addr header2
      invoke StdOut, addr border3
    
      invoke StdOut, addr border53
      invoke StdOut, addr year3
      invoke StdOut, addr border54
      invoke StdOut, addr yearThreefirstSem
      invoke StdOut, addr border55
      invoke StdOut, addr txt5
      invoke StdOut, addr border56
      
      invoke StdOut, addr tyfsSub1
      .if eGE7 == 1
        invoke StdOut, addr enrolled
      .endif
      invoke StdOut, addr border57
      
      invoke StdOut, addr tyfsSub2
      .if eREM319 == 1
        invoke StdOut, addr enrolled
      .endif
      invoke StdOut, addr border58
      
      invoke StdOut, addr tyfsSub3
      .if eREM327 == 1
        invoke StdOut, addr enrolled
      .endif
      invoke StdOut, addr border59
      
      invoke StdOut, addr tyfsSub4
      .if eREM321 == 1
        invoke StdOut, addr enrolled
      .endif
      invoke StdOut, addr border60
      
      invoke StdOut, addr tyfsSub5
      .if eREM322 == 1
        invoke StdOut, addr enrolled
      .endif
      invoke StdOut, addr border61
      
      invoke StdOut, addr tyfsSub6
      .if eREM323 == 1
        invoke StdOut, addr enrolled
      .endif
      invoke StdOut, addr border62
      
      invoke StdOut, addr tyfsSub7
      .if eLAW105 == 1
        invoke StdOut, addr enrolled
      .endif
      invoke StdOut, addr border63
      
      invoke StdOut, addr tyfsSub8
      .if eREM222 == 1
        invoke StdOut, addr enrolled
      .endif
      invoke StdOut, addr border64
      
      invoke StdOut, addr tyfsSub9
      .if eREM329 == 1
        invoke StdOut, addr enrolled
      .endif
      invoke StdOut, addr border65
      
      invoke StdOut, addr total5
      invoke StdOut, addr border66

      
      invoke StdOut, addr viewEnroll
      invoke StdIn, addr enroll, 50
      
  
      ; ADDING SUBJECT
      ; ===========================
  
  
      .if eGE7 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "G" && enroll[5] == "E" && enroll[6] == "7"
          mov eGE7, 1
          mov eax, totalUnits
          add eax, GE7
          mov totalUnits, eax
          
      .elseif eREM319 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "3" && enroll[8] == "1" && enroll[9] == "9"
          mov eREM319, 1
          mov eax, totalUnits
          add eax, REM319
          mov totalUnits, eax
          
      .elseif eREM327 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "3" && enroll[8] == "2" && enroll[9] == "7"
          mov eREM327, 1
          mov eax, totalUnits
          add eax, REM327
          mov totalUnits, eax
          
      .elseif eREM321 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "3" && enroll[8] == "2" && enroll[9] == "1"
          mov eREM321, 1
          mov eax, totalUnits
          add eax, REM321
          mov totalUnits, eax
          
      .elseif eREM322 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "3" && enroll[8] == "2" && enroll[9] == "2"
          mov eREM322, 1
          mov eax, totalUnits
          add eax, REM322
          mov totalUnits, eax
          
      .elseif eREM323 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "3" && enroll[8] == "2" && enroll[9] == "3"
          mov eREM323, 1
          mov eax, totalUnits
          add eax, REM323
          mov totalUnits, eax
          
      .elseif eLAW105 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "L" && enroll[5] == "A" && enroll[6] == "W" && enroll[7] == "1" && enroll[8] == "0" && enroll[9] == "5"
          mov eLAW105, 1
          mov eax, totalUnits
          add eax, LAW105
          mov totalUnits, eax
  
      .elseif eREM222 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "2" && enroll[8] == "2" && enroll[9] == "2"
          mov eREM222, 1
          mov eax, totalUnits
          add eax, REM222
          mov totalUnits, eax
  
      .elseif eREM329 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "3" && enroll[8] == "2" && enroll[9] == "9"
          mov eREM329, 1
          mov eax, totalUnits
          add eax, REM329
          mov totalUnits, eax
  
            
      .endif
  
  
      ; DELETING SUBJECT
      ; ===========================
  
      .if eGE7 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "G" && enroll[5] == "E" && enroll[6] == "7"
          mov eGE7, 0
          mov eax, totalUnits
          sub eax, GE7
          mov totalUnits, eax
          
      .elseif eREM319 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "3" && enroll[8] == "1" && enroll[9] == "9"
          mov eREM319, 0
          mov eax, totalUnits
          sub eax, REM319
          mov totalUnits, eax
          
      .elseif eREM327 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "3" && enroll[8] == "2" && enroll[9] == "7"
          mov eREM327, 0
          mov eax, totalUnits
          sub eax, REM327
          mov totalUnits, eax
          
      .elseif eREM321 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "3" && enroll[8] == "2" && enroll[9] == "1"
          mov eREM321, 0
          mov eax, totalUnits
          sub eax, REM321
          mov totalUnits, eax
          
      .elseif eREM322 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "3" && enroll[8] == "2" && enroll[9] == "2"
          mov eREM322, 0
          mov eax, totalUnits
          sub eax, REM322
          mov totalUnits, eax
          
      .elseif eREM323 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "3" && enroll[8] == "2" && enroll[9] == "3"
          mov eREM323, 0
          mov eax, totalUnits
          sub eax, REM323
          mov totalUnits, eax
          
      .elseif eLAW105 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "L" && enroll[5] == "A" && enroll[6] == "W" && enroll[7] == "1" && enroll[8] == "0" && enroll[9] == "5"
          mov eLAW105, 0
          mov eax, totalUnits
          sub eax, LAW105
          mov totalUnits, eax
  
      .elseif eREM222 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "2" && enroll[8] == "2" && enroll[9] == "2"
          mov eREM222, 0
          mov eax, totalUnits
          sub eax, REM222
          mov totalUnits, eax
  
      .elseif eREM329 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "3" && enroll[8] == "2" && enroll[9] == "9"
          mov eREM329, 0
          mov eax, totalUnits
          sub eax, REM329
          mov totalUnits, eax          
      .endif



      jmp etyfs
      ret

; THIRD YEAR SECOND SEM
;==============================
etyss:
      call ClearScreen
      invoke StdOut, addr border0
      invoke StdOut, addr header0
      invoke StdOut, addr border1
      invoke StdOut, addr header1
      invoke StdOut, addr border2
      invoke StdOut, addr header2
      invoke StdOut, addr border3
      
      invoke StdOut, addr border67
      invoke StdOut, addr yearThreeSecondSem
      invoke StdOut, addr border68
      invoke StdOut, addr txt6
      invoke StdOut, addr border69
      
      invoke StdOut, addr tySsSub1
      .if eGE9 == 1
        invoke StdOut, addr enrolled
      .endif
      invoke StdOut, addr border70
      
      invoke StdOut, addr tySsSub2
      .if eREM325 == 1
        invoke StdOut, addr enrolled
      .endif
      invoke StdOut, addr border71
      
      invoke StdOut, addr tySsSub3
      .if eREM324 == 1
        invoke StdOut, addr enrolled
      .endif
      invoke StdOut, addr border72
      
      invoke StdOut, addr tySsSub4
      .if eREM326 == 1
        invoke StdOut, addr enrolled
      .endif
      invoke StdOut, addr border73
      
      invoke StdOut, addr tySsSub5
      .if eREM320 == 1
        invoke StdOut, addr enrolled
      .endif
      invoke StdOut, addr border74
      
      invoke StdOut, addr tySsSub6
      .if eREM312 == 1
        invoke StdOut, addr enrolled
      .endif
      invoke StdOut, addr border75
      
      invoke StdOut, addr tySsSub7
      .if eREM332 == 1
        invoke StdOut, addr enrolled
      .endif
      invoke StdOut, addr border76
      
      invoke StdOut, addr total6
      invoke StdOut, addr border77


      invoke StdOut, addr viewEnroll
      invoke StdIn, addr enroll, 50
      
  
      ; ADDING SUBJECT
      ; ===========================
  
  
      .if eGE9 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "G" && enroll[5] == "E" && enroll[6] == "9"
          mov eGE9, 1
          mov eax, totalUnits
          add eax, GE9
          mov totalUnits, eax
          
      .elseif eREM325 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "3" && enroll[8] == "2" && enroll[9] == "5"
          mov eREM325, 1
          mov eax, totalUnits
          add eax, REM325
          mov totalUnits, eax
          
      .elseif eREM324 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "3" && enroll[8] == "2" && enroll[9] == "4"
          mov eREM324, 1
          mov eax, totalUnits
          add eax, REM324
          mov totalUnits, eax
          
      .elseif eREM326 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "3" && enroll[8] == "2" && enroll[9] == "6"
          mov eREM326, 1
          mov eax, totalUnits
          add eax, REM326
          mov totalUnits, eax
          
      .elseif eREM320 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "3" && enroll[8] == "2" && enroll[9] == "0"
          mov eREM320, 1
          mov eax, totalUnits
          add eax, REM320
          mov totalUnits, eax
          
      .elseif eREM312 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "3" && enroll[8] == "1" && enroll[9] == "2"
          mov eREM312, 1
          mov eax, totalUnits
          add eax, REM312
          mov totalUnits, eax
          
      .elseif eREM332 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "3" && enroll[8] == "3" && enroll[9] == "2"
          mov eREM332, 1
          mov eax, totalUnits
          add eax, REM332
          mov totalUnits, eax
  
            
      .endif
  
  
      ; DELETING SUBJECT
      ; ===========================
  
      .if eGE9 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "G" && enroll[5] == "E" && enroll[6] == "9"
          mov eGE9, 0
          mov eax, totalUnits
          sub eax, GE9
          mov totalUnits, eax
          
      .elseif eREM325 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "3" && enroll[8] == "2" && enroll[9] == "5"
          mov eREM325, 0
          mov eax, totalUnits
          sub eax, REM325
          mov totalUnits, eax
          
      .elseif eREM324 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "3" && enroll[8] == "2" && enroll[9] == "4"
          mov eREM324, 0
          mov eax, totalUnits
          sub eax, REM324
          mov totalUnits, eax
          
      .elseif eREM326 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "3" && enroll[8] == "2" && enroll[9] == "6"
          mov eREM326, 0
          mov eax, totalUnits
          sub eax, REM326
          mov totalUnits, eax
          
      .elseif eREM320 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "3" && enroll[8] == "2" && enroll[9] == "0"
          mov eREM320, 0
          mov eax, totalUnits
          sub eax, REM320
          mov totalUnits, eax
          
      .elseif eREM312 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "3" && enroll[8] == "1" && enroll[9] == "2"
          mov eREM312, 0
          mov eax, totalUnits
          sub eax, REM312
          mov totalUnits, eax
          
      .elseif eREM332 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "3" && enroll[8] == "3" && enroll[9] == "2"
          mov eREM332, 0
          mov eax, totalUnits
          sub eax, REM332
          mov totalUnits, eax
  
            
      .endif



      jmp etyss
      ret

; THIRD YEAR SUMMER
;==============================
etys:
      call ClearScreen
      invoke StdOut, addr border0
      invoke StdOut, addr header0
      invoke StdOut, addr border1
      invoke StdOut, addr header1
      invoke StdOut, addr border2
      invoke StdOut, addr header2
      invoke StdOut, addr border3
      
      invoke StdOut, addr border78
      invoke StdOut, addr summer
      invoke StdOut, addr border79
      invoke StdOut, addr txt7
      invoke StdOut, addr border80
      
      invoke StdOut, addr summerSub1
      .if eREM100 == 1
        invoke StdOut, addr enrolled
      .endif
      invoke StdOut, addr border80

      invoke StdOut, addr viewEnroll
      invoke StdIn, addr enroll, 50
      
  
      ; ADDING SUBJECT
      ; ===========================
  
  
      .if eREM100 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "1" && enroll[8] == "0" && enroll[9] == "0"
          mov eREM100, 1
          mov eax, totalUnits
          add eax, REM100
          mov totalUnits, eax
          
      
  
            
      .endif
  
  
      ; DELETING SUBJECT
      ; ===========================
  
      .if eREM100 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "1" && enroll[8] == "0" && enroll[9] == "0"
          mov eREM100, 0
          mov eax, totalUnits
          sub eax, REM100
          mov totalUnits, eax
          
  
            
      .endif

      jmp etys
      ret

; FOURTH YEAR FIRST SEM
;==============================
eftyfs:
      call ClearScreen
      invoke StdOut, addr border0
      invoke StdOut, addr header0
      invoke StdOut, addr border1
      invoke StdOut, addr header1
      invoke StdOut, addr border2
      invoke StdOut, addr header2
      invoke StdOut, addr border3
      
      invoke StdOut, addr border82
      invoke StdOut, addr year4
      invoke StdOut, addr border83
      invoke StdOut, addr yearFourfirstSem
      invoke StdOut, addr border84
      invoke StdOut, addr txt8
      invoke StdOut, addr border85
      
      invoke StdOut, addr fourthfsSub1
      .if eGE20 == 1
        invoke StdOut, addr enrolled
      .endif
      invoke StdOut, addr border86
      
      invoke StdOut, addr fourthfsSub2
      .if eCAED500C == 1
        invoke StdOut, addr enrolled
      .endif
      invoke StdOut, addr border87
      
      invoke StdOut, addr fourthfsSub3
      .if eREM419 == 1
        invoke StdOut, addr enrolled
      .endif
      invoke StdOut, addr border88
      
      invoke StdOut, addr fourthfsSub4
      .if eREM413 == 1
        invoke StdOut, addr enrolled
      .endif
      invoke StdOut, addr border89
      
      invoke StdOut, addr fourthfsSub5
      .if eREM411 == 1
        invoke StdOut, addr enrolled
      .endif
      invoke StdOut, addr border90
      
      invoke StdOut, addr fourthfsSub6
      .if eREM331 == 1
        invoke StdOut, addr enrolled
      .endif
      invoke StdOut, addr border91
      
      invoke StdOut, addr total7
      invoke StdOut, addr border92


      invoke StdOut, addr viewEnroll
      invoke StdIn, addr enroll, 50
      
  
      ; ADDING SUBJECT
      ; ===========================
  
  
      .if eGE20 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "G" && enroll[5] == "E" && enroll[6] == "2" && enroll[7] == "0"
          mov eGE20, 1
          mov eax, totalUnits
          add eax, GE20
          mov totalUnits, eax
          
      .elseif eCAED500C == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "C" && enroll[5] == "A" && enroll[6] == "E" && enroll[7] == "D" && enroll[8] == "5" && enroll[9] == "0" && enroll[10] == "0" && enroll[11] == "C"
          mov eCAED500C, 1
          mov eax, totalUnits
          add eax, CAED500C
          mov totalUnits, eax
          
      .elseif eREM419 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "4" && enroll[8] == "1" && enroll[9] == "9"
          mov eREM419, 1
          mov eax, totalUnits
          add eax, REM419
          mov totalUnits, eax
          
      .elseif eREM413 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "4" && enroll[8] == "1" && enroll[9] == "3"
          mov eREM413, 1
          mov eax, totalUnits
          add eax, REM413
          mov totalUnits, eax
          
      .elseif eREM411 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "4" && enroll[8] == "1" && enroll[9] == "1"
          mov eREM411, 1
          mov eax, totalUnits
          add eax, REM411
          mov totalUnits, eax
          
      .elseif eREM331 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "3" && enroll[8] == "3" && enroll[9] == "1"
          mov eREM331, 1
          mov eax, totalUnits
          add eax, REM331
          mov totalUnits, eax
  
            
      .endif
  
  
      ; DELETING SUBJECT
      ; ===========================
  
      .if eGE20 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "G" && enroll[5] == "E" && enroll[6] == "2" && enroll[7] == "0"
          mov eGE20, 0
          mov eax, totalUnits
          sub eax, GE20
          mov totalUnits, eax
          
      .elseif eCAED500C == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "C" && enroll[5] == "A" && enroll[6] == "E" && enroll[7] == "D" && enroll[8] == "5" && enroll[9] == "0" && enroll[10] == "0" && enroll[11] == "C"
          mov eCAED500C, 0
          mov eax, totalUnits
          sub eax, CAED500C
          mov totalUnits, eax
          
      .elseif eREM419 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "4" && enroll[8] == "1" && enroll[9] == "9"
          mov eREM419, 0
          mov eax, totalUnits
          sub eax, REM419
          mov totalUnits, eax
          
      .elseif eREM413 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "4" && enroll[8] == "1" && enroll[9] == "3"
          mov eREM413, 0
          mov eax, totalUnits
          sub eax, REM413
          mov totalUnits, eax
          
      .elseif eREM411 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "4" && enroll[8] == "1" && enroll[9] == "1"
          mov eREM411, 0
          mov eax, totalUnits
          sub eax, REM411
          mov totalUnits, eax
          
      .elseif eREM331 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "3" && enroll[8] == "3" && enroll[9] == "1"
          mov eREM331, 0
          mov eax, totalUnits
          sub eax, REM331
          mov totalUnits, eax
  
            
      .endif



      jmp eftyfs
      ret

; FOURTH YEAR FIRST SEM
;==============================
eftyss:
      call ClearScreen
      invoke StdOut, addr border0
      invoke StdOut, addr header0
      invoke StdOut, addr border1
      invoke StdOut, addr header1
      invoke StdOut, addr border2
      invoke StdOut, addr header2
      invoke StdOut, addr border3

      invoke StdOut, addr border93
      invoke StdOut, addr yearFourSecondSem
      invoke StdOut, addr border94
      invoke StdOut, addr txt9
      invoke StdOut, addr border95
      
      invoke StdOut, addr fourthSsSub1
      .if eREM401 == 1
        invoke StdOut, addr enrolled
      .endif
      invoke StdOut, addr border96
      
      invoke StdOut, addr fourthSsSub2
      .if eREM402 == 1
        invoke StdOut, addr enrolled
      .endif
      invoke StdOut, addr border97
      
      invoke StdOut, addr fourthSsSub3 
      .if eREM403 == 1
        invoke StdOut, addr enrolled
      .endif
      invoke StdOut, addr border98
      
      invoke StdOut, addr total8
      invoke StdOut, addr border99


      invoke StdOut, addr viewEnroll
      invoke StdIn, addr enroll, 50
      
  
      ; ADDING SUBJECT
      ; ===========================
  
  
      .if eREM401 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "4" && enroll[8] == "0" && enroll[9] == "1"
          mov eREM401, 1
          mov eax, totalUnits
          add eax, REM401
          mov totalUnits, eax
          
      .elseif eREM402 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "4" && enroll[8] == "0" && enroll[9] == "2"
          mov eREM402, 1
          mov eax, totalUnits
          add eax, REM402
          mov totalUnits, eax
          
      .elseif eREM403 == 0 && enroll[0] == "A" && enroll[1] == "D" && enroll[2] == "D" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "4" && enroll[8] == "0" && enroll[9] == "3"
          mov eREM403, 1
          mov eax, totalUnits
          add eax, REM403
          mov totalUnits, eax
          

            
      .endif
  
  
      ; DELETING SUBJECT
      ; ===========================
  
      .if eREM401 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "4" && enroll[8] == "0" && enroll[9] == "1"
          mov eREM401, 0
          mov eax, totalUnits
          sub eax, REM401
          mov totalUnits, eax
          
      .elseif eREM402 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "4" && enroll[8] == "0" && enroll[9] == "2"
          mov eREM402, 0
          mov eax, totalUnits
          sub eax, REM402
          mov totalUnits, eax
          
      .elseif eREM403 == 1 && enroll[0] == "D" && enroll[1] == "E" && enroll[2] == "L" && enroll[3] == " " && enroll[4] == "R" && enroll[5] == "E" && enroll[6] == "M" && enroll[7] == "4" && enroll[8] == "0" && enroll[9] == "3"
          mov eREM403, 0
          mov eax, totalUnits
          sub eax, REM403
          mov totalUnits, eax
          

            
      .endif


      jmp eftyss
      ret


;=================================================================================
; VIEW
; FIRST YEAR FIRST SEM
;==============================
fyfs:
    call ClearScreen
    invoke StdOut, addr border0
    invoke StdOut, addr header0
    invoke StdOut, addr border1
    invoke StdOut, addr header1
    invoke StdOut, addr border2
    invoke StdOut, addr header2
    invoke StdOut, addr border3
    
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

    invoke StdOut, addr enterContinueView
    invoke StdIn, addr continueView, 10

    .if continueView =="Y"
        je sem
    .elseif continueView == "y"
        je sem
    .elseif continueView =="N"
        je result
    .elseif continueView =="n"
        je result
    .endif
    call ClearScreen
    invoke StdOut, addr wrongValue
    jmp fyfs
    ret



 ; Display the second semester
 fyss:
    call ClearScreen
    invoke StdOut, addr border0
    invoke StdOut, addr header0
    invoke StdOut, addr border1
    invoke StdOut, addr header1
    invoke StdOut, addr border2
    invoke StdOut, addr header2
    invoke StdOut, addr border3
    
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

    invoke StdOut, addr enterContinueView
    invoke StdIn, addr continueView, 10

    .if continueView =="Y"
        je sem
    .elseif continueView == "y"
        je sem
    .elseif continueView =="N"
        je result
    .elseif continueView =="n"
        je result
    .endif
    call ClearScreen
    invoke StdOut, addr wrongValue
    jmp fyss
    ret


 ; Display the second year
 syfs:
    call ClearScreen
    invoke StdOut, addr border0
    invoke StdOut, addr header0
    invoke StdOut, addr border1
    invoke StdOut, addr header1
    invoke StdOut, addr border2
    invoke StdOut, addr header2
    invoke StdOut, addr border3
    
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

    invoke StdOut, addr enterContinueView
    invoke StdIn, addr continueView, 10

    .if continueView =="Y"
        je sem
    .elseif continueView == "y"
        je sem
    .elseif continueView =="N"
        je result
    .elseif continueView =="n"
        je result
    .endif
    call ClearScreen
    invoke StdOut, addr wrongValue
    jmp syfs
    ret


; Display the second semester
syss:
    call ClearScreen
    invoke StdOut, addr border0
    invoke StdOut, addr header0
    invoke StdOut, addr border1
    invoke StdOut, addr header1
    invoke StdOut, addr border2
    invoke StdOut, addr header2
    invoke StdOut, addr border3
    
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

    invoke StdOut, addr enterContinueView
    invoke StdIn, addr continueView, 10

    .if continueView =="Y"
        je sem
    .elseif continueView == "y"
        je sem
    .elseif continueView =="N"
        je result
    .elseif continueView =="n"
        je result
    .endif
    call ClearScreen
    invoke StdOut, addr wrongValue
    jmp syss
    ret


 ; Display the third year
 tyfs:
      call ClearScreen
      invoke StdOut, addr border0
      invoke StdOut, addr header0
      invoke StdOut, addr border1
      invoke StdOut, addr header1
      invoke StdOut, addr border2
      invoke StdOut, addr header2
      invoke StdOut, addr border3
    
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

      invoke StdOut, addr enterContinueView
      invoke StdIn, addr continueView, 10
    
      .if continueView =="Y"
        je sem
      .elseif continueView == "y"
        je sem
      .elseif continueView =="N"
        je result
      .elseif continueView =="n"
        je result
      .endif
      call ClearScreen
      invoke StdOut, addr wrongValue
      jmp tyfs
      ret


; Display the second semester
tyss:
      call ClearScreen
      invoke StdOut, addr border0
      invoke StdOut, addr header0
      invoke StdOut, addr border1
      invoke StdOut, addr header1
      invoke StdOut, addr border2
      invoke StdOut, addr header2
      invoke StdOut, addr border3
      
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

      invoke StdOut, addr enterContinueView
      invoke StdIn, addr continueView, 10
      
      .if continueView =="Y"
        je sem
      .elseif continueView == "y"
        je sem
      .elseif continueView =="N"
        je result
      .elseif continueView =="n"
        je result
      .endif
      call ClearScreen
      invoke StdOut, addr wrongValue
      jmp tyss
      ret
  
; Display the summer
tys:
      call ClearScreen
      invoke StdOut, addr border0
      invoke StdOut, addr header0
      invoke StdOut, addr border1
      invoke StdOut, addr header1
      invoke StdOut, addr border2
      invoke StdOut, addr header2
      invoke StdOut, addr border3
      
      invoke StdOut, addr border78
      invoke StdOut, addr summer
      invoke StdOut, addr border79
      invoke StdOut, addr txt7
      invoke StdOut, addr border80
      invoke StdOut, addr summerSub1
      invoke StdOut, addr border80

      invoke StdOut, addr enterContinueView
      invoke StdIn, addr continueView, 10
      
      .if continueView =="Y"
        je sem
      .elseif continueView == "y"
        je sem
      .elseif continueView =="N"
        je result
      .elseif continueView =="n"
        je result
      .endif
      call ClearScreen
      invoke StdOut, addr wrongValue
      jmp tys
      ret

; Display the fourth year
ftyfs:
      call ClearScreen
      invoke StdOut, addr border0
      invoke StdOut, addr header0
      invoke StdOut, addr border1
      invoke StdOut, addr header1
      invoke StdOut, addr border2
      invoke StdOut, addr header2
      invoke StdOut, addr border3
      
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


      invoke StdOut, addr enterContinueView
      invoke StdIn, addr continueView, 10
      
      .if continueView =="Y"
        je sem
      .elseif continueView == "y"
        je sem
      .elseif continueView =="N"
        je result
      .elseif continueView =="n"
        je result
      .endif
      call ClearScreen
      invoke StdOut, addr wrongValue
      jmp ftyfs
      ret
         
; Display the second semester
ftyss:
      call ClearScreen
      invoke StdOut, addr border0
      invoke StdOut, addr header0
      invoke StdOut, addr border1
      invoke StdOut, addr header1
      invoke StdOut, addr border2
      invoke StdOut, addr header2
      invoke StdOut, addr border3

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

      invoke StdOut, addr enterContinueView
      invoke StdIn, addr continueView, 10

      .if continueView =="Y"
        je sem
      .elseif continueView == "y"
        je sem
      .elseif continueView =="N"
        je result
      .elseif continueView =="n"
        je result
      .endif
      call ClearScreen
      invoke StdOut, addr wrongValue
      jmp ftyss
      ret


;=================================================================================
confirm:
    call ClearScreen
    invoke dwtoa, totalUnits, addr totalU
    invoke StdOut, addr totalU
    ret
;=================================================================================
call ClearScreen
jmp result

exitProgram: 
    invoke ExitProcess, 0
end start

