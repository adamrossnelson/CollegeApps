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
//    .e = Error in file (notpdf)   .o = App, but not general UG Application; insert comment indicating type of application
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

replace isApp = 1  if rootdom == "aacc.edu0"
replace isApp = 0  if rootdom == "aacc.edu1"
replace isApp = .o if rootdom == "aacc.edu2"
replace CRIM_Inf18 = 1 if rootdom == "aacc.edu0"
replace HS_beh18   = 0 if rootdom == "aacc.edu0"
replace SEX18      = 0 if rootdom == "aacc.edu0"
replace COL_beh18  = 1 if rootdom == "aacc.edu0"


replace isApp = 1  if rootdom == "aamu.edu0"
replace isApp = .d if rootdom == "aamu.edu1"
replace isApp = 0  if rootdom == "aamu.edu2"
replace CRIM_Inf18 = 1 if rootdom == "aamu.edu0"
replace HS_beh18   = 0 if rootdom == "aamu.edu0"
replace SEX18      = 0 if rootdom == "aamu.edu0"
replace COL_beh18  = 0 if rootdom == "aamu.edu0"


replace isApp = 0  if rootdom == "abac.edu0"
replace isApp = 0  if rootdom == "abac.edu1"
replace isApp = 0  if rootdom == "abac.edu2"


replace isApp = 0  if rootdom == "adler.edu0"
replace isApp = 0  if rootdom == "adler.edu1"
replace isApp = 0  if rootdom == "adler.edu2"




replace isApp = 0  if rootdom == "adu.edu0"
replace isApp = 0  if rootdom == "adu.edu1"
replace isApp = 0  if rootdom == "adu.edu2"


replace isApp = .e  if rootdom == "agnesscott.edu0"
replace isApp = .o  if rootdom == "agnesscott.edu1"
replace isApp = .o  if rootdom == "agnesscott.edu2"


replace isApp = .o  if rootdom == "aic.edu0"
replace isApp = .o  if rootdom == "aic.edu1"
replace isApp = 0  if rootdom == "aic.edu2"


replace isApp = 1  if rootdom == "aicusa.edu0"
replace isApp = .o  if rootdom == "aicusa.edu1"
replace isApp = 0  if rootdom == "aicusa.edu2"
replace CRIM_Inf18 = 1  if rootdom == "aicusa.edu0"
replace HS_beh18   = 1  if rootdom == "aicusa.edu0"
replace SEX18      = 0  if rootdom == "aicusa.edu0"
replace COL_beh18  = 1  if rootdom == "aicusa.edu0"


replace isApp = 1  if rootdom == "alasu.edu0"
replace isApp = 0  if rootdom == "alasu.edu1"
replace isApp = 0  if rootdom == "alasu.edu2"
replace CRIM_Inf18 = 1  if rootdom == "alasu.edu0"
replace HS_beh18   = 0  if rootdom == "alasu.edu0"
replace SEX18      = 0  if rootdom == "alasu.edu0"
replace COL_beh18  = 0  if rootdom == "alasu.edu0"


replace isApp = 1  if rootdom == "albanytech.edu0"
replace isApp = .o  if rootdom == "albanytech.edu1"
replace isApp = .o  if rootdom == "albanytech.edu2"
replace CRIM_Inf18 = 0  if rootdom == "albanytech.edu0"
replace HS_beh18   = 0  if rootdom == "albanytech.edu0"
replace SEX18      = 0  if rootdom == "albanytech.edu0"
replace COL_beh18  = .a  if rootdom == "albanytech.edu0"


replace isApp = .o  if rootdom == "albertus.edu0"
replace isApp = 1  if rootdom == "albertus.edu1"
replace isApp = 1  if rootdom == "albertus.edu2"
replace CRIM_Inf18 = 1  if rootdom == "albertus.edu0"
replace HS_beh18   = 1  if rootdom == "albertus.edu0"
replace SEX18      = 0  if rootdom == "albertus.edu0"
replace COL_beh18  = 1  if rootdom == "albertus.edu0"


replace isApp = 0  if rootdom == "albizu.edu0"
replace isApp = 0  if rootdom == "albizu.edu1"
replace isApp = 0  if rootdom == "albizu.edu2"


replace isApp = .e  if rootdom == "alc.edu0"
replace isApp = .e  if rootdom == "alc.edu1"
replace isApp = .e  if rootdom == "alc.edu2"


replace isApp = 1  if rootdom == "allegany.edu0"
replace isApp = 0  if rootdom == "allegany.edu1"
replace isApp = 0  if rootdom == "allegany.edu2"
replace CRIM_Inf18 = 0  if rootdom == "allegany.edu0"
replace HS_beh18   = 0  if rootdom == "allegany.edu0"
replace SEX18      = 0  if rootdom == "allegany.edu0"
replace COL_beh18  = 1  if rootdom == "allegany.edu0"


replace isApp = 0  if rootdom == "allencc.edu0"
replace isApp = 0  if rootdom == "allencc.edu1"
replace isApp = .o  if rootdom == "allencc.edu2"


replace isApp = 0  if rootdom == "allencollege.edu0"
replace isApp = 0  if rootdom == "allencollege.edu1"
replace isApp = 0  if rootdom == "allencollege.edu2"


replace isApp = 0  if rootdom == "ambs.edu0"
replace isApp = 0  if rootdom == "ambs.edu1"
replace isApp = 0  if rootdom == "ambs.edu2"


replace isApp = .o  if rootdom == "amherst.edu0"
replace isApp = 0  if rootdom == "amherst.edu1"
replace isApp = 0  if rootdom == "amherst.edu2"


replace isApp = 0  if rootdom == "amridgeuniversity.edu0"
replace isApp = 0  if rootdom == "amridgeuniversity.edu1"
//didn't have a rootdom2"


replace isApp = 0  if rootdom == "ancilla.edu0"
replace isApp = 0  if rootdom == "ancilla.edu1"
replace isApp = 0  if rootdom == "ancilla.edu2"


replace isApp = 1  if rootdom == "anderson.edu0"
replace isApp = .o  if rootdom == "anderson.edu1"
replace isApp = 0  if rootdom == "anderson.edu2"
replace CRIM_Inf18 = 1  if rootdom == "anderson.edu0"
replace HS_beh18   = 0  if rootdom == "anderson.edu0"
replace SEX18      = 0  if rootdom == "anderson.edu0"
replace COL_beh18  = 0  if rootdom == "anderson.edu0"


replace isApp = .o  if rootdom == "andrewcollege.edu0"
replace isApp = 1  if rootdom == "andrewcollege.edu1"
//didn't have a rootdom2"
replace CRIM_Inf18 = 1  if rootdom == "andrewcollege.edu0"
replace HS_beh18   = 0  if rootdom == "andrewcollege.edu0"
replace SEX18      = 0  if rootdom == "andrewcollege.edu0"
replace COL_beh18  = 0  if rootdom == "andrewcollege.edu0"


replace isApp = 1  if rootdom == "annamaria.edu0"
replace isApp = .o  if rootdom == "annamaria.edu1"
replace isApp = 0  if rootdom == "annamaria.edu2"
replace CRIM_Inf18 = 0  if rootdom == "annamaria.edu0"
replace HS_beh18   = 0  if rootdom == "annamaria.edu0"
replace SEX18      = 0  if rootdom == "annamaria.edu0"
replace COL_beh18  = 0  if rootdom == "annamaria.edu0"


replace isApp = .o  if rootdom == "ants.edu0"
replace isApp = 0  if rootdom == "ants.edu1"
replace isApp = 0  if rootdom == "ants.edu2"


replace isApp = 0  if rootdom == "arapahoe.edu0"
replace isApp = 0  if rootdom == "arapahoe.edu1"
//didn't have a rootdom2"


replace isApp = .o  if rootdom == "armstrong.edu0"
replace isApp = 0  if rootdom == "armstrong.edu1"
replace isApp = .o  if rootdom == "armstrong.edu2"


replace isApp = 1  if rootdom == "asbury.edu0"
replace isApp = .o  if rootdom == "asbury.edu1"
replace isApp = .o  if rootdom == "asbury.edu2"
replace CRIM_Inf18 = 0  if rootdom == "asbury.edu0"
replace HS_beh18   = 0  if rootdom == "asbury.edu0"
replace SEX18      = 0  if rootdom == "asbury.edu0"
replace COL_beh18  = 0  if rootdom == "asbury.edu0"


replace isApp = .o  if rootdom == "asburyseminary.edu0"
replace isApp = .o  if rootdom == "asburyseminary.edu1"
replace isApp = .o  if rootdom == "asburyseminary.edu2"


replace isApp = 1  if rootdom == "ascc.edu0"
replace isApp = 1  if rootdom == "ascc.edu1"
replace isApp = 0  if rootdom == "ascc.edu2"
replace CRIM_Inf18 = 0  if rootdom == "ascc.edu0"
replace HS_beh18   = 0  if rootdom == "ascc.edu0"
replace SEX18      = 0  if rootdom == "ascc.edu0"
replace COL_beh18  = 0  if rootdom == "ascc.edu0"


replace isApp = 0  if rootdom == "ashland.kctcs.edu0"
replace isApp = 0  if rootdom == "ashland.kctcs.edu1"
replace isApp = 0  if rootdom == "ashland.kctcs.edu2"


replace isApp = .o  if rootdom == "Asnuntuk.edu0"
replace isApp = 0  if rootdom == "Asnuntuk.edu1"
replace isApp = 0  if rootdom == "Asnuntuk.edu2"


replace isApp = 0  if rootdom == "assumption.edu0"
replace isApp = 0  if rootdom == "assumption.edu1"
replace isApp = 0  if rootdom == "assumption.edu2"


replace isApp = 0  if rootdom == "asurams.edu0"
replace isApp = 0  if rootdom == "asurams.edu1"
replace isApp = 0  if rootdom == "asurams.edu2"




replace isApp = 1  if rootdom == "athens.edu0"
replace isApp = .o  if rootdom == "athens.edu1"
replace isApp = 0  if rootdom == "athens.edu2"
replace CRIM_Inf18 = 0  if rootdom == "athens.edu0"
replace HS_beh18   = 0  if rootdom == "athens.edu0"
replace SEX18      = 0  if rootdom == "athens.edu0"
replace COL_beh18  = 0  if rootdom == "athens.edu0"


replace isApp = .o  if rootdom == "atlantatech.edu0"
replace isApp = 0  if rootdom == "atlantatech.edu1"
replace isApp = 0  if rootdom == "atlantatech.edu2"


replace isApp = .o  if rootdom == "atlantictechnicalcollege.edu0"
replace isApp = .o  if rootdom == "atlantictechnicalcollege.edu1"
replace isApp = 0  if rootdom == "atlantictechnicalcollege.edu2"


replace isApp = 1  if rootdom == "atlm.edu0"
replace isApp = 1  if rootdom == "atlm.edu1"
replace isApp = 0  if rootdom == "atlm.edu2"
replace CRIM_Inf18 = 0  if rootdom == "atlm.edu0"
replace HS_beh18   = 0  if rootdom == "atlm.edu0"
replace SEX18      = 0  if rootdom == "atlm.edu0"
replace COL_beh18  = 0  if rootdom == "atlm.edu0"
replace CRIM_Inf18 = 0  if rootdom == "atlm.edu1"
replace HS_beh18   = 0  if rootdom == "atlm.edu1"
replace SEX18      = 0  if rootdom == "atlm.edu1"
replace COL_beh18  = 0  if rootdom == "atlm.edu1"


replace isApp = 1  if rootdom == "auburn.edu0"
replace isApp = 0  if rootdom == "auburn.edu1"
replace isApp = 0  if rootdom == "auburn.edu2"
replace CRIM_Inf18 = 0  if rootdom == "auburn.edu0"
replace HS_beh18   = 0  if rootdom == "auburn.edu0"
replace SEX18      = 0  if rootdom == "auburn.edu0"
replace COL_beh18  = 0  if rootdom == "auburn.edu0"


replace isApp = 0  if rootdom == "augustana.edu0"
replace isApp = 0  if rootdom == "augustana.edu1"
replace isApp = 0  if rootdom == "augustana.edu2"


replace isApp = 1  if rootdom == "augustatech.edu0"
replace isApp =.e  if rootdom == "augustatech.edu1"
replace isApp = 0  if rootdom == "augustatech.edu2"
replace CRIM_Inf18 = 0  if rootdom == "augustatech.edu0"
replace HS_beh18   = 0  if rootdom == "augustatech.edu0"
replace SEX18      = 0  if rootdom == "augustatech.edu0"
replace COL_beh18  = 0  if rootdom == "augustatech.edu0"


replace isApp = 1  if rootdom == "aum.edu0"
replace isApp = 0  if rootdom == "aum.edu1"
replace isApp = .o  if rootdom == "aum.edu2"
replace CRIM_Inf18 = 0  if rootdom == "aum.edu0"
replace HS_beh18   = 0  if rootdom == "aum.edu0"
replace SEX18      = 0  if rootdom == "aum.edu0"
replace COL_beh18  = 0  if rootdom == "aum.edu0"


