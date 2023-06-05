* Encoding: UTF-8.

DATASET ACTIVATE DataSet1.

 * O-Items aller Seminargruppen:
AO1Fant1_SQ001 AO1Gefu1_SQ001 AO1Hand1R_SQ001 AO1Idee_SQ001
AO2Aest1_SQ001 AO2Fant1_SQ001 AO2Hand1R_SQ001 AO2Idee1R_SQ001
BO1Fant1_SQ001 BO1Gefu1_SQ001 BO1Hand1R_SQ001 BO1Idee1_SQ001
BO2Aest1_SQ001 BO2Fant1_SQ001 BO2Hand1R_SQ001 BO2Idee1_SQ001
DO1Aest1_SQ001 DO1Fant1_SQ001 DO1Fant2R_SQ001 DO1Gefu1_SQ001

/* Aufgabe 1.1
/* VERTEILUNG und Item-SCHWIERIGKEITEN

FREQUENCIES VARIABLES=AO2Aest1_SQ001 AO2Fant1_SQ001 AO2Hand1R_SQ001 AO2Idee1R_SQ001
    AO1Gefu1_SQ001 AO1Idee_SQ001 DO1Fant2R_SQ001 FFIO2Wert2R_SQ001
  /STATISTICS=STDDEV MINIMUM MAXIMUM MEAN
  /HISTOGRAM
  /ORDER=ANALYSIS.

 * FREQUENCIES VARIABLES=AO1Fant1_SQ001 AO1Gefu1_SQ001 AO1Hand1R_SQ001 AO1Idee_SQ001
    AO2Aest1_SQ001 AO2Fant1_SQ001 AO2Hand1R_SQ001 AO2Idee1R_SQ001
    BO1Fant1_SQ001 BO1Gefu1_SQ001 BO1Hand1R_SQ001 BO1Idee1_SQ001
    BO2Aest1_SQ001 BO2Fant1_SQ001 BO2Hand1R_SQ001 BO2Idee1_SQ001
    DO1Aest1_SQ001 DO1Fant1_SQ001 DO1Fant2R_SQ001 DO1Gefu1_SQ001
  /STATISTICS=STDDEV MINIMUM MAXIMUM MEAN
  /HISTOGRAM
 /ORDER=ANALYSIS.

/* TRENNSCHÄRFEN & RELIABILITÄT

RELIABILITY
  /VARIABLES=AO2Aest1_SQ001 AO2Fant1_SQ001 AO2Hand1R_SQ001 AO2Idee1R_SQ001
    AO1Gefu1_SQ001 AO1Idee_SQ001 DO1Fant2R_SQ001 FFIO2Wert2R_SQ001
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

/* nur zum Vergleich alle FFIO Items

 * RELIABILITY
  /VARIABLES=FFIO1Aest1_SQ001, FFIO1Aest2R_SQ001, FFIO1Aest3_SQ001, FFIO1Fant1R_SQ001,
    FFIO1Fant2Z_SQ001, FFIO1Gefu1R_SQ001, FFIO1Gefu2Z_SQ001, FFIO2Hand1_SQ001,
    FFIO2Hand2RZ_SQ001, FFIO2Idee1_SQ001, FFIO2Idee2_SQ001, FFIO2Idee3R_SQ001,
    FFIO2Idee4R_SQ001, FFIO2Wert1R_SQ001, FFIO2Wert2R_SQ001
      /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

/* nur zum Vergleich alle O-Items der Seminargruppen
    
 * RELIABILITY
  /VARIABLES=AO1Fant1_SQ001 AO1Gefu1_SQ001 AO1Hand1R_SQ001 AO1Idee_SQ001
    AO2Aest1_SQ001 AO2Fant1_SQ001 AO2Hand1R_SQ001 AO2Idee1R_SQ001
    BO1Fant1_SQ001 BO1Gefu1_SQ001 BO1Hand1R_SQ001 BO1Idee1_SQ001
    BO2Aest1_SQ001 BO2Fant1_SQ001 BO2Hand1R_SQ001 BO2Idee1_SQ001
    DO1Aest1_SQ001 DO1Fant1_SQ001 DO1Fant2R_SQ001 DO1Gefu1_SQ001
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

 * Analyse 1.1: (1x Aest, 2x Fant, 1x Gefu, 1x Hand, 2x Idee, 1x Wert)
AO2Aest1_SQ001: ganz ok
AO2Fant1_SQ001: ähnlich gut wie AO2Hand1R 
AO2Hand1R_SQ001: ziemlich gut trennendes Item mit relativ gleichmäßiger Verteilung. Finde es auch inhaltlich gut. :-)
AO2Idee1R_SQ001: ??? inhaltlich ok, aber stark konzentriert auf 3 (Schwierigkeit 2,83; StdAbweichung 0,88 !!), vielleicht aber nur aufgrund der relativ homogenen Stichprobe.
 * aber ausgerechnet dieses Item hat die höchste Trennschärfe von 0,322! und am gewichtigsten bei Cronbachs Alpha!
AO1Gefu1_SQ001: xxx statistisch sehr problematisch, starke konzentration auf 3 und 4 und Antwort 0 wurde nie gewählt, StdAbw=0,68!!! (hat tatsächlich auch eine sehr schwache Trennschärfe von 0,023, weglassen auch für C-Alpha besser!)
AO1Idee_SQ001: eigentlich ganz gut (auch inhaltlich). etwas rechtssteil, das aber vermutlich aufgrund der eher akademischen Stichprobe? (Trennschärfe mit 0,099 recht gering)
DO1Fant2R_SQ001: xxx inhaltlich wohl verwirrend, denn sehr linkssteil und auf 1 konzentriert (Schwierigkeit 1,36; StdAbw 0,803; Trennschärfe 0,018!!!),
Ergebnis läuft meinem Verständniss nach Offenheit komplett entgegen, obwohl eher akademische Stichprobe; Umformulierung in Betracht ziehen, wenn stärkere Trennschärfe innerhalb akademischer Zielgruppe gewünscht ist.
 * FFIO2Wert2R_SQ001: leicht rechtssteil, aber inhaltlich bin ich mir unsicher (schlechtestes FFIO-Item)
Scala: Korrelation der Items mit der Scala durchweg niedrig (mit 0,322 bei Item AO2Idee1R am höchsten) und Cronbachst Alpha von gerade mal 0,388.


/* Aufgabe 1.2
/* FAKTORENANALYSE

FACTOR
  /VARIABLES AO2Aest1_SQ001 AO2Fant1_SQ001 AO2Hand1R_SQ001 AO2Idee1R_SQ001
    AO1Gefu1_SQ001 AO1Idee_SQ001 DO1Fant2R_SQ001
    FFIE1Gese1_SQ001 FFIE1Gese2R_SQ001 FFIE1Herz1_SQ001 FFIE1Herz2Z_SQ001 FFIE1PosE1_SQ001 FFIE1PosE2R_SQ001 
    FFIE1PosE3R_SQ001 FFIE1PosE4_SQ001 FFIE2Akti1_SQ001 FFIE2Akti2_SQ001 FFIE2Akti3_SQ001 
    FFIE2Durc1R_SQ001 FFIE2Durc2RZ_SQ001 FFIE2ErlS1_SQ001 FFIE2ErlS2Z_SQ001 FFIG1Beso1Z_SQ001 
    FFIG1Beso2Z_SQ001 FFIG1Komp1Z_SQ001 FFIG1Komp2Z_SQ001 FFIG1OrdL1_SQ001 FFIG1OrdL2R_SQ001 
    FFIG1OrdL3R_SQ001 FFIG2LeiS1_SQ001 FFIG2LeiS2_SQ001 FFIG2LeiS3_SQ001 FFIG2PflB1R_SQ001 
    FFIG2PflB2_SQ001 FFIG2PflB3_SQ001 FFIG2SelD1_SQ001 FFIG2SelD2R_SQ001 FFIG2SelD3_SQ001 
    FFIN1Aeng1R_SQ001 FFIN1Aeng2_SQ001 FFIN1Aeng3R_SQ001 FFIN1Depr1_SQ001 FFIN1Depr2R_SQ001 
    FFIN1Depr3R_SQ001 FFIN1Depr4_SQ001 FFIN1SozB1_SQ001 FFIN1SozB2_SQ001 FFIN2Impu1Z_SQ001 
    FFIN2Impu2RZ_SQ001 FFIN2Reiz1_SQ001 FFIN2Reiz2RZ_SQ001 FFIN2Verl1_SQ001 FFIN2Verl2_SQ001 
    FFIO1Aest1_SQ001 FFIO1Aest2R_SQ001 FFIO1Aest3_SQ001 FFIO1Fant1R_SQ001 FFIO1Fant2Z_SQ001 
    FFIO1Gefu1R_SQ001 FFIO1Gefu2Z_SQ001 FFIO2Hand1_SQ001 FFIO2Hand2RZ_SQ001 FFIO2Idee1_SQ001 
    FFIO2Idee2_SQ001 FFIO2Idee3R_SQ001 FFIO2Idee4R_SQ001 FFIO2Wert1R_SQ001 FFIO2Wert2R_SQ001 
    FFIV1Altr1_SQ001 FFIV1Altr2R_SQ001 FFIV1Altr3_SQ001 FFIV1Altr4_SQ001 FFIV1Altr5R_SQ001 
    FFIV1Frei1R_SQ001 FFIV1Frei2RZ_SQ001 FFIV1Vert1R_SQ001 FFIV1Vert2R_SQ001 FFIV2Besc1RZ_SQ001 
    FFIV2Besc2RZ_SQ001 FFIV2Entg1_SQ001 FFIV2Entg2R_SQ001 FFIV2Entg3R_SQ001 FFIV2Guth1R_SQ001 
    FFIV2Guth2Z_SQ001
  /MISSING LISTWISE 
  /ANALYSIS AO2Aest1_SQ001 AO2Fant1_SQ001 AO2Hand1R_SQ001 AO2Idee1R_SQ001
    AO1Gefu1_SQ001 AO1Idee_SQ001 DO1Fant2R_SQ001
    FFIE1Gese1_SQ001 FFIE1Gese2R_SQ001 FFIE1Herz1_SQ001 FFIE1Herz2Z_SQ001 FFIE1PosE1_SQ001 FFIE1PosE2R_SQ001 
    FFIE1PosE3R_SQ001 FFIE1PosE4_SQ001 FFIE2Akti1_SQ001 FFIE2Akti2_SQ001 FFIE2Akti3_SQ001 
    FFIE2Durc1R_SQ001 FFIE2Durc2RZ_SQ001 FFIE2ErlS1_SQ001 FFIE2ErlS2Z_SQ001 FFIG1Beso1Z_SQ001 
    FFIG1Beso2Z_SQ001 FFIG1Komp1Z_SQ001 FFIG1Komp2Z_SQ001 FFIG1OrdL1_SQ001 FFIG1OrdL2R_SQ001 
    FFIG1OrdL3R_SQ001 FFIG2LeiS1_SQ001 FFIG2LeiS2_SQ001 FFIG2LeiS3_SQ001 FFIG2PflB1R_SQ001 
    FFIG2PflB2_SQ001 FFIG2PflB3_SQ001 FFIG2SelD1_SQ001 FFIG2SelD2R_SQ001 FFIG2SelD3_SQ001 
    FFIN1Aeng1R_SQ001 FFIN1Aeng2_SQ001 FFIN1Aeng3R_SQ001 FFIN1Depr1_SQ001 FFIN1Depr2R_SQ001 
    FFIN1Depr3R_SQ001 FFIN1Depr4_SQ001 FFIN1SozB1_SQ001 FFIN1SozB2_SQ001 FFIN2Impu1Z_SQ001 
    FFIN2Impu2RZ_SQ001 FFIN2Reiz1_SQ001 FFIN2Reiz2RZ_SQ001 FFIN2Verl1_SQ001 FFIN2Verl2_SQ001 
    FFIO1Aest1_SQ001 FFIO1Aest2R_SQ001 FFIO1Aest3_SQ001 FFIO1Fant1R_SQ001 FFIO1Fant2Z_SQ001 
    FFIO1Gefu1R_SQ001 FFIO1Gefu2Z_SQ001 FFIO2Hand1_SQ001 FFIO2Hand2RZ_SQ001 FFIO2Idee1_SQ001 
    FFIO2Idee2_SQ001 FFIO2Idee3R_SQ001 FFIO2Idee4R_SQ001 FFIO2Wert1R_SQ001 FFIO2Wert2R_SQ001 
    FFIV1Altr1_SQ001 FFIV1Altr2R_SQ001 FFIV1Altr3_SQ001 FFIV1Altr4_SQ001 FFIV1Altr5R_SQ001 
    FFIV1Frei1R_SQ001 FFIV1Frei2RZ_SQ001 FFIV1Vert1R_SQ001 FFIV1Vert2R_SQ001 FFIV2Besc1RZ_SQ001 
    FFIV2Besc2RZ_SQ001 FFIV2Entg1_SQ001 FFIV2Entg2R_SQ001 FFIV2Entg3R_SQ001 FFIV2Guth1R_SQ001 
    FFIV2Guth2Z_SQ001
  /PRINT INITIAL EXTRACTION ROTATION
  /PLOT EIGEN
  /CRITERIA FACTORS(5) ITERATE(25)
  /EXTRACTION PC
  /CRITERIA ITERATE(25)
  /ROTATION VARIMAX
  /METHOD=CORRELATION.

/* Aufgabe 2
/* Scalen

COMPUTE SummeFFIE=Sum(
    FFIE1Gese1_SQ001, FFIE1Gese2R_SQ001, FFIE1Herz1_SQ001, FFIE1Herz2Z_SQ001,
    FFIE1PosE1_SQ001, FFIE1PosE2R_SQ001, FFIE1PosE3R_SQ001, FFIE1PosE4_SQ001,
    FFIE2Akti1_SQ001, FFIE2Akti2_SQ001, FFIE2Akti3_SQ001, FFIE2Durc1R_SQ001,
    FFIE2Durc2RZ_SQ001, FFIE2ErlS1_SQ001, FFIE2ErlS2Z_SQ001).
EXECUTE.

COMPUTE SummeFFIG=Sum(
    FFIG1Beso1Z_SQ001, FFIG1Beso2Z_SQ001, FFIG1Komp1Z_SQ001, FFIG1Komp2Z_SQ001,
    FFIG1OrdL1_SQ001, FFIG1OrdL2R_SQ001, FFIG1OrdL3R_SQ001, FFIG2LeiS1_SQ001,
    FFIG2LeiS2_SQ001, FFIG2LeiS3_SQ001, FFIG2PflB1R_SQ001, FFIG2PflB2_SQ001,
    FFIG2PflB3_SQ001, FFIG2SelD1_SQ001, FFIG2SelD2R_SQ001, FFIG2SelD3_SQ001).
EXECUTE.

COMPUTE SummeFFIN=Sum(
    FFIN1Aeng1R_SQ001, FFIN1Aeng2_SQ001, FFIN1Aeng3R_SQ001, FFIN1Depr1_SQ001,
    FFIN1Depr2R_SQ001, FFIN1Depr3R_SQ001, FFIN1Depr4_SQ001, FFIN1SozB1_SQ001,
    FFIN1SozB2_SQ001, FFIN2Impu1Z_SQ001, FFIN2Impu2RZ_SQ001, FFIN2Reiz1_SQ001,
    FFIN2Reiz2RZ_SQ001, FFIN2Verl1_SQ001, FFIN2Verl2_SQ001).
EXECUTE.

COMPUTE SummeFFIO=Sum(
    FFIO1Aest1_SQ001, FFIO1Aest2R_SQ001, FFIO1Aest3_SQ001, FFIO1Fant1R_SQ001,
    FFIO1Fant2Z_SQ001, FFIO1Gefu1R_SQ001, FFIO1Gefu2Z_SQ001, FFIO2Hand1_SQ001,
    FFIO2Hand2RZ_SQ001, FFIO2Idee1_SQ001, FFIO2Idee2_SQ001, FFIO2Idee3R_SQ001,
    FFIO2Idee4R_SQ001, FFIO2Wert1R_SQ001, FFIO2Wert2R_SQ001).
EXECUTE.

COMPUTE SummeFFIV=Sum(
    FFIV1Altr1_SQ001, FFIV1Altr2R_SQ001, FFIV1Altr3_SQ001, FFIV1Altr4_SQ001,
    FFIV1Altr5R_SQ001, FFIV1Frei1R_SQ001, FFIV1Frei2RZ_SQ001, FFIV1Vert1R_SQ001,
    FFIV1Vert2R_SQ001, FFIV2Besc1RZ_SQ001, FFIV2Besc2RZ_SQ001, FFIV2Entg1_SQ001,
    FFIV2Entg2R_SQ001, FFIV2Entg3R_SQ001, FFIV2Guth1R_SQ001, FFIV2Guth2Z_SQ001).
EXECUTE.

/* unsere Scala (unsere 4 Items in erster Zeile)
/* AO1Gefu1_SQ001       # weil wir kein Gefuehl-Item haben # [Ich fühle mit anderen mit.]
/* AO1Idee_SQ001          # Ich glaube, das ist ein besonders gutes Item. # [Ich fordere mein Gehirn gerne mit theoretischen Aufgaben heraus.]
/* DO1Fant2R_SQ001    # Ich gehe davon aus, dass dies eher mit Gewissenhaftigkeit korreliert. (Lädt tatsächlich stärker auf N und -E!) # [Aufgaben gehe ich eher praktisch an.]
/* FFIO2Wert2R_SQ001 # um ein FFIO- und Wert-Item zu haben # [Ich glaube, daß es Schüler oft nur verwirrt und irreführt, wenn man sie Rednern zuhören läßt, die kontroverse Standpunkte vertreten]

COMPUTE SummeO=Sum(
    AO2Aest1_SQ001, AO2Fant1_SQ001, AO2Hand1R_SQ001, AO2Idee1R_SQ001,
    AO1Gefu1_SQ001, AO1Idee_SQ001, DO1Fant2R_SQ001, FFIO2Wert2R_SQ001).
EXECUTE.

/* VALIDITÄT
 
CORRELATIONS
  /VARIABLES=SummeFFIE SummeFFIG SummeFFIN SummeFFIO SummeFFIV SummeO
  /PRINT=TWOTAIL NOSIG FULL
  /MISSING=PAIRWISE.

/* Finale Item-Selektion ---------------------------------------------------------------------------------------------
/* Abschussliste:
/* AO1Gefu1_SQ001: statistisch sehr problematisch und lädt eigentlich auf V
/* DO1Fant2R_SQ001: lädt auf allen Dimensionen schwach und am ehesten noch auf N und -E; auch inhaltlich und statistisch schwach
/* lohnen sich wegen Reduktion von Cronbach's Alpha zunächst nicht:
/* FFIO2Wert2R_SQ001: lädt stärker auf -N; leicht rechtssteil, auch inhaltlich bin ich mir unsicher (schlechtestes FFIO-Item)
/* AO2Idee1R_SQ001: lädt stärker auf E und -N und enge Verteilung

/* Ergebnis: am ehesten lohnt sich die Elimination von AO1Gefu1 und vielleicht noch FFIO2Wert2R,
/* weil dadurch zwar die Korrelation/Validität zu FFIO aber auch zu den anderen Dimensionen fällt.
/* In allen anderen Fällen werden die Verhältnisse insgesammt schlechter, überraschenderweise besonders bei DO1Fant2R!!!
/* Wir sind wohl gezwungen alle Items zu verschonen.
/* Sieht man sich aber die FFIO-Scala an, zeigt sich, dass sie noch stärker mit den anderen Dimensionen korreliert als unsere Scala.

/* Es wird deshalb nur probeweise mit der Elimination von AO1Gefu1 fortgefahren.
/* Dies führt gleichzeitig zu einer leichten Erhöhung der Reliabilität:

COMPUTE SummeO=Sum(
    AO2Aest1_SQ001, AO2Fant1_SQ001, AO2Hand1R_SQ001, AO2Idee1R_SQ001,
    AO1Idee_SQ001, DO1Fant2R_SQ001, FFIO2Wert2R_SQ001).
EXECUTE.

RELIABILITY
  /VARIABLES=AO2Aest1_SQ001 AO2Fant1_SQ001 AO2Hand1R_SQ001 AO2Idee1R_SQ001
    AO1Idee_SQ001 DO1Fant2R_SQ001 FFIO2Wert2R_SQ001
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

/* Spätestens ab hier lohnt sich keine weitere Elimination, denn:
/* Elimination von DO1Fant2R_SQ001 aufgrund höherer Reliabilität interessant, führt aber zu einer allgemeinen Verschlechterung der Validität.
/* AO1Idee_SQ001 würde sich wegen leicht höherer Validität und schwacher Ladung auf Openness ein wenig lohnen, würde aber ebenfalls zu allgemeiner Verschlechterung der Validität führen.
/* Bei allen anderen Items würde es mindestens zu einer deutlichen Verschlechterung der Reliabilität(Cronbach's Alpha) führen.
