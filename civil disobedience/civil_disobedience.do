/* header */
version 14.2

set more off, permanently
set scheme s2mono


/* data cleaning */
use "civil_disobedience.dta", clear

replace friedlichgerecht = "0" if friedlichgerecht == "N"
replace friedlichgerecht = "1" if friedlichgerecht == "Y"
replace friedlichgewalt  = "0" if friedlichgewalt  == "N"
replace friedlichgewalt  = "1" if friedlichgewalt  == "Y"

replace blockieren1gerecht = "0" if blockieren1gerecht == "N"
replace blockieren1gerecht = "1" if blockieren1gerecht == "Y"
replace blockieren1gewalt  = "0" if blockieren1gewalt  == "N"
replace blockieren1gewalt  = "1" if blockieren1gewalt  == "Y"

replace blockieren2gerecht = "0" if blockieren2gerecht == "N"
replace blockieren2gerecht = "1" if blockieren2gerecht == "Y"
replace blockieren2gewalt  = "0" if blockieren2gewalt  == "N"
replace blockieren2gewalt  = "1" if blockieren2gewalt  == "Y"

replace gewalt1gerecht = "0" if gewalt1gerecht == "N"
replace gewalt1gerecht = "1" if gewalt1gerecht == "Y"
replace gewalt1gewalt  = "0" if gewalt1gewalt  == "N"
replace gewalt1gewalt  = "1" if gewalt1gewalt  == "Y"

replace gewalt2gerecht = "0" if gewalt2gerecht == "N"
replace gewalt2gerecht = "1" if gewalt2gerecht == "Y"
replace gewalt2gewalt  = "0" if gewalt2gewalt  == "N"
replace gewalt2gewalt  = "1" if gewalt2gewalt  == "Y"

destring friedlichgerecht, replace
destring friedlichgewalt, replace

destring blockieren1gerecht, replace
destring blockieren1gewalt, replace

destring blockieren2gerecht, replace
destring blockieren2gewalt, replace

destring gewalt1gerecht, replace
destring gewalt1gewalt, replace

destring gewalt2gerecht, replace
destring gewalt2gewalt, replace

ren randnumber treatment
label define treatment_lb 1 "Friedlich" ///
                          2 "Blockieren Zivil" ///
                          3 "Gewalt Zivil" ///
                          4 "Blockieren Polizei" ///
                          5 "Gewalt Polizei", replace
   label values treatment treatment_lb


/* generate additional variables */
gen answer_just = .
   replace answer_just = 0 if friedlichgerecht == 0
   replace answer_just = 1 if friedlichgerecht == 1

   replace answer_just = 0 if blockieren1gerecht == 0
   replace answer_just = 1 if blockieren1gerecht == 1

   replace answer_just = 0 if blockieren2gerecht == 0
   replace answer_just = 1 if blockieren2gerecht == 1

   replace answer_just = 0 if gewalt1gerecht == 0
   replace answer_just = 1 if gewalt1gerecht == 1

   replace answer_just = 0 if gewalt2gerecht == 0
   replace answer_just = 1 if gewalt2gerecht == 1
label define answer_just_lb 0 "Nein" 1 "Ja"
   label values answer_just answer_just_lb

gen answer_viol = .
   replace answer_viol = 0 if friedlichgewalt == 0
   replace answer_viol = 1 if friedlichgewalt == 1

   replace answer_viol = 0 if blockieren1gewalt == 0
   replace answer_viol = 1 if blockieren1gewalt == 1

   replace answer_viol = 0 if blockieren2gewalt == 0
   replace answer_viol = 1 if blockieren2gewalt == 1

   replace answer_viol = 0 if gewalt1gewalt == 0
   replace answer_viol = 1 if gewalt1gewalt == 1

   replace answer_viol = 0 if gewalt2gewalt == 0
   replace answer_viol = 1 if gewalt2gewalt == 1
label define answer_viol_lb 0 "Nein" 1 "Ja"
   label values answer_viol answer_viol_lb


/* quality checks */
gen qualityfail = .
   replace qualityfail = 1 if kontrollfrage == 1
   replace qualityfail = 1 if kontrollfrage == 3
   replace qualityfail = 0 if kontrollfrage == 2

drop if qualityfail == 1
keep if lastpage == 22


/* sample */
tab treatment

sum alter

label define geschlecht_lb 1 "Männlich" ///
                           2 "Weiblich" ///
                           3 "Nicht Binär" ///
                           4 "Keine Angabe", replace
   label values geschlecht geschlecht_lb

tab geschlecht

label define bildung_lb 1 "Kein Schulabschluss" ///
                        2 "Ich gehe noch zur Schule" ///
                        3 "Hauptschulabschluss" ///
                        4 "Realschulabschluss (Mittlere Reife)" ///
                        5 "Abgeschlossene Ausbildung" ///
                        6 "(Fach)-Abitur (Allgemeine oder Fachhochschulreife)" ///
                        7 "Bachelor-Abschluss" ///
                        8 "Master-Abschluss" ///
                        9 "Promoviert" ///
                        10 "Meistertitel (im Handwerk)", replace
   label values bildung bildung_lb

tab bildung


/* generate graphs */
histogram answer_just, percent discrete by(treatment, note("") graphregion(fcolor(white))) ///
   xtitle("Gerechtfertigt?") ///
   xlabel(0 "Nein" 1 "Ja") ///
   ytitle("Prozent") ///
   yscale(range(0 100))
graph export civil_disobedience_just_all.pdf, replace

histogram answer_viol, percent discrete by(treatment, note("") graphregion(fcolor(white))) ///
   xtitle("Gewaltvoll?") ///
   xlabel(0 "Nein" 1 "Ja") ///
   yscale(range(0 100))
graph export civil_disobedience_viol_all.pdf, replace


/* Friedlich vs. Blockieren Zivil */
preserve
   keep if treatment == 1 | treatment == 2

   tab answer_just treatment, cell chi2 V

   tab answer_viol treatment, cell chi2 V
restore


/* Friedlich vs. Gewalt Zivil */
preserve
   keep if treatment == 1 | treatment == 3

   tab answer_just treatment, cell chi2 V

   tab answer_viol treatment, cell chi2 V
restore


/* Friedlich vs. Blockieren Polizei */
preserve
   keep if treatment == 1 | treatment == 4

   tab answer_just treatment, cell chi2 V

   tab answer_viol treatment, cell chi2 V
restore


/* Friedlich vs. Gewalt Polizei */
preserve
   keep if treatment == 1 | treatment == 5

   tab answer_just treatment, cell chi2 V

   tab answer_viol treatment, cell chi2 V
restore


/* Blockieren Zivil vs. Blockieren Polizei */
preserve
   keep if treatment == 2 | treatment == 4

   tab answer_just treatment, cell chi2 V

   tab answer_viol treatment, cell chi2 V
restore


/* Gewalt Zivil vs. Gewalt Polizei */
preserve
   keep if treatment == 3 | treatment == 5

   tab answer_just treatment, cell chi2 V

   tab answer_viol treatment, cell chi2 V
restore


/* Blockieren Zivil vs. Gewalt Zivil */
preserve
   keep if treatment == 2 | treatment == 3

   tab answer_just treatment, cell chi2 V

   tab answer_viol treatment, cell chi2 V
restore


/* Blockieren Polizei vs. Gewalt Polizei */
preserve
   keep if treatment == 4 | treatment == 5

   tab answer_just treatment, cell chi2 V

   tab answer_viol treatment, cell chi2 V
restore


exit