replace isApp = .o  if rootdom == "aurora.edu0"
replace isApp = 0  if rootdom == "aurora.edu1"
replace isApp = 0  if rootdom == "aurora.edu2"


replace isApp = 1  if rootdom == "bainbridge.edu0"
replace isApp = .o  if rootdom == "bainbridge.edu1"
replace isApp = 0  if rootdom == "bainbridge.edu2"
replace CRIM_Inf18 = 0  if rootdom == "bainbridge.edu0"
replace HS_beh18   = 0  if rootdom == "bainbridge.edu0"
replace SEX18      = 0  if rootdom == "bainbridge.edu0"
replace COL_beh18  = 0  if rootdom == "bainbridge.edu0"


replace isApp = .e  if rootdom == "bakeru.edu0"
replace isApp = .e  if rootdom == "bakeru.edu1"
replace isApp = .e  if rootdom == "bakeru.edu2"


replace isApp = .o  if rootdom == "baptistcollege.edu0"
replace isApp = 0  if rootdom == "baptistcollege.edu1"
replace isApp = 0  if rootdom == "baptistcollege.edu2"


replace isApp = .o  if rootdom == "barclaycollege.edu0"
replace isApp = 1  if rootdom == "barclaycollege.edu1"
replace isApp = 0  if rootdom == "barclaycollege.edu2"
replace CRIM_Inf18 = 0  if rootdom == "barclaycollege.edu0"
replace HS_beh18   = 0  if rootdom == "barclaycollege.edu0"
replace SEX18      = 0  if rootdom == "barclaycollege.edu0"
replace COL_beh18  = 0  if rootdom == "barclaycollege.edu0"


replace isApp = 1  if rootdom == "barry.edu0"
replace isApp = 0  if rootdom == "barry.edu1"
// didn't have rootdom2"
replace CRIM_Inf18 = 1  if rootdom == "barry.edu0"
replace HS_beh18   = 1  if rootdom == "barry.edu"  // Ask Adam about "have you been disciplined by a student/faculty judicial board for misconduct?0"
replace SEX18      = 0  if rootdom == "barry.edu0"
replace COL_beh18  = 1  if rootdom == "barry.edu0"


replace isApp = .o  if rootdom == "bartonccc.edu0"
replace isApp = 0  if rootdom == "bartonccc.edu1"
replace isApp = 0  if rootdom == "bartonccc.edu2"




replace isApp = 0  if rootdom == "bates.edu0"
replace isApp = 1  if rootdom == "bates.edu1"
replace isApp = 0  if rootdom == "bates.edu2"
replace CRIM_Inf18 = 0  if rootdom == "bates.edu1"
replace HS_beh18   = 0  if rootdom == "bates.edu1"
replace SEX18      = 0  if rootdom == "bates.edu1"
replace COL_beh18  = 0  if rootdom == "bates.edu1"


replace isApp = .o  if rootdom == "bccc.edu0"
replace isApp = .o  if rootdom == "bccc.edu1"
replace isApp = .o  if rootdom == "bccc.edu2"


replace isApp = 1  if rootdom == "bellarmine.edu0"
replace isApp = 0  if rootdom == "bellarmine.edu1"
replace isApp = 0  if rootdom == "bellarmine.edu2"
replace CRIM_Inf18 = 1  if rootdom == "bellarmine.edu0"
replace HS_beh18   = 1  if rootdom == "bellarmine.edu0"
replace SEX18      = 0  if rootdom == "bellarmine.edu0"
replace COL_beh18  = 1  if rootdom == "bellarmine.edu0"


replace isApp = __  if rootdom == "ben.edu0"
replace isApp = __  if rootdom == "ben.edu1"
replace isApp = __  if rootdom == "ben.edu2"
replace CRIM_Inf18 = __  if rootdom == "ben.edu0"
replace HS_beh18   = __  if rootdom == "ben.edu0"
replace SEX18      = __  if rootdom == "ben.edu0"
replace COL_beh18  = __  if rootdom == "ben.edu0"


replace isApp = .o  if rootdom == "benedictine.edu0"
replace isApp = .o  if rootdom == "benedictine.edu1"
replace isApp = .o  if rootdom == "benedictine.edu2"


replace isApp = .e  if rootdom == "berea.edu0"
replace isApp = .e  if rootdom == "berea.edu1"
replace isApp = .e  if rootdom == "berea.edu2"


replace isApp = .o  if rootdom == "berry.edu0"
replace isApp = .o  if rootdom == "berry.edu1"
replace isApp = .o  if rootdom == "berry.edu2"


replace isApp = .o  if rootdom == "bethanyseminary.edu0"
replace isApp = 0  if rootdom == "bethanyseminary.edu1"
replace isApp = 0  if rootdom == "bethanyseminary.edu2"


replace isApp = 1  if rootdom == "bethelcollege.edu0"
replace isApp = 1  if rootdom == "bethelcollege.edu1"
replace isApp = 0  if rootdom == "bethelcollege.edu2"
replace CRIM_Inf18 = 1  if rootdom == "bethelcollege.edu0"
replace HS_beh18   = 1  if rootdom == "bethelcollege.edu0"
replace SEX18      = 0  if rootdom == "bethelcollege.edu0"
replace COL_beh18  = 1  if rootdom == "bethelcollege.edu0"
replace CRIM_Inf18 = 1  if rootdom == "bethelcollege.edu1"
replace HS_beh18   = 1  if rootdom == "bethelcollege.edu1"
replace SEX18      = 0  if rootdom == "bethelcollege.edu1"
replace COL_beh18  = 1  if rootdom == "bethelcollege.edu1"


replace isApp = 1  if rootdom == "bethelks.edu0"
replace isApp = 0  if rootdom == "bethelks.edu1"
replace isApp = 0  if rootdom == "bethelks.edu2"
replace CRIM_Inf18 = 1  if rootdom == "bethelks.edu0"
replace HS_beh18   = 1  if rootdom == "bethelks.edu0"
replace SEX18      = 0  if rootdom == "bethelks.edu0"
replace COL_beh18  = 1  if rootdom == "bethelks.edu0"


replace isApp = .o  if rootdom == "beulah.edu0"
replace isApp = 0  if rootdom == "beulah.edu1"
replace isApp = 0  if rootdom == "beulah.edu2"


replace isApp = 1  if rootdom == "bhc.edu0"
replace isApp = .o  if rootdom ==  "bhc.edu1"
replace isApp = 0  if rootdom ==  "bhc.edu2"
replace CRIM_Inf18 = 0  if rootdom ==  "bhc.edu0"
replace HS_beh18   = 0  if rootdom ==  "bhc.edu0"
replace SEX18      = 0  if rootdom ==  "bhc.edu0"
replace COL_beh18  = 0  if rootdom == "bhc.edu0"


replace isApp = 0  if rootdom == "bigsandy.kctcs.edu0"
replace isApp = 0  if rootdom == "bigsandy.kctcs.edu1"
replace isApp = 0  if rootdom == "bigsandy.kctcs.edu2"


replace isApp = 1  if rootdom == "bishop.edu0"
replace isApp = .o  if rootdom == "bishop.edu1"
replace isApp = 0  if rootdom == "bishop.edu2"
replace CRIM_Inf18 = 0  if rootdom == "bishop.edu0"
replace HS_beh18   = 0  if rootdom == "bishop.edu0"
replace SEX18      = 0  if rootdom == "bishop.edu0"
replace COL_beh18  = 0  if rootdom == "bishop.edu0"


replace isApp = .o  if rootdom == "blackburn.edu0"
replace isApp = .o  if rootdom == "blackburn.edu1"
replace isApp = 1  if rootdom == "blackburn.edu2"
replace CRIM_Inf18 = 1  if rootdom == "blackburn.edu2"
replace HS_beh18   = 1  if rootdom == "blackburn.edu2"
replace SEX18      = 0  if rootdom == "blackburn.edu2"
replace COL_beh18  = 1  if rootdom == "blackburn.edu2"


replace isApp = 0  if rootdom == "bluegrass.edu0"
replace isApp = 0  if rootdom == "bluegrass.edu1"
replace isApp = 0  if rootdom == "bluegrass.edu2"


replace isApp = 0  if rootdom == "boisebible.edu0"
replace isApp = 0  if rootdom == "boisebible.edu1"
replace isApp = 0  if rootdom == "boisebible.edu2"


replace isApp = .o  if rootdom == "boisestate.edu0"
replace isApp = .o  if rootdom == "boisestate.edu1"
replace isApp = .o  if rootdom == "boisestate.edu2"


replace isApp = 0  if rootdom == "bowdoin.edu0"
replace isApp = 0  if rootdom == "bowdoin.edu1"
replace isApp = 0  if rootdom == "bowdoin.edu2"




replace isApp = .o  if rootdom == "bowiestate.edu0"
replace isApp = .o  if rootdom == "bowiestate.edu1"
replace isApp = .o  if rootdom == "bowiestate.edu2"


replace isApp = 0  if rootdom == "bpc.edu0"
replace isApp = 0  if rootdom == "bpc.edu1"
replace isApp = 0  if rootdom == "bpc.edu2"


replace isApp = 1  if rootdom == "bpcc.edu0"
replace isApp = 0  if rootdom == "bpcc.edu1"
replace isApp = 0  if rootdom == "bpcc.edu2"
replace CRIM_Inf18 = 0  if rootdom == "bpcc.edu0"
replace HS_beh18   = 0  if rootdom == "bpcc.edu0"
replace SEX18      = 0  if rootdom == "bpcc.edu0"
replace COL_beh18  = 1  if rootdom == "bpcc.edu0"


replace isApp = 1  if rootdom == "bradley.edu0"
replace isApp = .o  if rootdom == "bradley.edu1"
replace isApp = 1  if rootdom == "bradley.edu2"
replace CRIM_Inf18 = 1  if rootdom == "bradley.edu0"
replace HS_beh18   = 1  if rootdom == "bradley.edu0"
replace SEX18      = 0  if rootdom == "bradley.edu0"
replace COL_beh18  = 1  if rootdom == "bradley.edu0"
replace CRIM_Inf18 = 1  if rootdom == "bradley.edu2"
replace HS_beh18   = 1  if rootdom == "bradley.edu2"
replace SEX18      = 0  if rootdom == "bradley.edu2"
replace COL_beh18  = 1  if rootdom == "bradley.edu2"




replace isApp = 0  if rootdom == "brcn.edu0"
replace isApp = 0  if rootdom == "brcn.edu1"
replace isApp = 0  if rootdom == "brcn.edu2"


replace isApp = .e  if rootdom == "brenau.edu0"
replace isApp = .o  if rootdom == "brenau.edu1"
replace isApp = 0  if rootdom == "brenau.edu2"


replace isApp = 0  if rootdom == "brescia.edu0"
replace isApp = 0  if rootdom == "brescia.edu1"
replace isApp = .o  if rootdom == "brescia.edu2"




replace isApp = 0  if rootdom == "briarcliff.edu0"
replace isApp = 0  if rootdom == "briarcliff.edu1"
replace isApp = 0  if rootdom == "briarcliff.edu2"




replace isApp = .o  if rootdom == "bridgeport.edu0"
replace isApp = 1  if rootdom == "bridgeport.edu1"
//Missing rootdom2"
replace CRIM_Inf18 = 1  if rootdom == "bridgeport.edu1"
replace HS_beh18   = 1  if rootdom == "bridgeport.edu1"
replace SEX18      = 0  if rootdom == "bridgeport.edu1"
replace COL_beh18  = 1  if rootdom == "bridgeport.edu1"


replace isApp = 0  if rootdom == "broward.edu0"
replace isApp = 0  if rootdom == "broward.edu1"
replace isApp = 0  if rootdom == "broward.edu2"




replace isApp = 1  if rootdom == "bsc.edu0"
replace isApp = 0  if rootdom == "bsc.edu1"
replace isApp = 0  if rootdom == "bsc.edu2"
replace CRIM_Inf18 = 0  if rootdom == "bsc.edu0"
replace HS_beh18   = 1  if rootdom == "bsc.edu0"
replace SEX18      = 0  if rootdom == "bsc.edu0"
replace COL_beh18  = 1  if rootdom == "bsc.edu0"


replace isApp = 0  if rootdom == "bsu.edu0"
replace isApp = .e  if rootdom == "bsu.edu1"
replace isApp = .e  if rootdom == "bsu.edu2"




replace isApp = 0  if rootdom == "butc.edu0"
//Missing 





replace isApp = 0  if rootdom == "butler.edu0"
replace isApp = 0  if rootdom == "butler.edu1"
replace isApp = 0  if rootdom == "butler.edu2"




replace isApp = 1  if rootdom == "butlercc.edu0"
replace isApp = 0  if rootdom == "butlercc.edu1"
replace isApp = .o  if rootdom == "butlercc.edu2"




replace isApp = 0  if rootdom == "bvu.edu0"
replace isApp = 0  if rootdom == "bvu.edu1"
replace isApp = 0  if rootdom == "bvu.edu2"




