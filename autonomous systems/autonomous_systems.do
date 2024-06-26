/* header */
version 14.2

set more off, permanently
set scheme s2mono


/* data cleaning */
use "autonomous_systems.dta", clear

replace v1f1 = "0" if v1f1 == "N"
replace v1f1 = "1" if v1f1 == "Y"

replace v2f1 = "0" if v2f1 == "N"
replace v2f1 = "1" if v2f1 == "Y"

replace v3f1 = "0" if v3f1 == "N"
replace v3f1 = "1" if v3f1 == "Y"

replace v4f1 = "0" if v4f1 == "N"
replace v4f1 = "1" if v4f1 == "Y"

replace v5f1 = "0" if v5f1 == "N"
replace v5f1 = "1" if v5f1 == "Y"

replace v6f1 = "0" if v6f1 == "N"
replace v6f1 = "1" if v6f1 == "Y"

replace v7f1 = "0" if v7f1 == "N"
replace v7f1 = "1" if v7f1 == "Y"

replace v8f1 = "0" if v8f1 == "N"
replace v8f1 = "1" if v8f1 == "Y"

destring v1f1, replace
destring v2f1, replace
destring v3f1, replace
destring v4f1, replace
destring v5f1, replace
destring v6f1, replace
destring v7f1, replace
destring v8f1, replace

ren randnumber treatment
label define treatment_lb 1 "Autonom (+) / Fr. (–) / Grün" ///
                          2 "Autonom (–) / Fr. (+) / Grün" ///
                          3 "Autonom (–) / Fr. (+) / Rot" ///
                          4 "Autonom (+) / Fr. (–) / Rot" ///
                          5 "Mensch (+) / Fr. (–) / Grün" ///
                          6 "Mensch (–) / Fr. (+) / Grün" ///
                          7 "Mensch (–) / Fr. (+) / Rot" ///
                          8 "Mensch (+) / Fr. (–) / Rot", replace
   label values treatment treatment_lb


/* generate additional variables */
gen answer = .
   replace answer = 0 if v1f1 == 0
   replace answer = 0 if v2f1 == 0
   replace answer = 0 if v3f1 == 0
   replace answer = 0 if v4f1 == 0
   replace answer = 0 if v5f1 == 0
   replace answer = 0 if v6f1 == 0
   replace answer = 0 if v7f1 == 0
   replace answer = 0 if v8f1 == 0

   replace answer = 1 if v1f1 == 1
   replace answer = 1 if v2f1 == 1
   replace answer = 1 if v3f1 == 1
   replace answer = 1 if v4f1 == 1
   replace answer = 1 if v5f1 == 1
   replace answer = 1 if v6f1 == 1
   replace answer = 1 if v7f1 == 1
   replace answer = 1 if v8f1 == 1
label define answer_lb 0 "Nein" 1 "Ja"
   label values answer answer_lb

gen scale_auton = "."
   replace scale_auton = "0" if v1f2 == "AO00"
   replace scale_auton = "1" if v1f2 == "AO01"
   replace scale_auton = "2" if v1f2 == "AO02"
   replace scale_auton = "3" if v1f2 == "AO03"
   replace scale_auton = "4" if v1f2 == "AO04"
   replace scale_auton = "5" if v1f2 == "AO05"
   replace scale_auton = "6" if v1f2 == "AO06"
   replace scale_auton = "7" if v1f2 == "AO07"

   replace scale_auton = "0" if v2f2 == "AO00"
   replace scale_auton = "1" if v2f2 == "AO01"
   replace scale_auton = "2" if v2f2 == "AO02"
   replace scale_auton = "3" if v2f2 == "AO03"
   replace scale_auton = "4" if v2f2 == "AO04"
   replace scale_auton = "5" if v2f2 == "AO05"
   replace scale_auton = "6" if v2f2 == "AO06"
   replace scale_auton = "7" if v2f2 == "AO07"

   replace scale_auton = "0" if v3f2 == "AO00"
   replace scale_auton = "1" if v3f2 == "AO01"
   replace scale_auton = "2" if v3f2 == "AO02"
   replace scale_auton = "3" if v3f2 == "AO03"
   replace scale_auton = "4" if v3f2 == "AO04"
   replace scale_auton = "5" if v3f2 == "AO05"
   replace scale_auton = "6" if v3f2 == "AO06"
   replace scale_auton = "7" if v3f2 == "AO07"

   replace scale_auton = "0" if v4f2 == "AO00"
   replace scale_auton = "1" if v4f2 == "AO01"
   replace scale_auton = "2" if v4f2 == "AO02"
   replace scale_auton = "3" if v4f2 == "AO03"
   replace scale_auton = "4" if v4f2 == "AO04"
   replace scale_auton = "5" if v4f2 == "AO05"
   replace scale_auton = "6" if v4f2 == "AO06"
   replace scale_auton = "7" if v4f2 == "AO07"

