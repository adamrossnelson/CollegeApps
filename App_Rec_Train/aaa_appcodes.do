/* Save for testing.
set obs 100
gen isApp = .
gen rootdom0 = ""
gen rootdom1 = ""
gen rootdom2 = ""
gen CRIM_Inf18 = .
gen HS_beh18 = .
gen SEX18 = .
gen COL_beh18 = . */

// isApp Code scheme:
//    0  = Not a UG application.	1  = Is a UG application.
//    .d = Duplicate                .n = Needs Review
//    .e = Error in file (notpdf)   .o = App, but not general UG Application
// CRIM_Inf18 Code scheme:
//    0  = No criminal questions. 1 = Criminal questions.
// HS_beh18 Code scheme:
//    0  = No H.S. discipline qs. 1 = H.S. discipline qs.
//    .a = Ambigous
// SEX18 Code scheme:
//    0  = No sex offense qs. 1 = Sex offense qs.
// COL_beh18 Code scheme:
//    0  = No C.U. discipline qs. 1 = C.U. discipline qs.
//
// When an application doesn't explicitly ask for college BH but there
// is a question that asks generally about BH (which could, even if 
// ambigously, could apply to college) we code college as a true (1).



import delimited aaa_appcodestarter.csv, varnames(1) clear
replace webindx = subinstr(webindx," ","",.)
drop if webindx == ""
replace webindx = lower(webindx)
replace webindx = subinstr(webindx,".","",1) if strpos(webindx,".") == 1
expand 3
sort webindx
list in 1/10