replace isApp = 0  if rootdom == "byui.edu0"
replace isApp = .o  if rootdom == "byui.edu1"
replace isApp = .o  if rootdom == "byui.edu2"




replace isApp = 0  if rootdom == "cacc.edu0"
replace isApp = 0  if rootdom == "cacc.edu1"
replace isApp = .o  if rootdom == "cacc.edu2"




replace isApp = 1  if rootdom == "calhoun.edu0"
replace isApp = 0  if rootdom == "calhoun.edu1"
replace isApp = 0  if rootdom == "calhoun.edu2"
replace CRIM_Inf18 = 0  if rootdom == "calhoun.edu0"
replace HS_beh18   = 0  if rootdom == "calhoun.edu0"
replace SEX18      = 0  if rootdom == "calhoun.edu0"
replace COL_beh18  = 0  if rootdom == "calhoun.edu0"


replace isApp = 0  if rootdom == "campbellsville.edu0"
replace isApp = 0  if rootdom == "campbellsville.edu1"
replace isApp = 0  if rootdom == "campbellsville.edu2"




replace isApp = 1  if rootdom == "captechu.edu0"
replace isApp = .o  if rootdom == "captechu.edu1"
replace isApp = .o  if rootdom == "captechu.edu2"
replace CRIM_Inf18 = 0  if rootdom == "captechu.edu0"
replace HS_beh18   = 0  if rootdom == "captechu.edu0"
replace SEX18      = 0  if rootdom == "captechu.edu0"
replace COL_beh18  = 0  if rootdom == "captechu.edu0"


replace isApp = 1  if rootdom == "carver.edu0"
replace isApp = 1  if rootdom == "carver.edu1"
replace isApp = 0  if rootdom == "carver.edu2"
replace CRIM_Inf18 = 1  if rootdom == "carver.edu0" // 0"
replace HS_beh18   = 1  if rootdom == "carver.edu0"
replace SEX18      = 0  if rootdom == "carver.edu0"
replace COL_beh18  = 1  if rootdom == "carver.edu0"
replace CRIM_Inf18 = 1  if rootdom == "carver.edu1" // 1"
replace HS_beh18   = 1  if rootdom == "carver.edu1"
replace SEX18      = 0  if rootdom == "carver.edu1"
replace COL_beh18  = 1  if rootdom == "carver.edu1"


replace isApp = 1  if rootdom == "cau.edu0"
replace isApp = .o  if rootdom == "cau.edu1"
replace isApp = 0  if rootdom == "cau.edu2"
replace CRIM_Inf18 = 1  if rootdom == "cau.edu0"
replace HS_beh18   = 1  if rootdom == "cau.edu0"
replace SEX18      = 0  if rootdom == "cau.edu0"
replace COL_beh18  = 1  if rootdom == "cau.edu0"


replace isApp = 0  if rootdom == "cbts.edu0"
replace isApp = 1  if rootdom == "cbts.edu1"
replace isApp = 0  if rootdom == "cbts.edu2"
replace CRIM_Inf18 = 0  if rootdom == "cbts.edu0"
replace HS_beh18   = 0  if rootdom == "cbts.edu0"
replace SEX18      = 0  if rootdom == "cbts.edu0"
replace COL_beh18  = 0  if rootdom == "cbts.edu0"


replace isApp = 0  if rootdom == "ccal.edu0"
//Missing rootdom and rootdom21"




replace isApp = 0  if rootdom == "ccaurora.edu0"
replace isApp = 0  if rootdom == "ccaurora.edu1"
replace isApp = 0  if rootdom == "ccaurora.edu2"




replace isApp = 1  if rootdom == "ccbbc.edu0"
replace isApp = .e  if rootdom == "ccbbc.edu1"
replace isApp = 0  if rootdom == "ccbbc.edu2"
replace CRIM_Inf18 = 1  if rootdom == "ccbbc.edu0"
replace HS_beh18   = 0  if rootdom == "ccbbc.edu0"
replace SEX18      = 0  if rootdom == "ccbbc.edu0"
replace COL_beh18  = 0  if rootdom == "ccbbc.edu0"


replace isApp = .e  if rootdom == "ccc.commnet.edu0"
replace isApp = .e  if rootdom == "ccc.commnet.edu1"
replace isApp = .e  if rootdom == "ccc.commnet.edu2"




replace isApp = 0  if rootdom == "ccd.edu0"
replace isApp = 0  if rootdom == "ccd.edu1"
replace isApp = 0  if rootdom == "ccd.edu2"




replace isApp = 0  if rootdom == "ccga.edu0"
replace isApp = 0  if rootdom == "ccga.edu1"
replace isApp = 0  if rootdom == "ccga.edu2"


replace isApp = 1  if rootdom == "ccsj.edu0"
replace isApp = .o  if rootdom == "ccsj.edu1"
replace isApp = 0  if rootdom == "ccsj.edu2"
replace CRIM_Inf18 = 0  if rootdom == "ccsj.edu0"
replace HS_beh18   = 0  if rootdom == "ccsj.edu0"
replace SEX18      = 0  if rootdom == "ccsj.edu0"
replace COL_beh18  = 0  if rootdom == "ccsj.edu0"


replace isApp = 0  if rootdom == "ccsu.edu0"
replace isApp = 0  if rootdom == "ccsu.edu1"
replace isApp = 0  if rootdom == "ccsu.edu2"


replace isApp = 0  if rootdom == "cecil.edu0"
replace isApp = 0  if rootdom == "cecil.edu1"
replace isApp = 0  if rootdom == "cecil.edu2"


replace isApp = .o  if rootdom == "centenary.edu0"
replace isApp = 1  if rootdom == "centenary.edu1"
replace isApp = 0  if rootdom == "centenary.edu2"
replace CRIM_Inf18 = 1  if rootdom == "centenary.edu1"
replace HS_beh18   = 1  if rootdom == "centenary.edu1"
replace SEX18      = 0  if rootdom == "centenary.edu1"
replace COL_beh18  = 0  if rootdom == "centenary.edu1"


replace isApp = 0  if rootdom == "central.edu0"
replace isApp = 0  if rootdom == "central.edu1"
replace isApp = 0  if rootdom == "central.edu2"




replace isApp = .o  if rootdom == "centralchristian.edu0"
replace isApp = .o  if rootdom == "centralchristian.edu1"
replace isApp = 0  if rootdom == "centralchristian.edu2"




replace isApp = 0  if rootdom == "centre.edu0"
replace isApp = 0  if rootdom == "centre.edu1"
replace isApp = 0  if rootdom == "centre.edu2"




replace isApp = 0  if rootdom == "cf.edu0"
replace isApp = .o  if rootdom == "cf.edu1"
replace isApp = 0  if rootdom == "cf.edu2"


replace isApp = 0  if rootdom == "chaminade.edu0"
replace isApp = 0  if rootdom == "chaminade.edu1"
replace isApp = 0  if rootdom == "chaminade.edu2"




replace isApp = 0  if rootdom == "charteroak.edu0"
replace isApp = 0  if rootdom == "charteroak.edu1"
replace isApp = 0  if rootdom == "charteroak.edu2"


replace isApp = 1  if rootdom == "chattahoocheetech.edu0"
replace isApp = 0  if rootdom == "chattahoocheetech.edu1"
replace isApp = 1  if rootdom == "chattahoocheetech.edu2"
replace CRIM_Inf18 = 0  if rootdom == "chattahoocheetech.edu0"
replace HS_beh18   = 0  if rootdom == "chattahoocheetech.edu0"
replace SEX18      = 0  if rootdom == "chattahoocheetech.edu0"
replace COL_beh18  = 0  if rootdom == "chattahoocheetech.edu0"
replace CRIM_Inf18 = 0  if rootdom == "chattahoocheetech.edu2"
replace HS_beh18   = 0  if rootdom == "chattahoocheetech.edu2"
replace SEX18      = 0  if rootdom == "chattahoocheetech.edu2"
replace COL_beh18  = 0  if rootdom == "chattahoocheetech.edu2"




replace isApp = 0  if rootdom == "chesapeake.edu0"
replace isApp = 0  if rootdom == "chesapeake.edu1"
replace isApp = 0  if rootdom == "chesapeake.edu2"




replace isApp = 1  if rootdom == "chipola.edu0"
replace isApp = 1  if rootdom == "chipola.edu1"
replace isApp = 0  if rootdom == "chipola.edu2"
replace CRIM_Inf18 = 1  if rootdom == "chipola.edu0"
replace HS_beh18   = 1  if rootdom == "chipola.edu0"
replace SEX18      = 0  if rootdom == "chipola.edu0"
replace COL_beh18  = 1  if rootdom == "chipola.edu0"
replace CRIM_Inf18 = 1  if rootdom == "chipola.edu1"
replace HS_beh18   = 1  if rootdom == "chipola.edu1"
replace SEX18      = 0  if rootdom == "chipola.edu1"
replace COL_beh18  = 1  if rootdom == "chipola.edu1"


replace isApp = .o  if rootdom == "clarke.edu0"
replace isApp = 0  if rootdom == "clarke.edu1"
replace isApp = 0  if rootdom == "clarke.edu2"


replace isApp = 1  if rootdom == "clayton.edu0"
replace isApp = 0  if rootdom == "clayton.edu1"
replace isApp = 1  if rootdom == "clayton.edu2"
replace CRIM_Inf18 = 1  if rootdom == "clayton.edu0"
replace HS_beh18   = 1  if rootdom == "clayton.edu0"
replace SEX18      = 0  if rootdom == "clayton.edu0"
replace COL_beh18  = 1  if rootdom == "clayton.edu0"
replace CRIM_Inf18 = 1  if rootdom == "clayton.edu1"
replace HS_beh18   = 1  if rootdom == "clayton.edu1"
replace SEX18      = 0  if rootdom == "clayton.edu1"
replace COL_beh18  = 1  if rootdom == "clayton.edu1"


replace isApp = 0  if rootdom == "cloud.edu0"
replace isApp = 0  if rootdom == "cloud.edu1"
replace isApp = 0  if rootdom == "cloud.edu2"




replace isApp = 0  if rootdom == "cltcc.edu0"
replace isApp = 0  if rootdom == "cltcc.edu1"
replace isApp = 0  if rootdom == "cltcc.edu2"




replace isApp = 0  if rootdom == "cmcc.edu0"
replace isApp = 0  if rootdom == "cmcc.edu1"
replace isApp = 0  if rootdom == "cmcc.edu2"




replace isApp = .o  if rootdom == "cncc.edu0"
replace isApp = .o  if rootdom == "cncc.edu1"
replace isApp = .o  if rootdom == "cncc.edu2"




replace isApp = .o  if rootdom == "coa.edu0"
replace isApp = .o  if rootdom == "coa.edu1"
replace isApp = 0  if rootdom == "coa.edu2"




replace isApp = .o  if rootdom == "cod.edu0"
replace isApp = .o  if rootdom == "cod.edu1"
replace isApp = 0  if rootdom == "cod.edu2"


replace isApp = 1  if rootdom == "coe.edu0"
replace isApp = 1  if rootdom == "coe.edu1"
replace isApp = 0  if rootdom == "coe.edu2"
replace CRIM_Inf18 = 0  if rootdom == "coe.edu0"
replace HS_beh18   = 0  if rootdom == "coe.edu0"
replace SEX18      = 0  if rootdom == "coe.edu0"
replace COL_beh18  = 0  if rootdom == "coe.edu0"
replace CRIM_Inf18 = 0  if rootdom == "coe.edu1"
replace HS_beh18   = 0  if rootdom == "coe.edu1"
replace SEX18      = 0  if rootdom == "coe.edu1"
replace COL_beh18  = 0  if rootdom == "coe.edu1"






replace isApp = .o  if rootdom == "coffeyville.edu0"
replace isApp = 1  if rootdom == "coffeyville.edu1"
replace isApp = .e  if rootdom == "coffeyville.edu2"
replace CRIM_Inf18 = 0  if rootdom == "coffeyville.edu1"
replace HS_beh18   = 0  if rootdom == "coffeyville.edu1"
replace SEX18      = 0  if rootdom == "coffeyville.edu1"
replace COL_beh18  = 0  if rootdom == "coffeyville.edu1"


replace isApp = 0  if rootdom == "colby.edu0"
replace isApp = 0  if rootdom == "colby.edu1"
replace isApp = 0  if rootdom == "colby.edu2"




replace isApp = .o  if rootdom == "colbycc.edu0"
replace isApp = .o  if rootdom == "colbycc.edu1"
replace isApp = 0  if rootdom == "colbycc.edu2"




replace isApp = 0  if rootdom == "collegeamerica.edu0"
replace isApp = 0  if rootdom == "collegeamerica.edu1"
replace isApp = 0  if rootdom == "collegeamerica.edu2"


replace isApp = 0  if rootdom == "collegeofidaho.edu0"
replace isApp = 0  if rootdom == "collegeofidaho.edu1"
replace isApp = 0  if rootdom == "collegeofidaho.edu2"