destring scale_auton, replace

gen scale_human = "."
   replace scale_human = "0" if v5f2 == "AO00"
   replace scale_human = "1" if v5f2 == "AO01"
   replace scale_human = "2" if v5f2 == "AO02"
   replace scale_human = "3" if v5f2 == "AO03"
   replace scale_human = "4" if v5f2 == "AO04"
   replace scale_human = "5" if v5f2 == "AO05"
   replace scale_human = "6" if v5f2 == "AO06"
   replace scale_human = "7" if v5f2 == "AO07"

   replace scale_human = "0" if v6f2 == "AO00"
   replace scale_human = "1" if v6f2 == "AO01"
   replace scale_human = "2" if v6f2 == "AO02"
   replace scale_human = "3" if v6f2 == "AO03"
   replace scale_human = "4" if v6f2 == "AO04"
   replace scale_human = "5" if v6f2 == "AO05"
   replace scale_human = "6" if v6f2 == "AO06"
   replace scale_human = "7" if v6f2 == "AO07"

   replace scale_human = "0" if v7f2 == "AO00"
   replace scale_human = "1" if v7f2 == "AO01"
   replace scale_human = "2" if v7f2 == "AO02"
   replace scale_human = "3" if v7f2 == "AO03"
   replace scale_human = "4" if v7f2 == "AO04"
   replace scale_human = "5" if v7f2 == "AO05"
   replace scale_human = "6" if v7f2 == "AO06"
   replace scale_human = "7" if v7f2 == "AO07"

   replace scale_human = "0" if v8f2 == "AO00"
   replace scale_human = "1" if v8f2 == "AO01"
   replace scale_human = "2" if v8f2 == "AO02"
   replace scale_human = "3" if v8f2 == "AO03"
   replace scale_human = "4" if v8f2 == "AO04"
   replace scale_human = "5" if v8f2 == "AO05"
   replace scale_human = "6" if v8f2 == "AO06"
   replace scale_human = "7" if v8f2 == "AO07"

destring scale_human, replace


/* quality checks */
forvalues i = 1/3 {
   encode konsq00`i', generate(quality_`i')
}

gen qualityfail = .
   replace qualityfail = 1 if quality_1 == 1
   replace qualityfail = 1 if quality_2 == 1
   replace qualityfail = 0 if quality_3 == 1

drop if qualityfail == 1
keep if lastpage == 24


/* sample */
tab treatment

sum age

forvalues i = 1/3 {
   encode gender_`i', generate(gender_num_`i')
}

gen gender = .
   replace gender = 0 if gender_num_1 == 1
   replace gender = 1 if gender_num_2 == 1
   replace gender = 2 if gender_num_3 == 1
label define gender_lb 0 "Weiblich" ///
                       1 "Divers" ///
                       2 "Männlich", replace
   label values gender gender_lb

tab gender

tostring edu6, replace
replace edu6 = "" if edu6 == "."

forvalues i = 1/7 {
   encode edu`i', generate(edu_num_`i')
}

gen education = .
   replace education = 1 if edu_num_1 == 1
   replace education = 2 if edu_num_2 == 1
   replace education = 3 if edu_num_3 == 1
   replace education = 4 if edu_num_4 == 1
   replace education = 5 if edu_num_5 == 1
   replace education = 6 if edu_num_6 == 1
   replace education = 7 if edu_num_7 == 1
label define education_lb 1 "ohne allgemeinen Schulabschluss" ///
                          2 "Haupt- oder Realschulabschluss" ///
                          3 "Fachhochschul- oder Hochschulreife" ///
                          4 "Hochschulabschluss" ///
                          5 "Promotion" ///
                          6 "Habilation" ///
                          7 "im Studium", replace
   label values education education_lb