capture gen id = .
forvalues i = 1(3)`=_N' {
	forvalues t = 0/2 {
		qui replace id = `t' if _n == `i' + `t'
	}
}
gen rootdom = webindx + string(id)
list in 1/12, sep(0)



replace isApp = 1 if rootdom = "aacc.edu0"
replace isApp = 0  if rootdom == "aacc.edu1"
replace isApp = .o if rootdom == "aacc.edu2"
replace CRIM_Inf18 = 1 if rootdom == "aacc.edu0"
replace HS_beh18   = 0 if rootdom == "aacc.edu0"
replace SEX18      = 0 if rootdom == "aacc.edu0"
replace COL_beh18  = 1 if rootdom == "aacc.edu0"



replace isApp = 1  if rootdom0 == "aacc.edu"
replace isApp = 0  if rootdom1 == "aacc.edu"
replace isApp = .o if rootdom2 == "aacc.edu"
replace CRIM_Inf18 = 1 if rootdom0 == "aacc.edu"
replace HS_beh18   = 0 if rootdom0 == "aacc.edu"
replace SEX18      = 0 if rootdom0 == "aacc.edu"
replace COL_beh18  = 1 if rootdom0 == "aacc.edu"

replace isApp = 1  if rootdom0 == "aamu.edu"
replace isApp = .d if rootdom1 == "aamu.edu"
replace isApp = 0  if rootdom2 == "aamu.edu"
replace CRIM_Inf18 = 1 if rootdom0 == "aamu.edu"
replace HS_beh18   = 0 if rootdom0 == "aamu.edu"
replace SEX18      = 0 if rootdom0 == "aamu.edu"
replace COL_beh18  = 0 if rootdom0 == "aamu.edu"

replace isApp = 0  if rootdom0 == "abac.edu"
replace isApp = 0  if rootdom1 == "abac.edu"
replace isApp = 0  if rootdom2 == "abac.edu"

replace isApp = 0  if rootdom0 == "adler.edu"
replace isApp = 0  if rootdom1 == "adler.edu"
replace isApp = 0  if rootdom2 == "adler.edu"


replace isApp = 0  if rootdom0 == "adu.edu"
replace isApp = 0  if rootdom1 == "adu.edu"
replace isApp = 0  if rootdom2 == "adu.edu"

replace isApp = .e  if rootdom0 == "agnesscott.edu"
replace isApp = .o  if rootdom1 == "agnesscott.edu"
replace isApp = .o  if rootdom2 == "agnesscott.edu"

replace isApp = .o  if rootdom0 == "aic.edu"
replace isApp = .o  if rootdom1 == "aic.edu"
replace isApp = 0  if rootdom2 == "aic.edu"

replace isApp = 1  if rootdom0 == "aicusa.edu"
replace isApp = .o  if rootdom1 == "aicusa.edu"
replace isApp = 0  if rootdom2 == "aicusa.edu"
replace CRIM_Inf18 = 1  if rootdom0 == "aicusa.edu"
replace HS_beh18   = 1  if rootdom0 == "aicusa.edu"
replace SEX18      = 0  if rootdom0 == "aicusa.edu"
replace COL_beh18  = 1  if rootdom0 == "aicusa.edu"

replace isApp = 1  if rootdom0 == "alasu.edu"
replace isApp = 0  if rootdom1 == "alasu.edu"
replace isApp = 0  if rootdom2 == "alasu.edu"
replace CRIM_Inf18 = 1  if rootdom0 == "alasu.edu"
replace HS_beh18   = 0  if rootdom0 == "alasu.edu"
replace SEX18      = 0  if rootdom0 == "alasu.edu"
replace COL_beh18  = 0  if rootdom0 == "alasu.edu"

replace isApp = 1  if rootdom0 == "albanytech.edu"
replace isApp = .o  if rootdom1 == "albanytech.edu"
replace isApp = .o  if rootdom2 == "albanytech.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "albanytech.edu"
replace HS_beh18   = 0  if rootdom0 == "albanytech.edu"
replace SEX18      = 0  if rootdom0 == "albanytech.edu"
replace COL_beh18  = .a  if rootdom0 == "albanytech.edu"

replace isApp = .o  if rootdom0 == "albertus.edu"
replace isApp = 1  if rootdom1 == "albertus.edu"
replace isApp = 1  if rootdom2 == "albertus.edu"
replace CRIM_Inf18 = 1  if rootdom0 == "albertus.edu"
replace HS_beh18   = 1  if rootdom0 == "albertus.edu"
replace SEX18      = 0  if rootdom0 == "albertus.edu"
replace COL_beh18  = 1  if rootdom0 == "albertus.edu"

replace isApp = 0  if rootdom0 == "albizu.edu"
replace isApp = 0  if rootdom1 == "albizu.edu"
replace isApp = 0  if rootdom2 == "albizu.edu"

replace isApp = .e  if rootdom0 == "alc.edu"
replace isApp = .e  if rootdom1 == "alc.edu"
replace isApp = .e  if rootdom2 == "alc.edu"

replace isApp = 1  if rootdom0 == "allegany.edu"
replace isApp = 0  if rootdom1 == "allegany.edu"
replace isApp = 0  if rootdom2 == "allegany.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "allegany.edu"
replace HS_beh18   = 0  if rootdom0 == "allegany.edu"
replace SEX18      = 0  if rootdom0 == "allegany.edu"
replace COL_beh18  = 1  if rootdom0 == "allegany.edu"

replace isApp = 0  if rootdom0 == "allencc.edu"
replace isApp = 0  if rootdom1 == "allencc.edu"
replace isApp = .o  if rootdom2 == "allencc.edu"

replace isApp = 0  if rootdom0 == "allencollege.edu"
replace isApp = 0  if rootdom1 == "allencollege.edu"
replace isApp = 0  if rootdom2 == "allencollege.edu"

replace isApp = 0  if rootdom0 == "ambs.edu"
replace isApp = 0  if rootdom1 == "ambs.edu"
replace isApp = 0  if rootdom2 == "ambs.edu"

replace isApp = .o  if rootdom0 == "amherst.edu"
replace isApp = 0  if rootdom1 == "amherst.edu"
replace isApp = 0  if rootdom2 == "amherst.edu"

replace isApp = 0  if rootdom0 == "amridgeuniversity.edu"
replace isApp = 0  if rootdom1 == "amridgeuniversity.edu"
//didn't have a rootdom2

replace isApp = 0  if rootdom0 == "ancilla.edu"
replace isApp = 0  if rootdom1 == "ancilla.edu"
replace isApp = 0  if rootdom2 == "ancilla.edu"

replace isApp = 1  if rootdom0 == "anderson.edu"
replace isApp = .o  if rootdom1 == "anderson.edu"
replace isApp = 0  if rootdom2 == "anderson.edu"
replace CRIM_Inf18 = 1  if rootdom0 == "anderson.edu"
replace HS_beh18   = 0  if rootdom0 == "anderson.edu"
replace SEX18      = 0  if rootdom0 == "anderson.edu"
replace COL_beh18  = 0  if rootdom0 == "anderson.edu"

replace isApp = .o  if rootdom0 == "andrewcollege.edu"
replace isApp = 1  if rootdom1 == "andrewcollege.edu"
//didn't have a rootdom2
replace CRIM_Inf18 = 1  if rootdom0 == "andrewcollege.edu"
replace HS_beh18   = 0  if rootdom0 == "andrewcollege.edu"
replace SEX18      = 0  if rootdom0 == "andrewcollege.edu"
replace COL_beh18  = 0  if rootdom0 == "andrewcollege.edu"

replace isApp = 1  if rootdom0 == "annamaria.edu"
replace isApp = .o  if rootdom1 == "annamaria.edu"
replace isApp = 0  if rootdom2 == "annamaria.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "annamaria.edu"
replace HS_beh18   = 0  if rootdom0 == "annamaria.edu"
replace SEX18      = 0  if rootdom0 == "annamaria.edu"
replace COL_beh18  = 0  if rootdom0 == "annamaria.edu"

replace isApp = .o  if rootdom0 == "ants.edu"
replace isApp = 0  if rootdom1 == "ants.edu"
replace isApp = 0  if rootdom2 == "ants.edu"

replace isApp = 0  if rootdom0 == "arapahoe.edu"
replace isApp = 0  if rootdom1 == "arapahoe.edu"
//didn't have a rootdom2

replace isApp = .o  if rootdom0 == "armstrong.edu"
replace isApp = 0  if rootdom1 == "armstrong.edu"
replace isApp = .o  if rootdom2 == "armstrong.edu"

replace isApp = 1  if rootdom0 == "asbury.edu"
replace isApp = .o  if rootdom1 == "asbury.edu"
replace isApp = .o  if rootdom2 == "asbury.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "asbury.edu"
replace HS_beh18   = 0  if rootdom0 == "asbury.edu"
replace SEX18      = 0  if rootdom0 == "asbury.edu"
replace COL_beh18  = 0  if rootdom0 == "asbury.edu"

replace isApp = .o  if rootdom0 == "asburyseminary.edu"
replace isApp = .o  if rootdom1 == "asburyseminary.edu"
replace isApp = .o  if rootdom2 == "asburyseminary.edu"

replace isApp = 1  if rootdom0 == "ascc.edu"
replace isApp = 1  if rootdom1 == "ascc.edu"
replace isApp = 0  if rootdom2 == "ascc.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "ascc.edu"
replace HS_beh18   = 0  if rootdom0 == "ascc.edu"
replace SEX18      = 0  if rootdom0 == "ascc.edu"
replace COL_beh18  = 0  if rootdom0 == "ascc.edu"

replace isApp = 0  if rootdom0 == "ashland.kctcs.edu"
replace isApp = 0  if rootdom1 == "ashland.kctcs.edu"
replace isApp = 0  if rootdom2 == "ashland.kctcs.edu"

replace isApp = .o  if rootdom0 == "Asnuntuk.edu"
replace isApp = 0  if rootdom1 == "Asnuntuk.edu"
replace isApp = 0  if rootdom2 == "Asnuntuk.edu"

replace isApp = 0  if rootdom0 == "assumption.edu"
replace isApp = 0  if rootdom1 == "assumption.edu"
replace isApp = 0  if rootdom2 == "assumption.edu"

replace isApp = 0  if rootdom0 == "asurams.edu"
replace isApp = 0  if rootdom1 == "asurams.edu"
replace isApp = 0  if rootdom2 == "asurams.edu"


replace isApp = 1  if rootdom0 == "athens.edu"
replace isApp = .o  if rootdom1 == "athens.edu"
replace isApp = 0  if rootdom2 == "athens.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "athens.edu"
replace HS_beh18   = 0  if rootdom0 == "athens.edu"
replace SEX18      = 0  if rootdom0 == "athens.edu"
replace COL_beh18  = 0  if rootdom0 == "athens.edu"

replace isApp = .o  if rootdom0 == "atlantatech.edu"
replace isApp = 0  if rootdom1 == "atlantatech.edu"
replace isApp = 0  if rootdom2 == "atlantatech.edu"

replace isApp = .o  if rootdom0 == "atlantictechnicalcollege.edu"
replace isApp = .o  if rootdom1 == "atlantictechnicalcollege.edu"
replace isApp = 0  if rootdom2 == "atlantictechnicalcollege.edu"

replace isApp = 1  if rootdom0 == "atlm.edu"
replace isApp = 1  if rootdom1 == "atlm.edu"
replace isApp = 0  if rootdom2 == "atlm.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "atlm.edu"
replace HS_beh18   = 0  if rootdom0 == "atlm.edu"
replace SEX18      = 0  if rootdom0 == "atlm.edu"
replace COL_beh18  = 0  if rootdom0 == "atlm.edu"
replace CRIM_Inf18 = 0  if rootdom1 == "atlm.edu"
replace HS_beh18   = 0  if rootdom1 == "atlm.edu"
replace SEX18      = 0  if rootdom1 == "atlm.edu"
replace COL_beh18  = 0  if rootdom1 == "atlm.edu"

replace isApp = 1  if rootdom0 == "auburn.edu"
replace isApp = 0  if rootdom1 == "auburn.edu"
replace isApp = 0  if rootdom2 == "auburn.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "auburn.edu"
replace HS_beh18   = 0  if rootdom0 == "auburn.edu"
replace SEX18      = 0  if rootdom0 == "auburn.edu"
replace COL_beh18  = 0  if rootdom0 == "auburn.edu"

replace isApp = 0  if rootdom0 == "augustana.edu"
replace isApp = 0  if rootdom1 == "augustana.edu"
replace isApp = 1  if rootdom2 == "augustana.edu"
replace CRIM_Inf18 = 0  if rootdom2 == "augustana.edu"
replace HS_beh18   = 0  if rootdom2 == "augustana.edu"
replace SEX18      = 0  if rootdom2 == "augustana.edu"
replace COL_beh18  = 0  if rootdom2 == "augustana.edu"

replace isApp = 1  if rootdom0 == "augustatech.edu"
replace isApp =.e  if rootdom1 == "augustatech.edu"
replace isApp = 0  if rootdom2 == "augustatech.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "augustatech.edu"
replace HS_beh18   = 0  if rootdom0 == "augustatech.edu"
replace SEX18      = 0  if rootdom0 == "augustatech.edu"
replace COL_beh18  = 0  if rootdom0 == "augustatech.edu"

replace isApp = 1  if rootdom0 == "aum.edu"
replace isApp = 0  if rootdom1 == "aum.edu"
replace isApp = .o  if rootdom2 == "aum.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "aum.edu"
replace HS_beh18   = 0  if rootdom0 == "aum.edu"
replace SEX18      = 0  if rootdom0 == "aum.edu"
replace COL_beh18  = 0  if rootdom0 == "aum.edu"

replace isApp = .o  if rootdom0 == "aurora.edu"
replace isApp = 0  if rootdom1 == "aurora.edu"
replace isApp = 0  if rootdom2 == "aurora.edu"

replace isApp = 1  if rootdom0 == "bainbridge.edu"
replace isApp = .o  if rootdom1 == "bainbridge.edu"
replace isApp = 0  if rootdom2 == "bainbridge.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "bainbridge.edu"
replace HS_beh18   = 0  if rootdom0 == "bainbridge.edu"
replace SEX18      = 0  if rootdom0 == "bainbridge.edu"
replace COL_beh18  = 0  if rootdom0 == "bainbridge.edu"

replace isApp = .e  if rootdom0 == "bakeru.edu"
replace isApp = .e  if rootdom1 == "bakeru.edu"
replace isApp = .e  if rootdom2 == "bakeru.edu"

replace isApp = .o  if rootdom0 == "baptistcollege.edu"
replace isApp = 0  if rootdom1 == "baptistcollege.edu"
replace isApp = 0  if rootdom2 == "baptistcollege.edu"

replace isApp = .o  if rootdom0 == "barclaycollege.edu"
replace isApp = 1  if rootdom1 == "barclaycollege.edu"
replace isApp = 0  if rootdom2 == "barclaycollege.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "barclaycollege.edu"
replace HS_beh18   = 0  if rootdom0 == "barclaycollege.edu"
replace SEX18      = 0  if rootdom0 == "barclaycollege.edu"
replace COL_beh18  = 0  if rootdom0 == "barclaycollege.edu"

replace isApp = 1  if rootdom0 == "barry.edu"
replace isApp = 0  if rootdom1 == "barry.edu"
// didn't have rootdom2
replace CRIM_Inf18 = 1  if rootdom0 == "barry.edu"
replace HS_beh18   = 1  if rootdom0 == "barry.edu"  /// Ask Adam about "have you been disciplined by a student/faculty judicial board for misconduct?"
replace SEX18      = 0  if rootdom0 == "barry.edu"
replace COL_beh18  = 1  if rootdom0 == "barry.edu"

replace isApp = .o  if rootdom0 == "bartonccc.edu"
replace isApp = 0  if rootdom1 == "bartonccc.edu"
replace isApp = 0  if rootdom2 == "bartonccc.edu"


replace isApp = 0  if rootdom0 == "bates.edu"
replace isApp = 1  if rootdom1 == "bates.edu"
replace isApp = 0  if rootdom2 == "bates.edu"
replace CRIM_Inf18 = 0  if rootdom1 == "bates.edu"
replace HS_beh18   = 0  if rootdom1 == "bates.edu"
replace SEX18      = 0  if rootdom1 == "bates.edu"
replace COL_beh18  = 0  if rootdom1 == "bates.edu"

replace isApp = .o  if rootdom0 == "bccc.edu"
replace isApp = .o  if rootdom1 == "bccc.edu"
replace isApp = .o  if rootdom2 == "bccc.edu"

replace isApp = 1  if rootdom0 == "bellarmine.edu"
replace isApp = 0  if rootdom1 == "bellarmine.edu"
replace isApp = 0  if rootdom2 == "bellarmine.edu"
replace CRIM_Inf18 = 1  if rootdom0 == "bellarmine.edu"
replace HS_beh18   = 1  if rootdom0 == "bellarmine.edu"
replace SEX18      = 0  if rootdom0 == "bellarmine.edu"
replace COL_beh18  = 1  if rootdom0 == "bellarmine.edu"

replace isApp = __  if rootdom0 == "ben.edu"
replace isApp = __  if rootdom1 == "ben.edu"
replace isApp = __  if rootdom2 == "ben.edu"
replace CRIM_Inf18 = __  if rootdom0 == "ben.edu"
replace HS_beh18   = __  if rootdom0 == "ben.edu"
replace SEX18      = __  if rootdom0 == "ben.edu"
replace COL_beh18  = __  if rootdom0 == "ben.edu"

replace isApp = .o  if rootdom0 == "benedictine.edu"
replace isApp = .o  if rootdom1 == "benedictine.edu"
replace isApp = .o  if rootdom2 == "benedictine.edu"

replace isApp = .e  if rootdom0 == "berea.edu"
replace isApp = .e  if rootdom1 == "berea.edu"
replace isApp = .e  if rootdom2 == "berea.edu"

replace isApp = .o  if rootdom0 == "berry.edu"
replace isApp = .o  if rootdom1 == "berry.edu"
replace isApp = .o  if rootdom2 == "berry.edu"

replace isApp = .o  if rootdom0 == "bethanyseminary.edu"
replace isApp = 0  if rootdom1 == "bethanyseminary.edu"
replace isApp = 0  if rootdom2 == "bethanyseminary.edu"

replace isApp = 1  if rootdom0 == "bethelcollege.edu"
replace isApp = 1  if rootdom1 == "bethelcollege.edu"
replace isApp = 0  if rootdom2 == "bethelcollege.edu"
replace CRIM_Inf18 = 1  if rootdom0 == "bethelcollege.edu"
replace HS_beh18   = 1  if rootdom0 == "bethelcollege.edu"
replace SEX18      = 0  if rootdom0 == "bethelcollege.edu"
replace COL_beh18  = 1  if rootdom0 == "bethelcollege.edu"
replace CRIM_Inf18 = 1  if rootdom1 == "bethelcollege.edu"
replace HS_beh18   = 1  if rootdom1 == "bethelcollege.edu"
replace SEX18      = 0  if rootdom1 == "bethelcollege.edu"
replace COL_beh18  = 1  if rootdom1 == "bethelcollege.edu"

replace isApp = 1  if rootdom0 == "bethelks.edu"
replace isApp = 0  if rootdom1 == "bethelks.edu"
replace isApp = 0  if rootdom2 == "bethelks.edu"
replace CRIM_Inf18 = 1  if rootdom0 == "bethelks.edu"
replace HS_beh18   = 1  if rootdom0 == "bethelks.edu"
replace SEX18      = 0  if rootdom0 == "bethelks.edu"
replace COL_beh18  = 1  if rootdom0 == "bethelks.edu"

replace isApp = .o  if rootdom0 == "beulah.edu"
replace isApp = 0  if rootdom1 == "beulah.edu"
replace isApp = 0  if rootdom2 == "beulah.edu"

replace isApp = 1  if rootdom0 == "bhc.edu"
replace isApp = .o  if rootdom1 ==  "bhc.edu"
replace isApp = 0  if rootdom2 ==  "bhc.edu"
replace CRIM_Inf18 = 0  if rootdom0 ==  "bhc.edu"
replace HS_beh18   = 0  if rootdom0 ==  "bhc.edu"
replace SEX18      = 0  if rootdom0 ==  "bhc.edu"
replace COL_beh18  = 0  if rootdom0 == "bhc.edu"

replace isApp = 0  if rootdom0 == "bigsandy.kctcs.edu"
replace isApp = 0  if rootdom1 == "bigsandy.kctcs.edu"
replace isApp = 0  if rootdom2 == "bigsandy.kctcs.edu"

replace isApp = 1  if rootdom0 == "bishop.edu"
replace isApp = .o  if rootdom1 == "bishop.edu"
replace isApp = 0  if rootdom2 == "bishop.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "bishop.edu"
replace HS_beh18   = 0  if rootdom0 == "bishop.edu"
replace SEX18      = 0  if rootdom0 == "bishop.edu"
replace COL_beh18  = 0  if rootdom0 == "bishop.edu"

replace isApp = .o  if rootdom0 == "blackburn.edu"
replace isApp = .o  if rootdom1 == "blackburn.edu"
replace isApp = 1  if rootdom2 == "blackburn.edu"
replace CRIM_Inf18 = 1  if rootdom2 == "blackburn.edu"
replace HS_beh18   = 1  if rootdom2 == "blackburn.edu"
replace SEX18      = 0  if rootdom2 == "blackburn.edu"
replace COL_beh18  = 1  if rootdom2 == "blackburn.edu"

replace isApp = 0  if rootdom0 == "bluegrass.edu"
replace isApp = 0  if rootdom1 == "bluegrass.edu"
replace isApp = 0  if rootdom2 == "bluegrass.edu"

replace isApp = 0  if rootdom0 == "boisebible.edu"
replace isApp = 0  if rootdom1 == "boisebible.edu"
replace isApp = 0  if rootdom2 == "boisebible.edu"

replace isApp = .o  if rootdom0 == "boisestate.edu"
replace isApp = .o  if rootdom1 == "boisestate.edu"
replace isApp = .o  if rootdom2 == "boisestate.edu"

replace isApp = 0  if rootdom0 == "bowdoin.edu"
replace isApp = 0  if rootdom1 == "bowdoin.edu"
replace isApp = 0  if rootdom2 == "bowdoin.edu"


replace isApp = .o  if rootdom0 == "bowiestate.edu"
replace isApp = .o  if rootdom1 == "bowiestate.edu"
replace isApp = .o  if rootdom2 == "bowiestate.edu"

replace isApp = 0  if rootdom0 == "bpc.edu"
replace isApp = 0  if rootdom1 == "bpc.edu"
replace isApp = 0  if rootdom2 == "bpc.edu"

replace isApp = 1  if rootdom0 == "bpcc.edu"
replace isApp = 0  if rootdom1 == "bpcc.edu"
replace isApp = 0  if rootdom2 == "bpcc.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "bpcc.edu"
replace HS_beh18   = 0  if rootdom0 == "bpcc.edu"
replace SEX18      = 0  if rootdom0 == "bpcc.edu"
replace COL_beh18  = 1  if rootdom0 == "bpcc.edu"

replace isApp = 1  if rootdom0 == "bradley.edu"
replace isApp = .o  if rootdom1 == "bradley.edu"
replace isApp = 1  if rootdom2 == "bradley.edu"
replace CRIM_Inf18 = 1  if rootdom0 == "bradley.edu"
replace HS_beh18   = 1  if rootdom0 == "bradley.edu"
replace SEX18      = 0  if rootdom0 == "bradley.edu"
replace COL_beh18  = 1  if rootdom0 == "bradley.edu"
replace CRIM_Inf18 = 1  if rootdom2 == "bradley.edu"
replace HS_beh18   = 1  if rootdom2 == "bradley.edu"
replace SEX18      = 0  if rootdom2 == "bradley.edu"
replace COL_beh18  = 1  if rootdom2 == "bradley.edu"


replace isApp = 0  if rootdom0 == "brcn.edu"
replace isApp = 0  if rootdom1 == "brcn.edu"
replace isApp = 0  if rootdom2 == "brcn.edu"

replace isApp = .e  if rootdom0 == "brenau.edu"
replace isApp = .o  if rootdom1 == "brenau.edu"
replace isApp = 0  if rootdom2 == "brenau.edu"

replace isApp = 0  if rootdom0 == "brescia.edu"
replace isApp = 0  if rootdom1 == "brescia.edu"
replace isApp = .o  if rootdom2 == "brescia.edu"


replace isApp = 0  if rootdom0 == "briarcliff.edu"
replace isApp = 0  if rootdom1 == "briarcliff.edu"
replace isApp = 0  if rootdom2 == "briarcliff.edu"


replace isApp = .o  if rootdom0 == "bridgeport.edu"
replace isApp = 1  if rootdom1 == "bridgeport.edu"
//Missing rootdom2
replace CRIM_Inf18 = 1  if rootdom1 == "bridgeport.edu"
replace HS_beh18   = 1  if rootdom1 == "bridgeport.edu"
replace SEX18      = 0  if rootdom1 == "bridgeport.edu"
replace COL_beh18  = 1  if rootdom1 == "bridgeport.edu"

replace isApp = 0  if rootdom0 == "broward.edu"
replace isApp = 0  if rootdom1 == "broward.edu"
replace isApp = 0  if rootdom2 == "broward.edu"


replace isApp = 1  if rootdom0 == "bsc.edu"
replace isApp = 0  if rootdom1 == "bsc.edu"
replace isApp = 0  if rootdom2 == "bsc.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "bsc.edu"
replace HS_beh18   = 1  if rootdom0 == "bsc.edu"
replace SEX18      = 0  if rootdom0 == "bsc.edu"
replace COL_beh18  = 1  if rootdom0 == "bsc.edu"

replace isApp = 0  if rootdom0 == "bsu.edu"
replace isApp = .e  if rootdom1 == "bsu.edu"
replace isApp = .e  if rootdom2 == "bsu.edu"


replace isApp = 0  if rootdom0 == "butc.edu"
//Missing 


replace isApp = 0  if rootdom0 == "butler.edu"
replace isApp = 0  if rootdom1 == "butler.edu"
replace isApp = 0  if rootdom2 == "butler.edu"


replace isApp = 1  if rootdom0 == "butlercc.edu"
replace isApp = 0  if rootdom1 == "butlercc.edu"
replace isApp = .o  if rootdom2 == "butlercc.edu"


replace isApp = 0  if rootdom0 == "bvu.edu"
replace isApp = 0  if rootdom1 == "bvu.edu"
replace isApp = 0  if rootdom2 == "bvu.edu"


replace isApp = 0  if rootdom0 == "byui.edu"
replace isApp = .o  if rootdom1 == "byui.edu"
replace isApp = .o  if rootdom2 == "byui.edu"


replace isApp = 0  if rootdom0 == "cacc.edu"
replace isApp = 0  if rootdom1 == "cacc.edu"
replace isApp = .o  if rootdom2 == "cacc.edu"


replace isApp = 1  if rootdom0 == "calhoun.edu"
replace isApp = 0  if rootdom1 == "calhoun.edu"
replace isApp = 0  if rootdom2 == "calhoun.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "calhoun.edu"
replace HS_beh18   = 0  if rootdom0 == "calhoun.edu"
replace SEX18      = 0  if rootdom0 == "calhoun.edu"
replace COL_beh18  = 0  if rootdom0 == "calhoun.edu"

replace isApp = 0  if rootdom0 == "campbellsville.edu"
replace isApp = 0  if rootdom1 == "campbellsville.edu"
replace isApp = 0  if rootdom2 == "campbellsville.edu"


replace isApp = 1  if rootdom0 == "captechu.edu"
replace isApp = .o  if rootdom1 == "captechu.edu"
replace isApp = .o  if rootdom2 == "captechu.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "captechu.edu"
replace HS_beh18   = 0  if rootdom0 == "captechu.edu"
replace SEX18      = 0  if rootdom0 == "captechu.edu"
replace COL_beh18  = 0  if rootdom0 == "captechu.edu"

replace isApp = 1  if rootdom0 == "carver.edu"
replace isApp = 1  if rootdom1 == "carver.edu"
replace isApp = 0  if rootdom2 == "carver.edu"
replace CRIM_Inf18 = 1  if rootdom0 == "carver.edu"/// 
replace HS_beh18   = 1  if rootdom0 == "carver.edu"
replace SEX18      = 0  if rootdom0 == "carver.edu"
replace COL_beh18  = 1  if rootdom0 == "carver.edu"
replace CRIM_Inf18 = 1  if rootdom1 == "carver.edu"/// 
replace HS_beh18   = 1  if rootdom1 == "carver.edu"
replace SEX18      = 0  if rootdom1 == "carver.edu"
replace COL_beh18  = 1  if rootdom1 == "carver.edu"

replace isApp = 1  if rootdom0 == "cau.edu"
replace isApp = .o  if rootdom1 == "cau.edu"
replace isApp = 0  if rootdom2 == "cau.edu"
replace CRIM_Inf18 = 1  if rootdom0 == "cau.edu"
replace HS_beh18   = 1  if rootdom0 == "cau.edu"
replace SEX18      = 0  if rootdom0 == "cau.edu"
replace COL_beh18  = 1  if rootdom0 == "cau.edu"

replace isApp = 0  if rootdom0 == "cbts.edu"
replace isApp = 1  if rootdom1 == "cbts.edu"
replace isApp = 0  if rootdom2 == "cbts.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "cbts.edu"
replace HS_beh18   = 0  if rootdom0 == "cbts.edu"
replace SEX18      = 0  if rootdom0 == "cbts.edu"
replace COL_beh18  = 0  if rootdom0 == "cbts.edu"

replace isApp = 0  if rootdom0 == "ccal.edu"
//Missing rootdom1 and rootdom2


replace isApp = 0  if rootdom0 == "ccaurora.edu"
replace isApp = 0  if rootdom1 == "ccaurora.edu"
replace isApp = 0  if rootdom2 == "ccaurora.edu"


replace isApp = 1  if rootdom0 == "ccbbc.edu"
replace isApp = .e  if rootdom1 == "ccbbc.edu"
replace isApp = 0  if rootdom2 == "ccbbc.edu"
replace CRIM_Inf18 = 1  if rootdom0 == "ccbbc.edu"
replace HS_beh18   = 0  if rootdom0 == "ccbbc.edu"
replace SEX18      = 0  if rootdom0 == "ccbbc.edu"
replace COL_beh18  = 0  if rootdom0 == "ccbbc.edu"

replace isApp = .e  if rootdom0 == "ccc.commnet.edu"
replace isApp = .e  if rootdom1 == "ccc.commnet.edu"
replace isApp = .e  if rootdom2 == "ccc.commnet.edu"


replace isApp = 0  if rootdom0 == "ccd.edu"
replace isApp = 0  if rootdom1 == "ccd.edu"
replace isApp = 0  if rootdom2 == "ccd.edu"


replace isApp = 0  if rootdom0 == "ccga.edu"
replace isApp = 0  if rootdom1 == "ccga.edu"
replace isApp = 0  if rootdom2 == "ccga.edu"

replace isApp = 1  if rootdom0 == "ccsj.edu"
replace isApp = .o  if rootdom1 == "ccsj.edu"
replace isApp = 0  if rootdom2 == "ccsj.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "ccsj.edu"
replace HS_beh18   = 0  if rootdom0 == "ccsj.edu"
replace SEX18      = 0  if rootdom0 == "ccsj.edu"
replace COL_beh18  = 0  if rootdom0 == "ccsj.edu"

replace isApp = 0  if rootdom0 == "ccsu.edu"
replace isApp = 0  if rootdom1 == "ccsu.edu"
replace isApp = 0  if rootdom2 == "ccsu.edu"

replace isApp = 0  if rootdom0 == "cecil.edu"
replace isApp = 0  if rootdom1 == "cecil.edu"
replace isApp = 0  if rootdom2 == "cecil.edu"

replace isApp = .o  if rootdom0 == "centenary.edu"
replace isApp = 1  if rootdom1 == "centenary.edu"
replace isApp = 0  if rootdom2 == "centenary.edu"
replace CRIM_Inf18 = 1  if rootdom1 == "centenary.edu"
replace HS_beh18   = 1  if rootdom1 == "centenary.edu"
replace SEX18      = 0  if rootdom1 == "centenary.edu"
replace COL_beh18  = 0  if rootdom1 == "centenary.edu"

replace isApp = 0  if rootdom0 == "central.edu"
replace isApp = 0  if rootdom1 == "central.edu"
replace isApp = 0  if rootdom2 == "central.edu"


replace isApp = .o  if rootdom0 == "centralchristian.edu"
replace isApp = .o  if rootdom1 == "centralchristian.edu"
replace isApp = 0  if rootdom2 == "centralchristian.edu"


replace isApp = 0  if rootdom0 == "centre.edu"
replace isApp = 0  if rootdom1 == "centre.edu"
replace isApp = 0  if rootdom2 == "centre.edu"


replace isApp = 0  if rootdom0 == "cf.edu"
replace isApp = .o  if rootdom1 == "cf.edu"
replace isApp = 0  if rootdom2 == "cf.edu"

replace isApp = 0  if rootdom0 == "chaminade.edu"
replace isApp = 0  if rootdom1 == "chaminade.edu"
replace isApp = 0  if rootdom2 == "chaminade.edu"


replace isApp = 0  if rootdom0 == "charteroak.edu"
replace isApp = 0  if rootdom1 == "charteroak.edu"
replace isApp = 0  if rootdom2 == "charteroak.edu"

replace isApp = 1  if rootdom0 == "chattahoocheetech.edu"
replace isApp = 0  if rootdom1 == "chattahoocheetech.edu"
replace isApp = 1  if rootdom2 == "chattahoocheetech.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "chattahoocheetech.edu"
replace HS_beh18   = 0  if rootdom0 == "chattahoocheetech.edu"
replace SEX18      = 0  if rootdom0 == "chattahoocheetech.edu"
replace COL_beh18  = 0  if rootdom0 == "chattahoocheetech.edu"
replace CRIM_Inf18 = 0  if rootdom2 == "chattahoocheetech.edu"
replace HS_beh18   = 0  if rootdom2 == "chattahoocheetech.edu"
replace SEX18      = 0  if rootdom2 == "chattahoocheetech.edu"
replace COL_beh18  = 0  if rootdom2 == "chattahoocheetech.edu"


replace isApp = 0  if rootdom0 == "chesapeake.edu"
replace isApp = 0  if rootdom1 == "chesapeake.edu"
replace isApp = 0  if rootdom2 == "chesapeake.edu"


replace isApp = 1  if rootdom0 == "chipola.edu"
replace isApp = 1  if rootdom1 == "chipola.edu"
replace isApp = 0  if rootdom2 == "chipola.edu"
replace CRIM_Inf18 = 1  if rootdom0 == "chipola.edu"
replace HS_beh18   = 1  if rootdom0 == "chipola.edu"
replace SEX18      = 0  if rootdom0 == "chipola.edu"
replace COL_beh18  = 1  if rootdom0 == "chipola.edu"
replace CRIM_Inf18 = 1  if rootdom1 == "chipola.edu"
replace HS_beh18   = 1  if rootdom1 == "chipola.edu"
replace SEX18      = 0  if rootdom1 == "chipola.edu"
replace COL_beh18  = 1  if rootdom1 == "chipola.edu"

replace isApp = .o  if rootdom0 == "clarke.edu"
replace isApp = 0  if rootdom1 == "clarke.edu"
replace isApp = 0  if rootdom2 == "clarke.edu"

replace isApp = 1  if rootdom0 == "clayton.edu"
replace isApp = 0  if rootdom1 == "clayton.edu"
replace isApp = 1  if rootdom2 == "clayton.edu"
replace CRIM_Inf18 = 1  if rootdom0 == "clayton.edu"
replace HS_beh18   = 1  if rootdom0 == "clayton.edu"
replace SEX18      = 0  if rootdom0 == "clayton.edu"
replace COL_beh18  = 1  if rootdom0 == "clayton.edu"
replace CRIM_Inf18 = 1  if rootdom1 == "clayton.edu"
replace HS_beh18   = 1  if rootdom1 == "clayton.edu"
replace SEX18      = 0  if rootdom1 == "clayton.edu"
replace COL_beh18  = 1  if rootdom1 == "clayton.edu"

replace isApp = 0  if rootdom0 == "cloud.edu"
replace isApp = 0  if rootdom1 == "cloud.edu"
replace isApp = 0  if rootdom2 == "cloud.edu"


replace isApp = 0  if rootdom0 == "cltcc.edu"
replace isApp = 0  if rootdom1 == "cltcc.edu"
replace isApp = 0  if rootdom2 == "cltcc.edu"


replace isApp = 0  if rootdom0 == "cmcc.edu"
replace isApp = 0  if rootdom1 == "cmcc.edu"
replace isApp = 0  if rootdom2 == "cmcc.edu"


replace isApp = .o  if rootdom0 == "cncc.edu"
replace isApp = .o  if rootdom1 == "cncc.edu"
replace isApp = .o  if rootdom2 == "cncc.edu"


replace isApp = .o  if rootdom0 == "coa.edu"
replace isApp = .o  if rootdom1 == "coa.edu"
replace isApp = 0  if rootdom2 == "coa.edu"


replace isApp = .o  if rootdom0 == "cod.edu"
replace isApp = .o  if rootdom1 == "cod.edu"
replace isApp = 0  if rootdom2 == "cod.edu"

replace isApp = 1  if rootdom0 == "coe.edu"
replace isApp = 1  if rootdom1 == "coe.edu"
replace isApp = 0  if rootdom2 == "coe.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "coe.edu"
replace HS_beh18   = 0  if rootdom0 == "coe.edu"
replace SEX18      = 0  if rootdom0 == "coe.edu"
replace COL_beh18  = 0  if rootdom0 == "coe.edu"
replace CRIM_Inf18 = 0  if rootdom1 == "coe.edu"
replace HS_beh18   = 0  if rootdom1 == "coe.edu"
replace SEX18      = 0  if rootdom1 == "coe.edu"
replace COL_beh18  = 0  if rootdom1 == "coe.edu"



replace isApp = .o  if rootdom0 == "coffeyville.edu"
replace isApp = 1  if rootdom1 == "coffeyville.edu"
replace isApp = .e  if rootdom2 == "coffeyville.edu"
replace CRIM_Inf18 = 0  if rootdom1 == "coffeyville.edu"
replace HS_beh18   = 0  if rootdom1 == "coffeyville.edu"
replace SEX18      = 0  if rootdom1 == "coffeyville.edu"
replace COL_beh18  = 0  if rootdom1 == "coffeyville.edu"

replace isApp = 0  if rootdom0 == "colby.edu"
replace isApp = 0  if rootdom1 == "colby.edu"
replace isApp = 0  if rootdom2 == "colby.edu"


replace isApp = .o  if rootdom0 == "colbycc.edu"
replace isApp = .o  if rootdom1 == "colbycc.edu"
replace isApp = 0  if rootdom2 == "colbycc.edu"


replace isApp = 0  if rootdom0 == "collegeamerica.edu"
replace isApp = 0  if rootdom1 == "collegeamerica.edu"
replace isApp = 0  if rootdom2 == "collegeamerica.edu"

replace isApp = 0  if rootdom0 == "collegeofidaho.edu"
replace isApp = 0  if rootdom1 == "collegeofidaho.edu"
replace isApp = 0  if rootdom2 == "collegeofidaho.edu"


replace isApp = 1  if rootdom0 == "colorado.edu"
replace isApp = 0  if rootdom1 == "colorado.edu"
replace isApp = .o  if rootdom2 == "colorado.edu"
replace CRIM_Inf18 = 1  if rootdom0 == "colorado.edu"
replace HS_beh18   = 1  if rootdom0 == "colorado.edu"
replace SEX18      = 0  if rootdom0 == "colorado.edu"
replace COL_beh18  = 1  if rootdom0 == "colorado.edu"

replace isApp = .o  if rootdom0 == "coloradocollege.edu"
replace isApp = .o  if rootdom1 == "coloradocollege.edu"
replace isApp = 0  if rootdom2 == "coloradocollege.edu"

replace isApp = 0  if rootdom0 == "coloradomesa.edu"
replace isApp = 0  if rootdom1 == "coloradomesa.edu"
replace isApp = 0  if rootdom2 == "coloradomesa.edu"


replace isApp = .e  if rootdom0 == "coloradomtn.edu"
replace isApp = .e  if rootdom1 == "coloradomtn.edu"
replace isApp = .e  if rootdom2 == "coloradomtn.edu"


replace isApp = .o  if rootdom0 == "colostate.edu"
replace isApp = 0  if rootdom1 == "colostate.edu"
replace isApp = .o  if rootdom2 == "colostate.edu"

replace isApp = 0  if rootdom0 == "colum.edu"
replace isApp = 0  if rootdom1 == "colum.edu"
replace isApp = 0  if rootdom2 == "colum.edu"

replace isApp = 1  if rootdom0 == "columbusstate.edu"
replace isApp = .o  if rootdom1 == "columbusstate.edu"
replace isApp = 0  if rootdom2 == "columbusstate.edu"
replace CRIM_Inf18 = 1  if rootdom0 == "columbusstate.edu"
replace HS_beh18   = 0  if rootdom0 == "columbusstate.edu"
replace SEX18      = 0  if rootdom0 == "columbusstate.edu"
replace COL_beh18  = 1  if rootdom0 == "columbusstate.edu"

replace isApp = .o  if rootdom0 == "columbustech.edu"
replace isApp = 1  if rootdom1 == "columbustech.edu"
replace isApp = 0  if rootdom2 == "columbustech.edu"
replace CRIM_Inf18 = 0  if rootdom1 == "columbustech.edu"
replace HS_beh18   = 0  if rootdom1 == "columbustech.edu"
replace SEX18      = 0  if rootdom1 == "columbustech.edu"
replace COL_beh18  = 0  if rootdom1 == "columbustech.edu"

replace isApp = 0  if rootdom0 == "conncoll.edu"
replace isApp = .o  if rootdom1 == "conncoll.edu"
replace isApp = .o  if rootdom2 == "conncoll.edu"


replace isApp = 1  if rootdom0 == "cookman.edu"
replace isApp = .o  if rootdom1 == "cookman.edu"
//Missing 
replace CRIM_Inf18 = 0  if rootdom0 == "cookman.edu"
replace HS_beh18   = 0  if rootdom0 == "cookman.edu"
replace SEX18      = 0  if rootdom0 == "cookman.edu"
replace COL_beh18  = 0  if rootdom0 == "cookman.edu"

replace isApp = 0  if rootdom0 == "coppin.edu"
replace isApp = 1  if rootdom1 == "coppin.edu"
replace isApp = 0  if rootdom2 == "coppin.edu"
replace CRIM_Inf18 = 0  if rootdom1 == "coppin.edu"
replace HS_beh18   = 0  if rootdom1 == "coppin.edu"
replace SEX18      = 0  if rootdom1 == "coppin.edu"
replace COL_beh18  = 0  if rootdom1 == "coppin.edu"

replace isApp = 0  if rootdom0 == "cornellcollege.edu"
replace isApp = 0  if rootdom1 == "cornellcollege.edu"
replace isApp = .o  if rootdom2 == "cornellcollege.edu"


replace isApp = 1  if rootdom0 == "covenant.edu"
replace isApp = .o  if rootdom1 == "covenant.edu"
replace isApp = .o  if rootdom2 == "covenant.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "covenant.edu"
replace HS_beh18   = 0  if rootdom0 == "covenant.edu"
replace SEX18      = 0  if rootdom0 == "covenant.edu"
replace COL_beh18  = 0  if rootdom0 == "covenant.edu"

replace isApp = .o  if rootdom0 == "cowley.edu"
replace isApp = 0  if rootdom1 == "cowley.edu"
replace isApp = 0  if rootdom2 == "cowley.edu"

replace isApp = 1  if rootdom0 == "csi.edu"
replace isApp = 0  if rootdom1 == "csi.edu"
replace isApp = .o  if rootdom2 == "csi.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "csi.edu"
replace HS_beh18   = 0  if rootdom0 == "csi.edu"
replace SEX18      = 0  if rootdom0 == "csi.edu"
replace COL_beh18  = 0  if rootdom0 == "csi.edu"

replace isApp = 0  if rootdom0 == "csmd.edu"
replace isApp = 0  if rootdom1 == "csmd.edu"
replace isApp = 0  if rootdom2 == "csmd.edu"

replace isApp = 1  if rootdom0 == "csu.edu"
replace isApp = .o  if rootdom1 == "csu.edu"
replace isApp = 1  if rootdom2 == "csu.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "csu.edu"
replace HS_beh18   = 0  if rootdom0 == "csu.edu"
replace SEX18      = 0  if rootdom0 == "csu.edu"
replace COL_beh18  = 0  if rootdom0 == "csu.edu"
replace CRIM_Inf18 = 0  if rootdom1 == "csu.edu"
replace HS_beh18   = 0  if rootdom1 == "csu.edu"
replace SEX18      = 0  if rootdom1 == "csu.edu"
replace COL_beh18  = 0  if rootdom1 == "csu.edu"


replace isApp = 1  if rootdom0 == "csupueblo.edu"
replace isApp = .o  if rootdom1 == "csupueblo.edu"
replace isApp = .o  if rootdom2 == "csupueblo.edu"
replace CRIM_Inf18 = 1  if rootdom0 == "csupueblo.edu"
replace HS_beh18   = 1  if rootdom0 == "csupueblo.edu"
replace SEX18      = 1  if rootdom0 == "csupueblo.edu"
replace COL_beh18  = 1  if rootdom0 == "csupueblo.edu"

replace isApp = 0  if rootdom0 == "cts.edu"
replace isApp = 0  if rootdom1 == "cts.edu"
replace isApp = 0  if rootdom2 == "cts.edu"


replace isApp = 0  if rootdom0 == "ctschicago.edu"
replace isApp = 0  if rootdom1 == "ctschicago.edu"
replace isApp = 0  if rootdom2 == "ctschicago.edu"


replace isApp = 0  if rootdom0 == "ctsfw.edu"
replace isApp = .o  if rootdom1 == "ctsfw.edu"
replace isApp = 0  if rootdom2 == "ctsfw.edu"


replace isApp = .o  if rootdom0 == "ctu.edu"
replace isApp = .o  if rootdom1 == "ctu.edu"
//Missing rootdom2


replace isApp = .o  if rootdom0 == "cua.edu" re admission application??
replace isApp = .o  if rootdom1 == "template.edu"  second degree application??
replace isApp = .o  if rootdom2 == "template.edu"


replace isApp = 1  if rootdom0 == "cv.edu"
replace isApp = 1  if rootdom1 == "cv.edu"
replace isApp = .o  if rootdom2 == "cv.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "cv.edu"
replace HS_beh18   = 0  if rootdom0 == "cv.edu"
replace SEX18      = 0  if rootdom0 == "cv.edu"
replace COL_beh18  = 1  if rootdom0 == "cv.edu"
replace CRIM_Inf18 = 0  if rootdom1 == "cv.edu"
replace HS_beh18   = 0  if rootdom1 == "cv.edu"
replace SEX18      = 0  if rootdom1 == "cv.edu"
replace COL_beh18  = 1  if rootdom1 == "cv.edu"

replace isApp = .e  if rootdom0 == "dacc.edu"
replace isApp = .e  if rootdom1 == "dacc.edu"
replace isApp = .e  if rootdom2 == "dacc.edu"

replace isApp = 0  if rootdom0 == "darton.edu"
replace isApp = 0  if rootdom1 == "darton.edu"


replace isApp = .e  if rootdom0 == "daytona.edu"
replace isApp = .e  if rootdom1 == "daytona.edu"
replace isApp = .e  if rootdom2 == "daytona.edu"


replace isApp = 1  if rootdom0 == "DaytonaState.edu"
replace isApp = .o  if rootdom1 == "DaytonaState.edu"
replace isApp = 0  if rootdom2 == "DaytonaState.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "DaytonaState.edu"
replace HS_beh18   = 0  if rootdom0 == "DaytonaState.edu"
replace SEX18      = 0  if rootdom0 == "DaytonaState.edu"
replace COL_beh18  = 0  if rootdom0 == "DaytonaState.edu"

replace isApp = 1  if rootdom0 == "dbq.edu"
replace isApp = 1  if rootdom1 == "dbq.edu"
replace isApp = 0  if rootdom2 == "dbq.edu"
replace CRIM_Inf18 = 1  if rootdom0 == "dbq.edu"
replace HS_beh18   = 1  if rootdom0 == "dbq.edu"
replace SEX18      = 0  if rootdom0 == "dbq.edu"
replace COL_beh18  = 1  if rootdom0 == "dbq.edu"
replace CRIM_Inf18 = 1  if rootdom1 == "dbq.edu"
replace HS_beh18   = 0  if rootdom1 == "dbq.edu"
replace SEX18      = 0  if rootdom1 == "dbq.edu"
replace COL_beh18  = 1  if rootdom1 == "dbq.edu"

replace isApp = 0  if rootdom0 == "dc3.edu"
replace isApp = 0  if rootdom1 == "dc3.edu"
replace isApp = 0  if rootdom2 == "dc3.edu"

replace isApp = .o  if rootdom0 == "depaul.edu"
replace isApp = 0  if rootdom1 == "depaul.edu"
replace isApp = 0  if rootdom2 == "depaul.edu"


replace isApp = 1  if rootdom0 == "depauw.edu"
replace isApp = .o  if rootdom1 == "depauw.edu"
replace isApp = 0  if rootdom2 == "depauw.edu"
replace CRIM_Inf18 = 1  if rootdom0 == "depauw.edu"
replace HS_beh18   = 1  if rootdom0 == "depauw.edu"
replace SEX18      = 0  if rootdom0 == "depauw.edu"
replace COL_beh18  = 1  if rootdom0 == "depauw.edu"

replace isApp = 0  if rootdom0 == "desu.edu"
replace isApp = 0  if rootdom1 == "desu.edu"
replace isApp = 0  if rootdom2 == "desu.edu"


replace isApp = .e  if rootdom0 == "dhs.edu"
replace isApp = .e  if rootdom1 == "dhs.edu"
replace isApp = .e  if rootdom2 == "dhs.edu"


replace isApp = .o  if rootdom0 == "dillard.edu"
replace isApp = 1  if rootdom1 == "dillard.edu"
replace isApp = 1  if rootdom2 == "dillard.edu"
replace CRIM_Inf18 = 1  if rootdom1 == "dillard.edu"
replace HS_beh18   = 0  if rootdom1 == "dillard.edu"
replace SEX18      = 0  if rootdom1 == "dillard.edu"
replace COL_beh18  = 1  if rootdom1 == "dillard.edu"
replace CRIM_Inf18 = 1  if rootdom2 == "dillard.edu"
replace HS_beh18   = 0  if rootdom2 == "dillard.edu"
replace SEX18      = 0  if rootdom2 == "dillard.edu"
replace COL_beh18  = 1  if rootdom2 == "dillard.edu"


replace isApp = 1  if rootdom0 == "dmacc.edu"
replace isApp = .o  if rootdom1 == "dmacc.edu"
replace isApp = 0  if rootdom2 == "dmacc.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "dmacc.edu"
replace HS_beh18   = 0  if rootdom0 == "dmacc.edu"
replace SEX18      = 0  if rootdom0 == "dmacc.edu"
replace COL_beh18  = 0  if rootdom0 == "dmacc.edu"

replace isApp = 1  if rootdom0 == "dmtc.edu"
replace isApp = 0  if rootdom1 == "dmtc.edu"
replace isApp = 0  if rootdom2 == "dmtc.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "dmtc.edu"
replace HS_beh18   = 0  if rootdom0 == "dmtc.edu"
replace SEX18      = 0  if rootdom0 == "dmtc.edu"
replace COL_beh18  = 0  if rootdom0 == "dmtc.edu"

replace isApp = 0  if rootdom0 == "dmu.edu"
replace isApp = 0  if rootdom1 == "dmu.edu"
replace isApp = 0  if rootdom2 == "dmu.edu"


replace isApp = .o  if rootdom0 == "dom.edu"
replace isApp = .o  if rootdom1 == "dom.edu"
replace isApp = .o  if rootdom2 == "dom.edu"


replace isApp = .o  if rootdom0 == "donnelly.edu"
replace isApp = 0  if rootdom1 == "donnelly.edu"
replace isApp = 0  if rootdom2 == "donnelly.edu"


replace isApp = 1  if rootdom0 == "dordt.edu"
replace isApp = 0  if rootdom1 == "dordt.edu"
replace isApp = 0  if rootdom2 == "dordt.edu"
replace CRIM_Inf18 = 1  if rootdom0 == "dordt.edu"
replace HS_beh18   = 0  if rootdom0 == "dordt.edu"
replace SEX18      = 0  if rootdom0 == "dordt.edu"
replace COL_beh18  = 0  if rootdom0 == "dordt.edu"

replace isApp = .o  if rootdom0 == "drake.edu"
replace isApp = 0  if rootdom1 == "drake.edu"
replace isApp = .o  if rootdom2 == "drake.edu"

replace isApp = 0  if rootdom0 == "drakestate.edu"
replace isApp = 0  if rootdom1 == "drakestate.edu"
replace isApp = 0  if rootdom2 == "drakestate.edu"


replace isApp = .o  if rootdom0 == "du.edu"
replace isApp = .o  if rootdom1 == "du.edu"
replace isApp = .o  if rootdom2 == "du.edu"

replace isApp = 0  if rootdom0 == "dwci.edu"
replace isApp = 0  if rootdom1 == "dwci.edu"
replace isApp = 0  if rootdom2 == "dwci.edu"


replace isApp = 1  if rootdom0 == "earlham.edu"
replace isApp = 0  if rootdom1 == "earlham.edu"
replace isApp = 0  if rootdom2 == "earlham.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "earlham.edu"
replace HS_beh18   = 0  if rootdom0 == "earlham.edu"
replace SEX18      = 0  if rootdom0 == "earlham.edu"
replace COL_beh18  = 0  if rootdom0 == "earlham.edu"

replace isApp = 0  if rootdom0 == "easternct.edu"
replace isApp = 0  if rootdom1 == "easternct.edu"
replace isApp = 1  if rootdom2 == "easternct.edu"
replace CRIM_Inf18 = 1  if rootdom2 == "easternct.edu"
replace HS_beh18   = 0  if rootdom2 == "easternct.edu"
replace SEX18      = 0  if rootdom2 == "easternct.edu"
replace COL_beh18  = 1  if rootdom2 == "easternct.edu"

replace isApp = 0  if rootdom0 == "easternflorida.edu"
replace isApp = 0  if rootdom1 == "easternflorida.edu"
replace isApp = 1  if rootdom2 == "easternflorida.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "easternflorida.edu"
replace HS_beh18   = 0  if rootdom0 == "easternflorida.edu"
replace SEX18      = 0  if rootdom0 == "easternflorida.edu"
replace COL_beh18  = 0  if rootdom0 == "easternflorida.edu"

replace isApp = 0  if rootdom0 == "eastwest.edu"
replace isApp = 0  if rootdom1 == "eastwest.edu"
replace isApp = 0  if rootdom2 == "eastwest.edu"


replace isApp = 1  if rootdom0 == "ec.edu"
replace isApp = 1  if rootdom1 == "ec.edu"
replace isApp = 1  if rootdom2 == "ec.edu"
replace CRIM_Inf18 = 1  if rootdom0 == "ec.edu"
replace HS_beh18   = 1  if rootdom0 == "ec.edu"
replace SEX18      = 0  if rootdom0 == "ec.edu"
replace COL_beh18  = 1  if rootdom0 == "ec.edu"
replace CRIM_Inf18 = 1  if rootdom1 == "ec.edu"
replace HS_beh18   = 1  if rootdom1 == "ec.edu"
replace SEX18      = 0  if rootdom1 == "ec.edu"
replace COL_beh18  = 1  if rootdom1 == "ec.edu"
replace CRIM_Inf18 = 1  if rootdom2 == "ec.edu"
replace HS_beh18   = 1  if rootdom2 == "ec.edu"
replace SEX18      = 0  if rootdom2 == "ec.edu"
replace COL_beh18  = 1  if rootdom2 == "ec.edu"

replace isApp = 1  if rootdom0 == "ecc.edu" // how to code name ecc or ecc.iavalley?
replace isApp = 0  if rootdom1 == "template.edu"

replace CRIM_Inf18 = 0  if rootdom0 == "template.edu"
replace HS_beh18   = 0  if rootdom0 == "template.edu"
replace SEX18      = 0  if rootdom0 == "template.edu"
replace COL_beh18  = 0  if rootdom0 == "template.edu"

replace isApp = 0  if rootdom0 == "eckerd.edu"
replace isApp = 0  if rootdom1 == "eckerd.edu"
replace isApp = 1  if rootdom2 == "eckerd.edu"
replace CRIM_Inf18 = 1  if rootdom2 == "eckerd.edu"
replace HS_beh18   = 1  if rootdom2 == "eckerd.edu"
replace SEX18      = 0  if rootdom2 == "eckerd.edu"
replace COL_beh18  = 1  if rootdom2 == "eckerd.edu"

//missing
replace isApp = 0  if rootdom1 == "ega.edu"
replace isApp = 0  if rootdom2 == "ega.edu"

replace isApp = 0  if rootdom0 == "eicc.edu"
replace isApp = 0  if rootdom1 == "eicc.edu"
replace isApp = .o  if rootdom2 == "eicc.edu"


replace isApp = 1  if rootdom0 == "eitc.edu"
replace isApp = 1  if rootdom1 == "eitc.edu"
replace isApp = 0  if rootdom2 == "eitc.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "eitc.edu"
replace HS_beh18   = 0  if rootdom0 == "eitc.edu"
replace SEX18      = 0  if rootdom0 == "eitc.edu"
replace COL_beh18  = 0  if rootdom0 == "eitc.edu"
replace CRIM_Inf18 = 0  if rootdom1 == "eitc.edu"
replace HS_beh18   = 0  if rootdom1 == "eitc.edu"
replace SEX18      = 0  if rootdom1 == "eitc.edu"
replace COL_beh18  = 0  if rootdom1 == "eitc.edu"

replace isApp = 1  if rootdom0 == "eiu.edu"
replace isApp = .o  if rootdom1 == "eiu.edu"
replace isApp = .o  if rootdom2 == "eiu.edu"
replace CRIM_Inf18 = 1  if rootdom0 == "eiu.edu"
replace HS_beh18   = 0  if rootdom0 == "eiu.edu"
replace SEX18      = 0  if rootdom0 == "eiu.edu"
replace COL_beh18  = 0  if rootdom0 == "eiu.edu"

replace isApp = .n  if rootdom0 == "eku.edu" // application update??
replace isApp = 1  if rootdom1 == "template.edu"
replace isApp = 0  if rootdom2 == "template.edu"
replace CRIM_Inf18 = __  if rootdom0 == "template.edu"
replace HS_beh18   = __  if rootdom0 == "template.edu"
replace SEX18      = __  if rootdom0 == "template.edu"
replace COL_beh18  = __  if rootdom0 == "template.edu"

replace isApp = 0  if rootdom0 == "elgin.edu"
replace isApp = 0  if rootdom1 == "elgin.edu"
replace isApp = 0  if rootdom2 == "elgin.edu"


replace isApp = 1  if rootdom0 == "elizabethtown.kcts.edu" // naming convention
replace isApp = 0  if rootdom1 == "template.edu"
replace isApp = 0  if rootdom2 == "template.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "template.edu"
replace HS_beh18   = 0  if rootdom0 == "template.edu"
replace SEX18      = 0  if rootdom0 == "template.edu"
replace COL_beh18  = 0  if rootdom0 == "template.edu"

replace isApp = 0  if rootdom0 == "elmhurst.edu"
replace isApp = 0  if rootdom1 == "elmhurst.edu"
replace isApp = 1  if rootdom2 == "elmhurst.edu"
replace CRIM_Inf18 = 0  if rootdom2 == "elmhurst.edu"
replace HS_beh18   = 0  if rootdom2 == "elmhurst.edu"
replace SEX18      = 0  if rootdom2 == "elmhurst.edu"
replace COL_beh18  = 0  if rootdom2 == "elmhurst.edu"

replace isApp = 1  if rootdom0 == "emcc.edu"
replace isApp = .o  if rootdom1 == "emcc.edu"
replace isApp = 0  if rootdom2 == "emcc.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "emcc.edu"
replace HS_beh18   = 0  if rootdom0 == "emcc.edu"
replace SEX18      = 0  if rootdom0 == "emcc.edu"
replace COL_beh18  = 0  if rootdom0 == "emcc.edu"

replace isApp = 0  if rootdom0 == "emmaus.edu"
replace isApp = 0  if rootdom1 == "emmaus.edu"
replace isApp = 0  if rootdom2 == "emmaus.edu"


replace isApp = 0  if rootdom0 == "emory.edu"
replace isApp = .o  if rootdom1 == "emory.edu"
replace isApp = .o  if rootdom2 == "emory.edu"


replace isApp = 1  if rootdom0 == "emporia.edu"
replace isApp = 0  if rootdom1 == "emporia.edu"
replace isApp = .o  if rootdom2 == "emporia.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "emporia.edu"
replace HS_beh18   = 0  if rootdom0 == "emporia.edu"
replace SEX18      = 0  if rootdom0 == "emporia.edu"
replace COL_beh18  = 0  if rootdom0 == "emporia.edu"

replace isApp = 1  if rootdom0 == "escc.edu"
replace isApp = 0  if rootdom1 == "escc.edu"
replace isApp = 0  if rootdom2 == "escc.edu"
replace CRIM_Inf18 = 0  if rootdom0 == "escc.edu"
replace HS_beh18   = 0  if rootdom0 == "escc.edu"
replace SEX18      = 0  if rootdom0 == "escc.edu"
replace COL_beh18  = 1  if rootdom0 == "escc.edu"

replace isApp = .e  if rootdom0 == "eureka.edu"
replace isApp = .e  if rootdom1 == "eureka.edu"
replace isApp = .e  if rootdom2 == "eureka.edu"


replace isApp = 1  if rootdom0 == "evansville.edu"
replace isApp = .o  if rootdom1 == "template.edu"
replace isApp = 0  if rootdom2 == "template.edu"
replace CRIM_Inf18 = .n  if rootdom0 == "template.edu" 
replace HS_beh18   = __  if rootdom0 == "template.edu"
replace SEX18      = __  if rootdom0 == "template.edu"
replace COL_beh18  = 1  if rootdom0 == "template.edu"

replace isApp = .o  if rootdom0 == "ewc.edu"
replace isApp = 0  if rootdom1 == "ewc.edu"
replace isApp = 0  if rootdom2 == "ewc.edu"


replace isApp = __  if rootdom0 == "template.edu"
replace isApp = __  if rootdom1 == "template.edu"
replace isApp = __  if rootdom2 == "template.edu"
replace CRIM_Inf18 = __  if rootdom0 == "template.edu"
replace HS_beh18   = __  if rootdom0 == "template.edu"
replace SEX18      = __  if rootdom0 == "template.edu"
replace COL_beh18  = __  if rootdom0 == "template.edu"

replace isApp = __  if rootdom0 == "template.edu"
replace isApp = __  if rootdom1 == "template.edu"
replace isApp = __  if rootdom2 == "template.edu"
replace CRIM_Inf18 = __  if rootdom0 == "template.edu"
replace HS_beh18   = __  if rootdom0 == "template.edu"
replace SEX18      = __  if rootdom0 == "template.edu"
replace COL_beh18  = __  if rootdom0 == "template.edu"

replace isApp = __  if rootdom0 == "template.edu"
replace isApp = __  if rootdom1 == "template.edu"
replace isApp = __  if rootdom2 == "template.edu"
replace CRIM_Inf18 = __  if rootdom0 == "template.edu"
replace HS_beh18   = __  if rootdom0 == "template.edu"
replace SEX18      = __  if rootdom0 == "template.edu"
replace COL_beh18  = __  if rootdom0 == "template.edu"