replace isApp = 1  if rootdom == "colorado.edu0"
replace isApp = 0  if rootdom == "colorado.edu1"
replace isApp = .o  if rootdom == "colorado.edu2"
replace CRIM_Inf18 = 1  if rootdom == "colorado.edu0"
replace HS_beh18   = 1  if rootdom == "colorado.edu0"
replace SEX18      = 0  if rootdom == "colorado.edu0"
replace COL_beh18  = 1  if rootdom == "colorado.edu0"


replace isApp = .o  if rootdom == "coloradocollege.edu0"
replace isApp = .o  if rootdom == "coloradocollege.edu1"
replace isApp = 0  if rootdom == "coloradocollege.edu2"


replace isApp = 0  if rootdom == "coloradomesa.edu0"
replace isApp = 0  if rootdom == "coloradomesa.edu1"
replace isApp = 0  if rootdom == "coloradomesa.edu2"




replace isApp = .e  if rootdom == "coloradomtn.edu0"
replace isApp = .e  if rootdom == "coloradomtn.edu1"
replace isApp = .e  if rootdom == "coloradomtn.edu2"




replace isApp = .o  if rootdom == "colostate.edu0"
replace isApp = 0  if rootdom == "colostate.edu1"
replace isApp = .o  if rootdom == "colostate.edu2"


replace isApp = 0  if rootdom == "colum.edu0"
replace isApp = 0  if rootdom == "colum.edu1"
replace isApp = 0  if rootdom == "colum.edu2"


replace isApp = 1  if rootdom == "columbusstate.edu0"
replace isApp = .o  if rootdom == "columbusstate.edu1"
replace isApp = 0  if rootdom == "columbusstate.edu2"
replace CRIM_Inf18 = 1  if rootdom == "columbusstate.edu0"
replace HS_beh18   = 0  if rootdom == "columbusstate.edu0"
replace SEX18      = 0  if rootdom == "columbusstate.edu0"
replace COL_beh18  = 1  if rootdom == "columbusstate.edu0"


replace isApp = .o  if rootdom == "columbustech.edu0"
replace isApp = 1  if rootdom == "columbustech.edu1"
replace isApp = 0  if rootdom == "columbustech.edu2"
replace CRIM_Inf18 = 0  if rootdom == "columbustech.edu1"
replace HS_beh18   = 0  if rootdom == "columbustech.edu1"
replace SEX18      = 0  if rootdom == "columbustech.edu1"
replace COL_beh18  = 0  if rootdom == "columbustech.edu1"


replace isApp = 0  if rootdom == "conncoll.edu0"
replace isApp = .o  if rootdom == "conncoll.edu1"
replace isApp = .o  if rootdom == "conncoll.edu2"




replace isApp = 1  if rootdom == "cookman.edu0"
replace isApp = .o  if rootdom == "cookman.edu1"
//Missing 

replace CRIM_Inf18 = 0  if rootdom == "cookman.edu0"
replace HS_beh18   = 0  if rootdom == "cookman.edu0"
replace SEX18      = 0  if rootdom == "cookman.edu0"
replace COL_beh18  = 0  if rootdom == "cookman.edu0"


replace isApp = 0  if rootdom == "coppin.edu0"
replace isApp = 1  if rootdom == "coppin.edu1"
replace isApp = 0  if rootdom == "coppin.edu2"
replace CRIM_Inf18 = 0  if rootdom == "coppin.edu1"
replace HS_beh18   = 0  if rootdom == "coppin.edu1"
replace SEX18      = 0  if rootdom == "coppin.edu1"
replace COL_beh18  = 0  if rootdom == "coppin.edu1"


replace isApp = 0  if rootdom == "cornellcollege.edu0"
replace isApp = 0  if rootdom == "cornellcollege.edu1"
replace isApp = .o  if rootdom == "cornellcollege.edu2"




replace isApp = 1  if rootdom == "covenant.edu0"
replace isApp = .o  if rootdom == "covenant.edu1"
replace isApp = .o  if rootdom == "covenant.edu2"
replace CRIM_Inf18 = 0  if rootdom == "covenant.edu0"
replace HS_beh18   = 0  if rootdom == "covenant.edu0"
replace SEX18      = 0  if rootdom == "covenant.edu0"
replace COL_beh18  = 0  if rootdom == "covenant.edu0"


replace isApp = .o  if rootdom == "cowley.edu0"
replace isApp = 0  if rootdom == "cowley.edu1"
replace isApp = 0  if rootdom == "cowley.edu2"


replace isApp = 1  if rootdom == "csi.edu0"
replace isApp = 0  if rootdom == "csi.edu1"
replace isApp = .o  if rootdom == "csi.edu2"
replace CRIM_Inf18 = 0  if rootdom == "csi.edu0"
replace HS_beh18   = 0  if rootdom == "csi.edu0"
replace SEX18      = 0  if rootdom == "csi.edu0"
replace COL_beh18  = 0  if rootdom == "csi.edu0"


replace isApp = 0  if rootdom == "csmd.edu0"
replace isApp = 0  if rootdom == "csmd.edu1"
replace isApp = 0  if rootdom == "csmd.edu2"


replace isApp = 1  if rootdom == "csu.edu0"
replace isApp = .o  if rootdom == "csu.edu1"
replace isApp = 1  if rootdom == "csu.edu2"
replace CRIM_Inf18 = 0  if rootdom == "csu.edu0"
replace HS_beh18   = 0  if rootdom == "csu.edu0"
replace SEX18      = 0  if rootdom == "csu.edu0"
replace COL_beh18  = 0  if rootdom == "csu.edu0"
replace CRIM_Inf18 = 0  if rootdom == "csu.edu1"
replace HS_beh18   = 0  if rootdom == "csu.edu1"
replace SEX18      = 0  if rootdom == "csu.edu1"
replace COL_beh18  = 0  if rootdom == "csu.edu1"




replace isApp = 1  if rootdom == "csupueblo.edu0"
replace isApp = .o  if rootdom == "csupueblo.edu1"
replace isApp = .o  if rootdom == "csupueblo.edu2"
replace CRIM_Inf18 = 1  if rootdom == "csupueblo.edu0"
replace HS_beh18   = 1  if rootdom == "csupueblo.edu0"
replace SEX18      = 1  if rootdom == "csupueblo.edu0"
replace COL_beh18  = 1  if rootdom == "csupueblo.edu0"


replace isApp = 0  if rootdom == "cts.edu0"
replace isApp = 0  if rootdom == "cts.edu1"
replace isApp = 0  if rootdom == "cts.edu2"




replace isApp = 0  if rootdom == "ctschicago.edu0"
replace isApp = 0  if rootdom == "ctschicago.edu1"
replace isApp = 0  if rootdom == "ctschicago.edu2"




replace isApp = 0  if rootdom == "ctsfw.edu0"
replace isApp = .o  if rootdom == "ctsfw.edu1"
replace isApp = 0  if rootdom == "ctsfw.edu2"




replace isApp = .o  if rootdom == "ctu.edu0"
replace isApp = .o  if rootdom == "ctu.edu1"
//Missing rootdom2"




replace isApp = .o  if rootdom == "cua.edu" 0"
replace isApp = .o  if rootdom == "cua.edu" 1"
replace isApp = .o  if rootdom == "cua.edu2"




replace isApp = 1  if rootdom == "cv.edu0"
replace isApp = 1  if rootdom == "cv.edu1"
replace isApp = .o  if rootdom == "cv.edu2"
replace CRIM_Inf18 = 0  if rootdom == "cv.edu0"
replace HS_beh18   = 0  if rootdom == "cv.edu0"
replace SEX18      = 0  if rootdom == "cv.edu0"
replace COL_beh18  = 1  if rootdom == "cv.edu0"
replace CRIM_Inf18 = 0  if rootdom == "cv.edu1"
replace HS_beh18   = 0  if rootdom == "cv.edu1"
replace SEX18      = 0  if rootdom == "cv.edu1"
replace COL_beh18  = 1  if rootdom == "cv.edu1"


replace isApp = .e  if rootdom == "dacc.edu0"
replace isApp = .e  if rootdom == "dacc.edu1"
replace isApp = .e  if rootdom == "dacc.edu2"


replace isApp = 0  if rootdom == "darton.edu0"
replace isApp = 0  if rootdom == "darton.edu1"




replace isApp = .e  if rootdom == "daytona.edu0"
replace isApp = .e  if rootdom == "daytona.edu1"
replace isApp = .e  if rootdom == "daytona.edu2"




replace isApp = 1  if rootdom == "DaytonaState.edu0"
replace isApp = .o  if rootdom == "DaytonaState.edu1"
replace isApp = 0  if rootdom == "DaytonaState.edu2"
replace CRIM_Inf18 = 0  if rootdom == "DaytonaState.edu0"
replace HS_beh18   = 0  if rootdom == "DaytonaState.edu0"
replace SEX18      = 0  if rootdom == "DaytonaState.edu0"
replace COL_beh18  = 0  if rootdom == "DaytonaState.edu0"


replace isApp = 1  if rootdom == "dbq.edu0"
replace isApp = 1  if rootdom == "dbq.edu1"
replace isApp = 0  if rootdom == "dbq.edu2"
replace CRIM_Inf18 = 1  if rootdom == "dbq.edu0"
replace HS_beh18   = 1  if rootdom == "dbq.edu0"
replace SEX18      = 0  if rootdom == "dbq.edu0"
replace COL_beh18  = 1  if rootdom == "dbq.edu0"
replace CRIM_Inf18 = 1  if rootdom == "dbq.edu1"
replace HS_beh18   = 0  if rootdom == "dbq.edu1"
replace SEX18      = 0  if rootdom == "dbq.edu1"
replace COL_beh18  = 1  if rootdom == "dbq.edu1"


replace isApp = 0  if rootdom == "dc3.edu0"
replace isApp = 0  if rootdom == "dc3.edu1"
replace isApp = 0  if rootdom == "dc3.edu2"


replace isApp = .o  if rootdom == "depaul.edu0"
replace isApp = 0  if rootdom == "depaul.edu1"
replace isApp = 0  if rootdom == "depaul.edu2"




replace isApp = 1  if rootdom == "depauw.edu0"
replace isApp = .o  if rootdom == "depauw.edu1"
replace isApp = 0  if rootdom == "depauw.edu2"
replace CRIM_Inf18 = 1  if rootdom == "depauw.edu0"
replace HS_beh18   = 1  if rootdom == "depauw.edu0"
replace SEX18      = 0  if rootdom == "depauw.edu0"
replace COL_beh18  = 1  if rootdom == "depauw.edu0"


replace isApp = 0  if rootdom == "desu.edu0"
replace isApp = 0  if rootdom == "desu.edu1"
replace isApp = 0  if rootdom == "desu.edu2"




replace isApp = .e  if rootdom == "dhs.edu0"
replace isApp = .e  if rootdom == "dhs.edu1"
replace isApp = .e  if rootdom == "dhs.edu2"




replace isApp = .o  if rootdom == "dillard.edu0"
replace isApp = 1  if rootdom == "dillard.edu1"
replace isApp = 1  if rootdom == "dillard.edu2"
replace CRIM_Inf18 = 1  if rootdom == "dillard.edu1"
replace HS_beh18   = 0  if rootdom == "dillard.edu1"
replace SEX18      = 0  if rootdom == "dillard.edu1"
replace COL_beh18  = 1  if rootdom == "dillard.edu1"
replace CRIM_Inf18 = 1  if rootdom == "dillard.edu2"
replace HS_beh18   = 0  if rootdom == "dillard.edu2"
replace SEX18      = 0  if rootdom == "dillard.edu2"
replace COL_beh18  = 1  if rootdom == "dillard.edu2"




replace isApp = 1  if rootdom == "dmacc.edu0"
replace isApp = .o  if rootdom == "dmacc.edu1"
replace isApp = 0  if rootdom == "dmacc.edu2"
replace CRIM_Inf18 = 0  if rootdom == "dmacc.edu0"
replace HS_beh18   = 0  if rootdom == "dmacc.edu0"
replace SEX18      = 0  if rootdom == "dmacc.edu0"
replace COL_beh18  = 0  if rootdom == "dmacc.edu0"


replace isApp = 1  if rootdom == "dmtc.edu0"
replace isApp = 0  if rootdom == "dmtc.edu1"
replace isApp = 0  if rootdom == "dmtc.edu2"
replace CRIM_Inf18 = 0  if rootdom == "dmtc.edu0"
replace HS_beh18   = 0  if rootdom == "dmtc.edu0"
replace SEX18      = 0  if rootdom == "dmtc.edu0"
replace COL_beh18  = 0  if rootdom == "dmtc.edu0"


replace isApp = 0  if rootdom == "dmu.edu0"
replace isApp = 0  if rootdom == "dmu.edu1"
replace isApp = 0  if rootdom == "dmu.edu2"




replace isApp = .o  if rootdom == "dom.edu0"
replace isApp = .o  if rootdom == "dom.edu1"
replace isApp = .o  if rootdom == "dom.edu2"