tab education


/* generate graphs */
histogram answer, percent discrete by(treatment, note("") graphregion(fcolor(white))) ///
   xtitle("Moralische Schuld?") ///
   xlabel(0 "Nein" 1 "Ja") ///
   ytitle("Prozent") ///
   yscale(range(0 100))
graph export autonomous_systems_all.pdf, replace


/* Autonom vs. Mensch */
preserve
   gen treatment_class = .
      replace treatment_class = 0 if treatment == 1
      replace treatment_class = 0 if treatment == 2
      replace treatment_class = 0 if treatment == 3
      replace treatment_class = 0 if treatment == 4

      replace treatment_class = 1 if treatment == 5
      replace treatment_class = 1 if treatment == 6
      replace treatment_class = 1 if treatment == 7
      replace treatment_class = 1 if treatment == 8
   label define treatment_class_lb 0 "Autonom" 1 "Mensch"
      label values treatment_class treatment_class_lb

   histogram answer, percent discrete by(treatment_class, note("") graphregion(fcolor(white))) ///
      xtitle("Moralische Schuld?") ///
      xlabel(0 "Nein" 1 "Ja") ///
      ytitle("Prozent") ///
      yscale(range(0 100))
   graph export autonomous_systems_autonomous_human.pdf, replace

   tab answer treatment_class, cell chi2 V

   ttest scale_human == scale_auton, unpaired
restore


/* Rot vs. Grün */
preserve
   gen treatment_class = .
      replace treatment_class = 0 if treatment == 3
      replace treatment_class = 0 if treatment == 4
      replace treatment_class = 0 if treatment == 7
      replace treatment_class = 0 if treatment == 8

      replace treatment_class = 1 if treatment == 1
      replace treatment_class = 1 if treatment == 2
      replace treatment_class = 1 if treatment == 5
      replace treatment_class = 1 if treatment == 6
   label define treatment_class_lb 0 "Rot" 1 "Grün"
      label values treatment_class treatment_class_lb

   histogram answer, percent discrete by(treatment_class, note("") graphregion(fcolor(white))) ///
      xtitle("Moralische Schuld?") ///
      xlabel(0 "Nein" 1 "Ja") ///
      ytitle("Prozent") ///
      yscale(range(0 100))
   graph export autonomous_systems_autonomous_human.pdf, replace

   tab answer treatment_class, cell chi2 V

   ttest scale_human == scale_auton, unpaired
restore


/* Autonom oder Mensch (+) vs. Fr. (+) */
preserve
   gen treatment_class = .
      replace treatment_class = 0 if treatment == 1
      replace treatment_class = 0 if treatment == 4
      replace treatment_class = 0 if treatment == 5
      replace treatment_class = 0 if treatment == 8

      replace treatment_class = 1 if treatment == 2
      replace treatment_class = 1 if treatment == 3
      replace treatment_class = 1 if treatment == 6
      replace treatment_class = 1 if treatment == 7
   label define treatment_class_lb 0 "Autonom oder Mensch (+)" 1 "Frau (+)"
      label values treatment_class treatment_class_lb

   histogram answer, percent discrete by(treatment_class, note("") graphregion(fcolor(white))) ///
      xtitle("Moralische Schuld?") ///
      xlabel(0 "Nein" 1 "Ja") ///
      ytitle("Prozent") ///
      yscale(range(0 100))
   graph export autonomous_systems_autonomous_human.pdf, replace

   tab answer treatment_class, cell chi2 V

   ttest scale_human == scale_auton, unpaired
restore


/* scales */
preserve
   keep if treatment == 1 | treatment == 2 | treatment == 3 | treatment == 4

   histogram scale_auton, percent discrete by(treatment, note("") graphregion(fcolor(white))) ///
      xtitle("Skala Autonom") ///
      ytitle("Prozent") ///
      yscale(range(0 100))
   graph export autonomous_systems_scale_auton.pdf, replace
restore

preserve
   keep if treatment == 5 | treatment == 6 | treatment == 7 | treatment == 8

   histogram scale_human, percent discrete by(treatment, note("") graphregion(fcolor(white))) ///
      xtitle("Skala Mensch") ///
      ytitle("Prozent") ///
      yscale(range(0 100))
   graph export autonomous_systems_scale_human.pdf, replace
restore


exit
