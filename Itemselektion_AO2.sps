﻿* Encoding: UTF-8.

DATASET ACTIVATE DataSet1.

/* Aufgabe 1.1 Deskriptive Statistiken & Reliabilität
/* Verteilung und Item-Schwirigkeiten

FREQUENCIES VARIABLES=AO2Aest1_SQ001 AO2Fant1_SQ001 AO2Hand1R_SQ001 AO2Idee1R_SQ001
    AO1Gefu1_SQ001 AO1Fant1_SQ001 AO1Idee_SQ001 FFIO2Wert2R_SQ001
  /STATISTICS=STDDEV MINIMUM MAXIMUM MEAN
  /HISTOGRAM
  /ORDER=ANALYSIS.

/* Trennschärfen

RELIABILITY
  /VARIABLES=AO2Aest1_SQ001 AO2Fant1_SQ001 AO2Hand1R_SQ001 AO2Idee1R_SQ001
    AO1Gefu1_SQ001 AO1Fant1_SQ001 AO1Idee_SQ001 FFIO2Wert2R_SQ001
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.



/* Aufgabe 1.2 Validität und Faktorenanalyse
/*    TODO

/* Aufgabe 2 Validität, Finale Item-Selektion
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
/* AO1Gefu1_SQ001        # weil wir kein Gefuehl-Item haben # [Ich fühle mit anderen mit.]
/* AO1Fant1_SQ001        # Ich gehe davon aus, dass dies eher mit Gewissenhaftigkeit korreliert. # [Spontane Ausflüge stressen mich.]
/* AO1Idee_SQ001          # Ich glaube, das ist ein besonders gutes Item. # [Ich fordere mein Gehirn gerne mit theoretischen Aufgaben heraus.]
/* FFIO2Wert2R_SQ001 # um ein FFIO- und Wert-Item zu haben # [Ich glaube, daß es Schüler oft nur verwirrt und irreführt, wenn man sie Rednern zuhören läßt, die kontroverse Standpunkte vertreten]

COMPUTE SummeO=Sum(
    AO2Aest1_SQ001, AO2Fant1_SQ001, AO2Hand1R_SQ001, AO2Idee1R_SQ001,
    AO1Gefu1_SQ001, AO1Fant1_SQ001, AO1Idee_SQ001, FFIO2Wert2R_SQ001).
EXECUTE.

/* Validität
 
CORRELATIONS
  /VARIABLES=SummeFFIE SummeFFIG SummeFFIN SummeFFIO SummeFFIV SummeO
  /PRINT=TWOTAIL NOSIG FULL
  /MISSING=PAIRWISE.