replace isApp = .o  if rootdom == "donnelly.edu0"
replace isApp = 0  if rootdom == "donnelly.edu1"
replace isApp = 0  if rootdom == "donnelly.edu2"




replace isApp = 1  if rootdom == "dordt.edu0"
replace isApp = 0  if rootdom == "dordt.edu1"
replace isApp = 0  if rootdom == "dordt.edu2"
replace CRIM_Inf18 = 1  if rootdom == "dordt.edu0"
replace HS_beh18   = 0  if rootdom == "dordt.edu0"
replace SEX18      = 0  if rootdom == "dordt.edu0"
replace COL_beh18  = 0  if rootdom == "dordt.edu0"


replace isApp = .o  if rootdom == "drake.edu0"
replace isApp = 0  if rootdom == "drake.edu1"
replace isApp = .o  if rootdom == "drake.edu2"


replace isApp = 0  if rootdom == "drakestate.edu0"
replace isApp = 0  if rootdom == "drakestate.edu1"
replace isApp = 0  if rootdom == "drakestate.edu2"




replace isApp = .o  if rootdom == "du.edu0"
replace isApp = .o  if rootdom == "du.edu1"
replace isApp = .o  if rootdom == "du.edu2"


replace isApp = 0  if rootdom == "dwci.edu0"
replace isApp = 0  if rootdom == "dwci.edu1"
replace isApp = 0  if rootdom == "dwci.edu2"




replace isApp = 1  if rootdom == "earlham.edu0"
replace isApp = 0  if rootdom == "earlham.edu1"
replace isApp = 0  if rootdom == "earlham.edu2"
replace CRIM_Inf18 = 0  if rootdom == "earlham.edu0"
replace HS_beh18   = 0  if rootdom == "earlham.edu0"
replace SEX18      = 0  if rootdom == "earlham.edu0"
replace COL_beh18  = 0  if rootdom == "earlham.edu0"


replace isApp = 0  if rootdom == "easternct.edu0"
replace isApp = 0  if rootdom == "easternct.edu1"
replace isApp = 1  if rootdom == "easternct.edu2"
replace CRIM_Inf18 = 1  if rootdom == "easternct.edu2"
replace HS_beh18   = 0  if rootdom == "easternct.edu2"
replace SEX18      = 0  if rootdom == "easternct.edu2"
replace COL_beh18  = 1  if rootdom == "easternct.edu2"


replace isApp = 0  if rootdom == "easternflorida.edu0"
replace isApp = 0  if rootdom == "easternflorida.edu1"
replace isApp = 1  if rootdom == "easternflorida.edu2"
replace CRIM_Inf18 = 0  if rootdom == "easternflorida.edu0"
replace HS_beh18   = 0  if rootdom == "easternflorida.edu0"
replace SEX18      = 0  if rootdom == "easternflorida.edu0"
replace COL_beh18  = 0  if rootdom == "easternflorida.edu0"


replace isApp = 0  if rootdom == "eastwest.edu0"
replace isApp = 0  if rootdom == "eastwest.edu1"
replace isApp = 0  if rootdom == "eastwest.edu2"




replace isApp = 1  if rootdom == "ec.edu0"
replace isApp = 1  if rootdom == "ec.edu1"
replace isApp = 1  if rootdom == "ec.edu2"
replace CRIM_Inf18 = 1  if rootdom == "ec.edu0"
replace HS_beh18   = 1  if rootdom == "ec.edu0"
replace SEX18      = 0  if rootdom == "ec.edu0"
replace COL_beh18  = 1  if rootdom == "ec.edu0"
replace CRIM_Inf18 = 1  if rootdom == "ec.edu1"
replace HS_beh18   = 1  if rootdom == "ec.edu1"
replace SEX18      = 0  if rootdom == "ec.edu1"
replace COL_beh18  = 1  if rootdom == "ec.edu1"
replace CRIM_Inf18 = 1  if rootdom == "ec.edu2"
replace HS_beh18   = 1  if rootdom == "ec.edu2"
replace SEX18      = 0  if rootdom == "ec.edu2"
replace COL_beh18  = 1  if rootdom == "ec.edu2"


replace isApp = 1  if rootdom == "ecc.iavalley.edu" // how to code name ecc or ecc.iavalley?0"
replace isApp = 0  if rootdom == "ecc.iavalley.edu1"
replace CRIM_Inf18 = 0  if rootdom == "ecc.iavalley.edu0"
replace HS_beh18   = 0  if rootdom == "ecc.iavalley.edu0"
replace SEX18      = 0  if rootdom == "ecc.iavalley.edu0"
replace COL_beh18  = 0  if rootdom == "ecc.iavalley.edu0"




replace isApp = 0  if rootdom == "eckerd.edu0"
replace isApp = 0  if rootdom == "eckerd.edu1"
replace isApp = 1  if rootdom == "eckerd.edu2"
replace CRIM_Inf18 = 1  if rootdom == "eckerd.edu2"
replace HS_beh18   = 1  if rootdom == "eckerd.edu2"
replace SEX18      = 0  if rootdom == "eckerd.edu2"
replace COL_beh18  = 1  if rootdom == "eckerd.edu2"


//missing

replace isApp = 0  if rootdom == "ega.edu1"
replace isApp = 0  if rootdom == "ega.edu2"


replace isApp = 0  if rootdom == "eicc.edu0"
replace isApp = 0  if rootdom == "eicc.edu1"
replace isApp = .o  if rootdom == "eicc.edu2"




replace isApp = 1  if rootdom == "eitc.edu0"
replace isApp = 1  if rootdom == "eitc.edu1"
replace isApp = 0  if rootdom == "eitc.edu2"
replace CRIM_Inf18 = 0  if rootdom == "eitc.edu0"
replace HS_beh18   = 0  if rootdom == "eitc.edu0"
replace SEX18      = 0  if rootdom == "eitc.edu0"
replace COL_beh18  = 0  if rootdom == "eitc.edu0"
replace CRIM_Inf18 = 0  if rootdom == "eitc.edu1"
replace HS_beh18   = 0  if rootdom == "eitc.edu1"
replace SEX18      = 0  if rootdom == "eitc.edu1"
replace COL_beh18  = 0  if rootdom == "eitc.edu1"


replace isApp = 1  if rootdom == "eiu.edu0"
replace isApp = .o  if rootdom == "eiu.edu1"
replace isApp = .o  if rootdom == "eiu.edu2"
replace CRIM_Inf18 = 1  if rootdom == "eiu.edu0"
replace HS_beh18   = 0  if rootdom == "eiu.edu0"
replace SEX18      = 0  if rootdom == "eiu.edu0"
replace COL_beh18  = 0  if rootdom == "eiu.edu0"


replace isApp = .o  if rootdom == "eku.edu" // application update form0"
replace isApp = 1  if rootdom == "eku.edu" 1"
replace isApp = 0  if rootdom == "eku.edu" 2"
replace CRIM_Inf18 = 0  if rootdom == "eku.edu" 1"
replace HS_beh18   = 0  if rootdom == "eku.edu" 1"
replace SEX18      = 0  if rootdom == "eku.edu" 1"
replace COL_beh18  = 0  if rootdom == "eku.edu" 1"


replace isApp = 0  if rootdom == "elgin.edu0"
replace isApp = 0  if rootdom == "elgin.edu1"
replace isApp = 0  if rootdom == "elgin.edu2"




replace isApp = 1  if rootdom == "elizabethtown.kctcs.edu" 0"
replace isApp = 0  if rootdom == "elizabethtown.kctcs.edu1"
replace isApp = 0  if rootdom == "elizabethtown.kctcs.edu2"
replace CRIM_Inf18 = 0  if rootdom == "elizabethtown.kctcs.edu0"
replace HS_beh18   = 0  if rootdom == "elizabethtown.kctcs.edu0"
replace SEX18      = 0  if rootdom == "elizabethtown.kctcs.edu0"
replace COL_beh18  = 0  if rootdom == "elizabethtown.kctcs.edu0"


replace isApp = 0  if rootdom == "elmhurst.edu0"
replace isApp = 0  if rootdom == "elmhurst.edu1"
replace isApp = 1  if rootdom == "elmhurst.edu2"
replace CRIM_Inf18 = 0  if rootdom == "elmhurst.edu2"
replace HS_beh18   = 0  if rootdom == "elmhurst.edu2"
replace SEX18      = 0  if rootdom == "elmhurst.edu2"
replace COL_beh18  = 0  if rootdom == "elmhurst.edu2"


replace isApp = 1  if rootdom == "emcc.edu0"
replace isApp = .o  if rootdom == "emcc.edu1"
replace isApp = 0  if rootdom == "emcc.edu2"
replace CRIM_Inf18 = 0  if rootdom == "emcc.edu0"
replace HS_beh18   = 0  if rootdom == "emcc.edu0"
replace SEX18      = 0  if rootdom == "emcc.edu0"
replace COL_beh18  = 0  if rootdom == "emcc.edu0"


replace isApp = 0  if rootdom == "emmaus.edu0"
replace isApp = 0  if rootdom == "emmaus.edu1"
replace isApp = 0  if rootdom == "emmaus.edu2"




replace isApp = 0  if rootdom == "emory.edu0"
replace isApp = .o  if rootdom == "emory.edu1"
replace isApp = .o  if rootdom == "emory.edu2"




replace isApp = 1  if rootdom == "emporia.edu0"
replace isApp = 0  if rootdom == "emporia.edu1"
replace isApp = .o  if rootdom == "emporia.edu2"
replace CRIM_Inf18 = 0  if rootdom == "emporia.edu0"
replace HS_beh18   = 0  if rootdom == "emporia.edu0"
replace SEX18      = 0  if rootdom == "emporia.edu0"
replace COL_beh18  = 0  if rootdom == "emporia.edu0"


replace isApp = 1  if rootdom == "escc.edu0"
replace isApp = 0  if rootdom == "escc.edu1"
replace isApp = 0  if rootdom == "escc.edu2"
replace CRIM_Inf18 = 0  if rootdom == "escc.edu0"
replace HS_beh18   = 0  if rootdom == "escc.edu0"
replace SEX18      = 0  if rootdom == "escc.edu0"
replace COL_beh18  = 1  if rootdom == "escc.edu0"


replace isApp = .e  if rootdom == "eureka.edu0"
replace isApp = .e  if rootdom == "eureka.edu1"
replace isApp = .e  if rootdom == "eureka.edu2"




replace isApp = 1  if rootdom == "evansville.edu0"
replace isApp = .o  if rootdom == "evansville.edu" // Master of Public Health application 1"
replace isApp = 0  if rootdom == "evansville.edu2"
replace CRIM_Inf18 = 0  if rootdom == "evansville.edu0"
replace HS_beh18   = 0  if rootdom == "evansville.edu0"
replace SEX18      = 0  if rootdom == "evansville.edu0"
replace COL_beh18  = 1  if rootdom == "evansville.edu0"


replace isApp = .o  if rootdom == "ewc.edu0"
replace isApp = 0  if rootdom == "ewc.edu1"
replace isApp = 0  if rootdom == "ewc.edu2"




replace isApp = 0  if rootdom == "fairfield.edu0"
replace isApp = .o  if rootdom == "fairfield.edu1"
replace isApp = 0  if rootdom == "fairfield.edu2"




replace isApp = 0  if rootdom == "faith.edu0"
replace isApp = 0  if rootdom == "faith.edu1"
replace isApp = 0  if rootdom == "faith.edu2"


replace isApp = 1  if rootdom == "famu.edu0"
replace isApp = .o  if rootdom == "famu.edu1"
replace isApp = 1  if rootdom == "famu.edu2"
replace CRIM_Inf18 = 1  if rootdom == "famu.edu0"
replace HS_beh18   = 1  if rootdom == "famu.edu0"
replace SEX18      = 0  if rootdom == "famu.edu0"
replace COL_beh18  = 1  if rootdom == "famu.edu0"
replace CRIM_Inf18 = 1  if rootdom == "famu.edu2"
replace HS_beh18   = 1  if rootdom == "famu.edu2"
replace SEX18      = 0  if rootdom == "famu.edu2"
replace COL_beh18  = 1  if rootdom == "famu.edu2"




replace isApp = 1  if rootdom == "fau.edu0"
replace isApp = 0  if rootdom == "fau.edu1"
replace isApp = 0  if rootdom == "fau.edu2"
replace CRIM_Inf18 = 0  if rootdom == "fau.edu0"
replace HS_beh18   = 0  if rootdom == "fau.edu0"
replace SEX18      = 0  if rootdom == "fau.edu0"
replace COL_beh18  = 0  if rootdom == "fau.edu0"


replace isApp = .o  if rootdom == "faulkner.edu0"
replace isApp = .o  if rootdom == "faulkner.edu1"
//Missing rootdom2"


replace isApp = 1  if rootdom == "fgc.edu0"
replace isApp = .o  if rootdom == "fgc.edu1"
replace isApp = 0  if rootdom == "fgc.edu2"
replace CRIM_Inf18 = 0  if rootdom == "fgc.edu0"
replace HS_beh18   = 0  if rootdom == "fgc.edu0"
replace SEX18      = 0  if rootdom == "fgc.edu0"
replace COL_beh18  = 0  if rootdom == "fgc.edu0"




replace isApp = 1  if rootdom == "fhsu.edu0"
replace isApp = .n  if rootdom == "fhsu.edu1"
replace isApp = .o  if rootdom == "fhsu.edu2"
replace CRIM_Inf18 = 0  if rootdom == "fhsu.edu0"
replace HS_beh18   = 0  if rootdom == "fhsu.edu0"
replace SEX18      = 0  if rootdom == "fhsu.edu0"
replace COL_beh18  = 0  if rootdom == "fhsu.edu0"


replace isApp = .o  if rootdom == "fhtc.edu0"
replace isApp = 0  if rootdom == "fhtc.edu1"
replace isApp = 0  if rootdom == "fhtc.edu2"


replace isApp = .o  if rootdom == "fit.edu0"
replace isApp = .o  if rootdom == "fit.edu1"
replace isApp = 0  if rootdom == "fit.edu2"




replace isApp = .o  if rootdom == "fiu.edu0"
replace isApp = .o  if rootdom == "fiu.edu1"
replace isApp = 0  if rootdom == "fiu.edu2"




replace isApp = 1  if rootdom == "fkcc.edu0"
replace isApp = .o  if rootdom == "fkcc.edu1"
replace isApp = 1  if rootdom == "fkcc.edu2"
replace CRIM_Inf18 = 0  if rootdom == "fkcc.edu0"
replace HS_beh18   = 0  if rootdom == "fkcc.edu0"
replace SEX18      = 0  if rootdom == "fkcc.edu0"
replace COL_beh18  = 0  if rootdom == "fkcc.edu0"
replace CRIM_Inf18 = 0  if rootdom == "fkcc.edu2"
replace HS_beh18   = 0  if rootdom == "fkcc.edu2"
replace SEX18      = 0  if rootdom == "fkcc.edu2"
replace COL_beh18  = 0  if rootdom == "fkcc.edu2"


replace isApp = 0  if rootdom == "fletcher.edu0"
replace isApp = 0  if rootdom == "fletcher.edu1"
replace isApp = .o  if rootdom == "fletcher.edu2"




replace isApp = .o  if rootdom == "floridacollege.edu0"
replace isApp = .o  if rootdom == "floridacollege.edu1"
replace isApp = 0  if rootdom == "floridacollege.edu2"




replace isApp = 0  if rootdom == "flsouthern.edu0"
replace isApp = 0  if rootdom == "flsouthern.edu1"
replace isApp = 0  if rootdom == "flsouthern.edu2"


replace isApp = 1  if rootdom == "fmuniv.edu0"
replace isApp = 1  if rootdom == "fmuniv.edu1"
replace isApp = .o  if rootdom == "fmuniv.edu2"
replace CRIM_Inf18 = 1  if rootdom == "fmuniv.edu0"
replace HS_beh18   = 0  if rootdom == "fmuniv.edu0"
replace SEX18      = 0  if rootdom == "fmuniv.edu0"
replace COL_beh18  = 0  if rootdom == "fmuniv.edu0"
replace CRIM_Inf18 = 1  if rootdom == "fmuniv.edu1"
replace HS_beh18   = 0  if rootdom == "fmuniv.edu1"
replace SEX18      = 0  if rootdom == "fmuniv.edu1"
replace COL_beh18  = 0  if rootdom == "fmuniv.edu1"


replace isApp = 1  if rootdom == "fortlewis.edu0"
replace isApp = 1  if rootdom == "fortlewis.edu1"
replace isApp = 0  if rootdom == "fortlewis.edu2"
replace CRIM_Inf18 = 1  if rootdom == "fortlewis.edu0"
replace HS_beh18   = 0  if rootdom == "fortlewis.edu0"
replace SEX18      = 1  if rootdom == "fortlewis.edu0"
replace COL_beh18  = .n  if rootdom == "fortlewis.edu"//are you eligible to return to all previous institutions?0"
replace CRIM_Inf18 = 1  if rootdom == "fortlewis.edu1"
replace HS_beh18   = 0  if rootdom == "fortlewis.edu1"
replace SEX18      = 1  if rootdom == "fortlewis.edu1"
replace COL_beh18  = .n  if rootdom == "fortlewis.edu"//are you eligible to return to all previous institutions?1"




replace isApp = 0  if rootdom == "fortmyerstech.edu0"
replace isApp = 0  if rootdom == "fortmyerstech.edu1"
replace isApp = 0  if rootdom == "fortmyerstech.edu2"


replace isApp = .o  if rootdom == "fortscott.edu0"
replace isApp = 1  if rootdom == "fortscott.edu1"
replace isApp = 0  if rootdom == "fortscott.edu2"
replace CRIM_Inf18 = 0  if rootdom == "fortscott.edu1"
replace HS_beh18   = 0  if rootdom == "fortscott.edu1"
replace SEX18      = 0  if rootdom == "fortscott.edu1"
replace COL_beh18  = 0  if rootdom == "fortscott.edu1"


replace isApp = 0  if rootdom == "fptc.edu0"
//Missing rootdom1"
//Missing rootdom2"




replace isApp = .o  if rootdom == "franklincollege.edu0"
replace isApp = .o  if rootdom == "franklincollege.edu1"
replace isApp = .o  if rootdom == "franklincollege.edu2"


replace isApp = 1  if rootdom == "frederick.edu0"
replace isApp = 0  if rootdom == "frederick.edu1"
replace isApp = 0  if rootdom == "frederick.edu2"
replace CRIM_Inf18 = 0  if rootdom == "frederick.edu0"
replace HS_beh18   = 0  if rootdom == "frederick.edu0"
replace SEX18      = 0  if rootdom == "frederick.edu0"
replace COL_beh18  = 0  if rootdom == "frederick.edu0"


replace isApp = .o  if rootdom == "friends.edu0"
replace isApp = 1  if rootdom == "friends.edu1"
replace isApp = 0  if rootdom == "friends.edu2"
replace CRIM_Inf18 = 0  if rootdom == "friends.edu0"
replace HS_beh18   = 0  if rootdom == "friends.edu0"
replace SEX18      = 0  if rootdom == "friends.edu0"
replace COL_beh18  = 0  if rootdom == "friends.edu0"


replace isApp = 0  if rootdom == "frontier.edu0"
replace isApp = 0  if rootdom == "frontier.edu1"
replace isApp = 0  if rootdom == "frontier.edu2"




replace isApp = 0  if rootdom == "frontrange.edu0"
replace isApp = .o  if rootdom == "frontrange.edu1"
replace isApp = 0  if rootdom == "frontrange.edu2"




replace isApp = 0  if rootdom == "frostburg.edu0"
replace isApp = 0  if rootdom == "frostburg.edu1"
replace isApp = .o  if rootdom == "frostburg.edu2"




replace isApp = 0  if rootdom == "fscj.edu0"
replace isApp = .o  if rootdom == "fscj.edu1"
replace isApp = 0  if rootdom == "fscj.edu2"


replace isApp = 0  if rootdom == "fsu.edu0"
replace isApp = 0  if rootdom == "fsu.edu1"
replace isApp = 0  if rootdom == "fsu.edu2"




replace isApp = 0  if rootdom == "fsw.edu0"
replace isApp = 0  if rootdom == "fsw.edu1"
//Missing rootdom0"


replace isApp = 1  if rootdom == "fvsu.edu0"
replace isApp = 0  if rootdom == "fvsu.edu1"
replace isApp = .o  if rootdom == "fvsu.edu2"
replace CRIM_Inf18 = 0  if rootdom == "fvsu.edu0"
replace HS_beh18   = 0  if rootdom == "fvsu.edu0"
replace SEX18      = 0  if rootdom == "fvsu.edu0"
replace COL_beh18  = 1  if rootdom == "fvsu.edu0"


//Missing rootdom0"
replace isApp = 0  if rootdom == "gadsdenstate.edu1"
//Missing rootdom1"


replace isApp = 0  if rootdom == "gallaudet.edu0"
replace isApp = .o  if rootdom == "gallaudet.edu1"
replace isApp = .o  if rootdom == "gallaudet.edu2"




replace isApp = .o  if rootdom == "garrett.edu0"
replace isApp = .o  if rootdom == "garrett.edu1"
replace isApp = 0  if rootdom == "garrett.edu2"


replace isApp = 1  if rootdom == "garrettcollege.edu0"
replace isApp = 0  if rootdom == "garrettcollege.edu1"
replace isApp = 1  if rootdom == "garrettcollege.edu2"
replace CRIM_Inf18 = 0  if rootdom == "garrettcollege.edu0"
replace HS_beh18   = 0  if rootdom == "garrettcollege.edu0"
replace SEX18      = 0  if rootdom == "garrettcollege.edu0"
replace COL_beh18  = 0  if rootdom == "garrettcollege.edu0"
replace CRIM_Inf18 = 0  if rootdom == "garrettcollege.edu1"
replace HS_beh18   = 0  if rootdom == "garrettcollege.edu1"
replace SEX18      = 0  if rootdom == "garrettcollege.edu1"
replace COL_beh18  = 0  if rootdom == "garrettcollege.edu1"


replace isApp = 1  if rootdom == "gatech.edu0"
replace isApp = .o  if rootdom == "gatech.edu1"
replace isApp = .o  if rootdom == "gatech.edu2"
replace CRIM_Inf18 = 1  if rootdom == "gatech.edu0"
replace HS_beh18   = 1  if rootdom == "gatech.edu0"
replace SEX18      = 0  if rootdom == "gatech.edu0"
replace COL_beh18  = 1  if rootdom == "gatech.edu0"


replace isApp = 0  if rootdom == "gateway.kctcs.edu0"
replace isApp = 1  if rootdom == "gateway.kctcs.edu1"
replace isApp = 0  if rootdom == "gateway.kctcs.edu2"
replace CRIM_Inf18 = 0  if rootdom == "gateway.kctcs.edu1"
replace HS_beh18   = 0  if rootdom == "gateway.kctcs.edu1"
replace SEX18      = 0  if rootdom == "gateway.kctcs.edu1"
replace COL_beh18  = 0  if rootdom == "gateway.kctcs.edu1"


replace isApp = 1  if rootdom == "gatewayct.edu0"
replace isApp = 0  if rootdom == "gatewayct.edu1"
replace isApp = 0  if rootdom == "gatewayct.edu2"
replace CRIM_Inf18 = 0  if rootdom == "gatewayct.edu0"
replace HS_beh18   = 0  if rootdom == "gatewayct.edu0"
replace SEX18      = 0  if rootdom == "gatewayct.edu0"
replace COL_beh18  = 0  if rootdom == "gatewayct.edu0"


replace isApp = .o  if rootdom == "gcccks.edu0"
replace isApp = 0  if rootdom == "gcccks.edu1"
replace isApp = 0  if rootdom == "gcccks.edu2"




replace isApp = .o  if rootdom == "gcsu.edu0"
replace isApp = 0  if rootdom == "gcsu.edu1"
replace isApp = .o  if rootdom == "gcsu.edu2"


replace isApp = .o  if rootdom == "georgetown.edu0"
replace isApp = .o  if rootdom == "georgetown.edu1"
replace isApp = .o  if rootdom == "georgetown.edu2"




replace isApp = .o  if rootdom == "georgetowncollege.edu"// graduate application 0"
replace isApp = 0  if rootdom == "georgetowncollege.edu1"
//Missing rootdom2"




replace isApp = 0  if rootdom == "georgiasouthern.edu0"
replace isApp = 0  if rootdom == "georgiasouthern.edu1"
replace isApp = 0  if rootdom == "georgiasouthern.edu2"




replace isApp = 0  if rootdom == "gntc.edu0"
replace isApp = 1  if rootdom == "gntc.edu1"
replace isApp = 0  if rootdom == "gntc.edu2"
replace CRIM_Inf18 = 0  if rootdom == "gntc.edu1"
replace HS_beh18   = 0  if rootdom == "gntc.edu1"
replace SEX18      = 0  if rootdom == "gntc.edu1"
replace COL_beh18  = 0  if rootdom == "gntc.edu1"


replace isApp = .o  if rootdom == "goodwin.edu"// Nursing app0"
replace isApp = .o  if rootdom == "goodwin.edu" // Associates degree for Vision Care Tech program 1"
replace isApp = 0  if rootdom == "goodwin.edu2"




replace isApp = 1  if rootdom == "gordonstate.edu0"
replace isApp = 1  if rootdom == "gordonstate.edu1"
replace isApp = .o  if rootdom == "gordonstate.edu"// Nursing app2"
replace CRIM_Inf18 = 1  if rootdom == "gordonstate.edu0"
replace HS_beh18   = 0  if rootdom == "gordonstate.edu0"
replace SEX18      = 0  if rootdom == "gordonstate.edu0"
replace COL_beh18  = 0  if rootdom == "gordonstate.edu0"
replace CRIM_Inf18 = 1  if rootdom == "gordonstate.edu1"
replace HS_beh18   = 0  if rootdom == "gordonstate.edu1"
replace SEX18      = 0  if rootdom == "gordonstate.edu1"
replace COL_beh18  = 0  if rootdom == "gordonstate.edu1"


replace isApp = 1  if rootdom == "goshen.edu0"
replace isApp = 0  if rootdom == "goshen.edu1"
replace isApp = .o  if rootdom == "goshen.edu" // Leadership application 2"
replace CRIM_Inf18 = 1  if rootdom == "goshen.edu0"
replace HS_beh18   = 0  if rootdom == "goshen.edu0"
replace SEX18      = 0  if rootdom == "goshen.edu0"
replace COL_beh18  = 0  if rootdom == "goshen.edu0"


replace isApp = 0  if rootdom == "goucher.edu0"
replace isApp = 0  if rootdom == "goucher.edu1"
replace isApp = 0  if rootdom == "goucher.edu2"




replace isApp = 1  if rootdom == "govst.edu0"
replace isApp = .o  if rootdom == "govst.edu" // Graduate application 1"
replace isApp = 0  if rootdom == "govst.edu2"
replace CRIM_Inf18 = 1  if rootdom == "govst.edu0"
replace HS_beh18   = 1  if rootdom == "govst.edu0"
replace SEX18      = 0  if rootdom == "govst.edu0"
replace COL_beh18  = 1  if rootdom == "govst.edu0"


replace isApp = .o  if rootdom == "grace.edu" // Master of Art app0"
replace isApp = .e  if rootdom == "grace.edu1"
replace isApp = .e  if rootdom == "grace.edu2"




replace isApp = .o  if rootdom == "graceland.edu" // Scholarship app0"
replace isApp = .o  if rootdom == "graceland.edu" // Scholarship app1"
replace isApp = .o  if rootdom == "graceland.edu" // Nursing app2"




replace isApp = .o  if rootdom == "grahamschoolofnursing.org.edu" // Scholarship app 0"
replace isApp = 0  if rootdom == "grahamschoolofnursing.org.edu1"
// Missing rootdom2"


replace isApp = 0  if rootdom == "gram.edu0"
replace isApp = .o  if rootdom == "gram.edu" // Certificat program app1"
// Missing rootdom2"




replace isApp = 0  if rootdom == "grandview.edu0"
replace isApp = 0  if rootdom == "grandview.edu1"
replace isApp = 0  if rootdom == "grandview.edu2"


replace isApp = 0  if rootdom == "greenville.edu0"
replace isApp = 0  if rootdom == "greenville.edu1"
replace isApp = 0  if rootdom == "greenville.edu2"




replace isApp = .o  if rootdom == "grinnell.edu" // off-campus program app0"
replace isApp = 0  if rootdom == "grinnell.edu1"
replace isApp = 0  if rootdom == "grinnell.edu2"


replace isApp = .o  if rootdom == "gsu.edu" //IEP program app0"
replace isApp = .o  if rootdom == "gsu.edu" // App for summer training program1"
replace isApp = .o  if rootdom == "gsu.edu" //IEP program app2"




replace isApp = 1  if rootdom == "gsw.edu0"
replace isApp = .o  if rootdom == "gsw.edu" // Nursing app1"
replace isApp = .o  if rootdom == "gsw.edu" // Nursing app 2"
replace CRIM_Inf18 = 1  if rootdom == "gsw.edu0"
replace HS_beh18   = 1  if rootdom == "gsw.edu0"
replace SEX18      = 0  if rootdom == "gsw.edu0"
replace COL_beh18  = 1  if rootdom == "gsw.edu0"


replace isApp = 1  if rootdom == "GwinnettTech.edu0"
replace isApp = 0  if rootdom == "GwinnettTech.edu1"
replace isApp = 0  if rootdom == "GwinnettTech.edu2"
replace CRIM_Inf18 = 0  if rootdom == "GwinnettTech.edu0"
replace HS_beh18   = 0  if rootdom == "GwinnettTech.edu0"
replace SEX18      = 0  if rootdom == "GwinnettTech.edu0"
replace COL_beh18  = 0  if rootdom == "GwinnettTech.edu0"


replace isApp = .o  if rootdom == "gwu.edu" //International application 0"
replace isApp = .o  if rootdom == "gwu.edu" // Law school application 1"
replace isApp = 0  if rootdom == "gwu.edu" 2"




replace isApp = .o  if rootdom == "hagerstowncc.edu" //transfer application 0"
replace isApp = .e  if rootdom == "hagerstowncc.edu1"
replace isApp = .o  if rootdom == "hagerstowncc.edu" // dual admissions 2"




replace isApp = 1  if rootdom == "hanover.edu0"
replace isApp = .o  if rootdom == "hanover.edu"// FAFSA application 1"
replace isApp = .o  if rootdom == "hanover.edu"// International application 2"
replace CRIM_Inf18 = 1  if rootdom == "hanover.edu0"
replace HS_beh18   = 1  if rootdom == "hanover.edu0"
replace SEX18      = 0  if rootdom == "hanover.edu0"
replace COL_beh18  = 1  if rootdom == "hanover.edu0"


replace isApp = 1  if rootdom == "harford.edu0"
replace isApp = .o  if rootdom == "harford.edu" // Nursing app 1"
replace isApp = .o  if rootdom == "harford.edu"// International app 2"
replace CRIM_Inf18 = 0  if rootdom == "harford.edu0"
replace HS_beh18   = 0  if rootdom == "harford.edu0"
replace SEX18      = 0  if rootdom == "harford.edu0"
replace COL_beh18  = 0  if rootdom == "harford.edu0"


replace isApp = 1  if rootdom == "harpercollege.edu0"
replace isApp = .o  if rootdom == "harpercollege.edu"// Nursing certificate1"
replace isApp = 0  if rootdom == "harpercollege.edu2"
replace CRIM_Inf18 = 0  if rootdom == "harpercollege.edu0"
replace HS_beh18   = 0  if rootdom == "harpercollege.edu0"
replace SEX18      = 0  if rootdom == "harpercollege.edu0"
replace COL_beh18  = 0  if rootdom == "harpercollege.edu0"


replace isApp = 1  if rootdom == "hartford.edu0"
replace isApp = 1  if rootdom == "hartford.edu1"
replace isApp = .o  if rootdom == "hartford.edu" // Application in english program2"
replace CRIM_Inf18 = 0  if rootdom == "hartford.edu0"
replace HS_beh18   = 0  if rootdom == "hartford.edu0"
replace SEX18      = 0  if rootdom == "hartford.edu0"
replace COL_beh18  = 0  if rootdom == "hartford.edu0"
replace CRIM_Inf18 = 0  if rootdom == "hartford.edu1"
replace HS_beh18   = 0  if rootdom == "hartford.edu1"
replace SEX18      = 0  if rootdom == "hartford.edu1"
replace COL_beh18  = 0  if rootdom == "hartford.edu1"


replace isApp = .o  if rootdom == "hartsem.edu" // Graduate application 0"
replace isApp = 1  if rootdom == "hartsem.edu1"
replace isApp = .o  if rootdom == "hartsem.edu" // Leadership applicaiton 2"
replace CRIM_Inf18 = 0  if rootdom == "hartsem.edu1"
replace HS_beh18   = 0  if rootdom == "hartsem.edu1"
replace SEX18      = 0  if rootdom == "hartsem.edu1"
replace COL_beh18  = 0  if rootdom == "hartsem.edu1"


replace isApp = 1  if rootdom == "haskell.edu0"
replace isApp = 1  if rootdom == "haskell.edu1"
replace isApp = 0  if rootdom == "haskell.edu2"
replace CRIM_Inf18 = 1  if rootdom == "haskell.edu0"
replace HS_beh18   = 0  if rootdom == "haskell.edu0"
replace SEX18      = 0  if rootdom == "haskell.edu0"
replace COL_beh18  = 0  if rootdom == "haskell.edu0"
replace CRIM_Inf18 = 1  if rootdom == "haskell.edu1"
replace HS_beh18   = 0  if rootdom == "haskell.edu1"
replace SEX18      = 0  if rootdom == "haskell.edu1"
replace COL_beh18  = 0  if rootdom == "haskell.edu1"


replace isApp = .o  if rootdom == "hawkeyecollege.edu" // Occupational Therapy Program0"
replace isApp = 0  if rootdom == "hawkeyecollege.edu1"
replace isApp = 0  if rootdom == "hawkeyecollege.edu2"




replace isApp = 0  if rootdom == "hazard.kctcs.edu0"
replace isApp = 0  if rootdom == "hazard.kctcs.edu1"
replace isApp = 0  if rootdom == "hazard.kctcs.edu2"




replace isApp = .o  if rootdom == "hcc-nd.edu" // Summer program application 0"
replace isApp = .o  if rootdom == "hcc-nd.edu" // Readmission application 1"
replace isApp = 0  if rootdom == "hcc-nd.edu2"




replace isApp = .e  if rootdom == "hcc.commnet.edu0"
replace isApp = .e  if rootdom == "hcc.commnet.edu1"
replace isApp = .e  if rootdom == "hcc.commnet.edu2"


replace isApp = 0  if rootdom == "hccfl.edu0"
replace isApp = .o  if rootdom == "hccfl.edu" //International application 1"
replace isApp = 0  if rootdom == "hccfl.edu2"




replace isApp = 0  if rootdom == "hcu.edu0"
replace isApp = 0  if rootdom == "hcu.edu1"
replace isApp = 0  if rootdom == "hcu.edu2"




replace isApp = .o  if rootdom == "henderson.kctcs.edu" //Dental hygience program application 0"
replace isApp = 0  if rootdom == "henderson.kctcs.edu1"
replace isApp = 0  if rootdom == "henderson.kctcs.edu2"




replace isApp = .o  if rootdom == "hesston.edu"  // International student application0"
replace isApp = 1  if rootdom == "hesston.edu1"
replace isApp = 0  if rootdom == "hesston.edu2"
replace CRIM_Inf18 = 0  if rootdom == "hesston.edu1"
replace HS_beh18   = 0  if rootdom == "hesston.edu1"
replace SEX18      = 0  if rootdom == "hesston.edu1"
replace COL_beh18  = 0  if rootdom == "hesston.edu1"


replace isApp = .o  if rootdom == "highland.edu" // International student application 0"
replace isApp = 1  if rootdom == "highland.edu1"
replace isApp = 1  if rootdom == "highland.edu2"
replace CRIM_Inf18 = 0  if rootdom == "highland.edu1"
replace HS_beh18   = 0  if rootdom == "highland.edu1"
replace SEX18      = 0  if rootdom == "highland.edu1"
replace COL_beh18  = 0  if rootdom == "highland.edu1"
replace CRIM_Inf18 = 0  if rootdom == "highland.edu2"
replace HS_beh18   = 0  if rootdom == "highland.edu2"
replace SEX18      = 0  if rootdom == "highland.edu2"
replace COL_beh18  = 0  if rootdom == "highland.edu2"


replace isApp = 1  if rootdom == "highlandcc.edu0"
replace isApp = .o  if rootdom == "highlandcc.edu" // Football application 1"
replace isApp = 0  if rootdom == "highlandcc.edu2"
replace CRIM_Inf18 = 0  if rootdom == "highlandcc.edu0"
replace HS_beh18   = 0  if rootdom == "highlandcc.edu0"
replace SEX18      = 0  if rootdom == "highlandcc.edu0"
replace COL_beh18  = 0  if rootdom == "highlandcc.edu0"


replace isApp = 1  if rootdom == "highlands.edu0"
replace isApp = .o  if rootdom == "highlands.edu" //Nursing application 1"
replace isApp = .o  if rootdom == "highlands.edu" //Dental hygiene program2"
replace CRIM_Inf18 = 1  if rootdom == "highlands.edu0"
replace HS_beh18   = 0  if rootdom == "highlands.edu0"
replace SEX18      = 0  if rootdom == "highlands.edu0"
replace COL_beh18  = 0  if rootdom == "highlands.edu0"


replace isApp = 0  if rootdom == "hilo.hawaii.edu0"
replace isApp = 1  if rootdom == "hilo.hawaii.edu1"
replace isApp = .o  if rootdom == "hilo.hawaii.edu" //Returning student application 2"
replace CRIM_Inf18 = 0  if rootdom == "hilo.hawaii.edu1"
replace HS_beh18   = 0  if rootdom == "hilo.hawaii.edu1"
replace SEX18      = 0  if rootdom == "hilo.hawaii.edu1"
replace COL_beh18  = 0  if rootdom == "hilo.hawaii.edu1"


replace isApp = 1  if rootdom == "holyapostles.edu0"
replace isApp = 0  if rootdom == "holyapostles.edu1"
replace isApp = 0  if rootdom == "holyapostles.edu2"
replace CRIM_Inf18 = 0  if rootdom == "holyapostles.edu0"
replace HS_beh18   = 0  if rootdom == "holyapostles.edu0"
replace SEX18      = 0  if rootdom == "holyapostles.edu0"
replace COL_beh18  = 0  if rootdom == "holyapostles.edu0"


replace isApp = 0  if rootdom == "honolulu.hawaii.edu0"
replace isApp = 0  if rootdom == "honolulu.hawaii.edu1"
replace isApp = 0  if rootdom == "honolulu.hawaii.edu2"




replace isApp = 0  if rootdom == "hood.edu0"
replace isApp = 0  if rootdom == "hood.edu1"
replace isApp = .o  if rootdom == "hood.edu" //Graduate application 2"




replace isApp = .o  if rootdom == "hopkinsville.kctcs.edu" //I-20 application 0"
replace isApp = .o  if rootdom == "hopkinsville.kctcs.edu" // Nursing program 1"
replace isApp = 0  if rootdom == "hopkinsville.kctcs.edu2"


replace isApp = .o  if rootdom == "howard.edu" // Application for law school0"
//Missing rootdom1"
//Missing rootdom2"




replace isApp = .o  if rootdom == "howardcc.edu"//Accelerated program for HS students0"
replace isApp = .o  if rootdom == "howardcc.edu" // Honors addmission 1"
replace isApp = 0  if rootdom == "howardcc.edu2"


replace isApp = .o  if rootdom == "hpu.edu" //Application for non-degree 0"
replace isApp = 0  if rootdom == "hpu.edu1"
replace isApp = 0  if rootdom == "hpu.edu2"




replace isApp = 1  if rootdom == "hsbc.edu0"
replace isApp = 1  if rootdom == "hsbc.edu1"
replace isApp = 0  if rootdom == "hsbc.edu2"
replace CRIM_Inf18 = 0  if rootdom == "hsbc.edu0"
replace HS_beh18   = 1  if rootdom == "hsbc.edu0"
replace SEX18      = 0  if rootdom == "hsbc.edu0"
replace COL_beh18  = 1  if rootdom == "hsbc.edu0"
replace CRIM_Inf18 = 0  if rootdom == "hsbc.edu1"
replace HS_beh18   = 1  if rootdom == "hsbc.edu1"
replace SEX18      = 0  if rootdom == "hsbc.edu1"
replace COL_beh18  = 1  if rootdom == "hsbc.edu1"


replace isApp = .e  if rootdom == "huntingdon.edu0"
replace isApp = 0  if rootdom == "huntingdon.edu1"
replace isApp = .e  if rootdom == "huntingdon.edu2"


replace isApp = .o  if rootdom == "huntington.edu" //HS students early entry0"
replace isApp = .o  if rootdom == "huntington.edu" // Specific ABLE Program application 1"
replace isApp = 0  if rootdom == "huntington.edu2"


replace isApp = .o  if rootdom == "hutchcc.edu" //Nursing application 0"
replace isApp = .o  if rootdom == "hutchcc.edu" // Nursing applicaiton 1"
replace isApp = 0  if rootdom == "hutchcc.edu" 2"


replace isApp = 1  if rootdom == "iastate.edu0"
replace isApp = 0  if rootdom == "iastate.edu1"
replace isApp = 0  if rootdom == "iastate.edu2"
replace CRIM_Inf18 = 1  if rootdom == "iastate.edu0"
replace HS_beh18   = 1  if rootdom == "iastate.edu0"
replace SEX18      = 0  if rootdom == "iastate.edu0"
replace COL_beh18  = 1  if rootdom == "iastate.edu0"


replace isApp = 0  if rootdom == "ic.edu0"
replace isApp = 0  if rootdom == "ic.edu1"
replace isApp = 0  if rootdom == "ic.edu2"




replace isApp = .o  if rootdom == "icc.edu" // Veterans application0"
replace isApp = 0  if rootdom == "icc.edu1"
replace isApp = 0  if rootdom == "icc.edu2"




replace isApp = 0  if rootdom == "icsw.edu0"
replace isApp = 0  if rootdom == "icsw.edu1"
replace isApp = 0  if rootdom == "icsw.edu2"




replace isApp = .o  if rootdom == "iit.edu" //Crown Scholars application 0"
replace isApp = 0  if rootdom == "iit.edu1"
replace isApp = 0  if rootdom == "iit.edu2"




replace isApp = .e  if rootdom == "iliff.edu0"
replace isApp = 0  if rootdom == "iliff.edu1"
replace isApp = .e  if rootdom == "iliff.edu2"


replace isApp = .n  if rootdom == "illinois.edu" //College prep academy?0"
replace isApp = .o  if rootdom == "template.edu1"
replace isApp = .o  if rootdom == "template.edu2"
replace CRIM_Inf18 = __  if rootdom == "template.edu0"
replace HS_beh18   = __  if rootdom == "template.edu0"
replace SEX18      = __  if rootdom == "template.edu0"
replace COL_beh18  = __  if rootdom == "template.edu0"


replace isApp = 1  if rootdom == "illinoisstate.edu0"
replace isApp = 0  if rootdom == "illinoisstate.edu1"
replace isApp = 0  if rootdom == "illinoisstate.edu2"
replace CRIM_Inf18 = 1  if rootdom == "illinoisstate.edu0"
replace HS_beh18   = 1  if rootdom == "illinoisstate.edu0"
replace SEX18      = 0  if rootdom == "illinoisstate.edu0"
replace COL_beh18  = 1  if rootdom == "illinoisstate.edu0"


replace isApp = .o  if rootdom == "indianatech.edu" //Graduate application 0"
replace isApp = .o  if rootdom == "indianatech.edu" //International application 1"
replace isApp = 1  if rootdom == "indianatech.edu2"
replace CRIM_Inf18 = 0  if rootdom == "indianatech.edu2"
replace HS_beh18   = 1  if rootdom == "indianatech.edu2"
replace SEX18      = 0  if rootdom == "indianatech.edu2"
replace COL_beh18  = 1  if rootdom == "indianatech.edu2"


replace isApp = 0  if rootdom == "indianhills.edu0"
replace isApp = .o  if rootdom == "indianhills.edu" //Transfer application 1"
replace isApp = .n  if rootdom == "indianhills.edu2"
replace CRIM_Inf18 = __  if rootdom == "indianhills.edu0"
replace HS_beh18   = __  if rootdom == "indianhills.edu0"
replace SEX18      = __  if rootdom == "indianhills.edu0"
replace COL_beh18  = __  if rootdom == "indianhills.edu0"


replace isApp = 0  if rootdom == "indstate.edu0"
replace isApp = 0  if rootdom == "indstate.edu1"
replace isApp = 0  if rootdom == "indstate.edu2"




replace isApp = .o  if rootdom == "indwes.edu" //scholars program application 0"
replace isApp = .o  if rootdom == "indwes.edu" //re-enrollment application 1"
replace isApp = 0  if rootdom == "indwes.edu2"




replace isApp = 0  if rootdom == "indycc.edu0"
replace isApp = 0  if rootdom == "indycc.edu1"
replace isApp = 0  if rootdom == "indycc.edu2"


replace isApp = 0  if rootdom == "iowacentral.edu0"
replace isApp = .o  if rootdom == "iowacentral.edu" //Lab tech application 1"
replace isApp = .o  if rootdom == "iowacentral.edu" //Dental hygiene application 2"




replace isApp = 0  if rootdom == "iowalakes.edu0"
replace isApp = 0  if rootdom == "iowalakes.edu1"
replace isApp = 0  if rootdom == "iowalakes.edu2"




replace isApp = 0  if rootdom == "ipfw.edu0"
replace isApp = 0  if rootdom == "ipfw.edu1"
replace isApp = .o  if rootdom == "ipfw.edu" //MBA application 2"




replace isApp = .o  if rootdom == "irsc.edu" //International student application 0"
replace isApp = 1  if rootdom == "irsc.edu1"
//Missing rootdom2"
replace CRIM_Inf18 = 0  if rootdom == "irsc.edu0"
replace HS_beh18   = 0  if rootdom == "irsc.edu0"
replace SEX18      = 0  if rootdom == "irsc.edu0"
replace COL_beh18  = 0  if rootdom == "irsc.edu0"


replace isApp = 0  if rootdom == "istc.edu0"
replace isApp = 0  if rootdom == "istc.edu1"
replace isApp = 0  if rootdom == "istc.edu2"




replace isApp = .o  if rootdom == "isu.edu" //International student application 0"
replace isApp = .o  if rootdom == "isu.edu" //Nursing application 1"
replace isApp = .o  if rootdom == "isu.edu" //Social work application 2"




replace isApp = 0  if rootdom == "itc.edu0"
replace isApp = 0  if rootdom == "itc.edu1"
replace isApp = 0  if rootdom == "itc.edu2"




replace isApp = 0  if rootdom == "iub.edu0"
replace isApp = 0  if rootdom == "iub.edu1"
replace isApp = 0  if rootdom == "iub.edu2"


replace isApp = 1  if rootdom == "iue.edu0"
replace isApp = .o  if rootdom == "iue.edu1" //Pathways application 1"
replace isApp = .o  if rootdom == "iue.edu2" //Nursing application 2"
replace CRIM_Inf18 = 1  if rootdom == "iue.edu0"
replace HS_beh18   = 1  if rootdom == "iue.edu0"
replace SEX18      = 0  if rootdom == "iue.edu0"
replace COL_beh18  = 1  if rootdom == "iue.edu0"


replace isApp = 1  if rootdom == "iuk.edu0"
replace isApp = .o  if rootdom == "iuk.edu1" //Graduate certificate1"
replace isApp = .o  if rootdom == "iuk.edu2" //International application 2"
replace CRIM_Inf18 = 1  if rootdom == "iuk.edu0"
replace HS_beh18   = 1  if rootdom == "iuk.edu0"
replace SEX18      = 0  if rootdom == "iuk.edu0"
replace COL_beh18  = 1  if rootdom == "iuk.edu0"


replace isApp = .o  if rootdom == "iun.edu" //International graduate application 0"
replace isApp = .o  if rootdom == "iun.edu"  //Graduate application 1"
replace isApp = .o  if rootdom == "iun.edu"  // Graduate application 2"




//Missing rootdom0"
replace isApp = 0  if rootdom == "iupui.edu1"
//Missing rootdom2"




replace isApp = 1  if rootdom == "ius.edu0"
replace isApp = .o  if rootdom == "ius.edu" //International application 1"
replace isApp = 0  if rootdom == "ius.edu2"
replace CRIM_Inf18 = 1  if rootdom == "ius.edu0"
replace HS_beh18   = 1  if rootdom == "ius.edu0"
replace SEX18      = 0  if rootdom == "ius.edu0"
replace COL_beh18  = 1  if rootdom == "ius.edu0"


replace isApp = .o  if rootdom == "iusb.edu" //Dental hygiene application 0"
replace isApp = .o  if rootdom == "iusb.edu" //Nursing application 1"
replace isApp = .e  if rootdom == "iusb.edu2"




replace isApp = 0  if rootdom == "ivcc.edu0"
replace isApp = .o  if rootdom == "ivcc.edu" //Certificate program application 1"
replace isApp = 0  if rootdom == "ivcc.edu2"


replace isApp = 1  if rootdom == "ivytech.edu0"
replace isApp = 1  if rootdom == "ivytech.edu1"
replace isApp = 0  if rootdom == "ivytech.edu2"
replace CRIM_Inf18 = 0  if rootdom == "ivytech.edu0"
replace HS_beh18   = 0  if rootdom == "ivytech.edu0"
replace SEX18      = 0  if rootdom == "ivytech.edu0"
replace COL_beh18  = 0  if rootdom == "ivytech.edu0"


replace isApp = 0  if rootdom == "iw.edu0"
replace isApp = 0  if rootdom == "iw.edu1"
replace isApp = .o  if rootdom == "iw.edu"// International transfer application 2"




replace isApp = .o  if rootdom == "iwcc.edu" // Scholarship application 0"
replace isApp = 0  if rootdom == "iwcc.edu1"
replace isApp = 0  if rootdom == "iwcc.edu2"


replace isApp = 1  if rootdom == "iwu.edu0"
replace isApp = 1  if rootdom == "iwu.edu1"
replace isApp = .o  if rootdom == "iwu.edu" //International studet application 2"
replace CRIM_Inf18 = 1  if rootdom == "iwu.edu0"
replace HS_beh18   = 1  if rootdom == "iwu.edu0"
replace SEX18      = 0  if rootdom == "iwu.edu0"
replace COL_beh18  = 1  if rootdom == "iwu.edu0"
replace CRIM_Inf18 = 1  if rootdom == "iwu.edu1"
replace HS_beh18   = 1  if rootdom == "iwu.edu1"
replace SEX18      = 0  if rootdom == "iwu.edu1"
replace COL_beh18  = 1  if rootdom == "iwu.edu1"


//page 46





replace isApp = __  if rootdom == "template.edu0"
replace isApp = __  if rootdom == "template.edu1"
replace isApp = __  if rootdom == "template.edu2"
replace CRIM_Inf18 = __  if rootdom == "template.edu0"
replace HS_beh18   = __  if rootdom == "template.edu0"
replace SEX18      = __  if rootdom == "template.edu0"
replace COL_beh18  = __  if rootdom == "template.edu0"






