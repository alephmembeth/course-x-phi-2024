/* header */
version 14.2

set more off, permanently
set scheme s2mono


/* data cleaning */
use "moral_obligation.dta", clear

ren benani2sq001 benani2
ren bebuni2sq001 bebuni2
ren beinni2sq001 beinni2
ren benage2sq001 benage2
ren bebuge2sq001 bebuge2
ren beinge2sq001 beinge2
ren frenani2sq001 frenani2
ren frebuni2sq001 frebuni2
ren freinni2sq001 freinni2
ren frenage2sq001 frenage2
ren frebuge2sq001 frebuge2
ren freinge2sq001 freinge2

replace benani1 = "0" if benani1 == "N"
replace benani1 = "1" if benani1 == "Y"
replace benani3 = "0" if benani3 == "N"
replace benani3 = "1" if benani3 == "Y"

replace bebuni1 = "0" if bebuni1 == "N"
replace bebuni1 = "1" if bebuni1 == "Y"
replace bebuni3 = "0" if bebuni3 == "N"
replace bebuni3 = "1" if bebuni3 == "Y"

replace beinni1 = "0" if beinni1 == "N"
replace beinni1 = "1" if beinni1 == "Y"
replace beinni3 = "0" if beinni3 == "N"
replace beinni3 = "1" if beinni3 == "Y"

replace benage1 = "0" if benage1 == "N"
replace benage1 = "1" if benage1 == "Y"
replace benage3 = "0" if benage3 == "N"
replace benage3 = "1" if benage3 == "Y"

replace bebuge1 = "0" if bebuge1 == "N"
replace bebuge1 = "1" if bebuge1 == "Y"
replace bebuge3 = "0" if bebuge3 == "N"
replace bebuge3 = "1" if bebuge3 == "Y"

replace beinge1 = "0" if beinge1 == "N"
replace beinge1 = "1" if beinge1 == "Y"
replace beinge3 = "0" if beinge3 == "N"
replace beinge3 = "1" if beinge3 == "Y"

replace frenani1 = "0" if frenani1 == "N"
replace frenani1 = "1" if frenani1 == "Y"
replace frenani3 = "0" if frenani3 == "N"
replace frenani3 = "1" if frenani3 == "Y"

replace frebuni1 = "0" if frebuni1 == "N"
replace frebuni1 = "1" if frebuni1 == "Y"
replace frebuni3 = "0" if frebuni3 == "N"
replace frebuni3 = "1" if frebuni3 == "Y"

replace freinni1 = "0" if freinni1 == "N"
replace freinni1 = "1" if freinni1 == "Y"
replace freinni3 = "0" if freinni3 == "N"
replace freinni3 = "1" if freinni3 == "Y"

replace frenage1 = "0" if frenage1 == "N"
replace frenage1 = "1" if frenage1 == "Y"
replace frenage3 = "0" if frenage3 == "N"
replace frenage3 = "1" if frenage3 == "Y"

replace frebuge1 = "0" if frebuge1 == "N"
replace frebuge1 = "1" if frebuge1 == "Y"
replace frebuge3 = "0" if frebuge3 == "N"
replace frebuge3 = "1" if frebuge3 == "Y"

replace freinge1 = "0" if freinge1 == "N"
replace freinge1 = "1" if freinge1 == "Y"
replace freinge3 = "0" if freinge3 == "N"
replace freinge3 = "1" if freinge3 == "Y"

replace benani2 = "0" if benani2 == "AO00"
replace benani2 = "1" if benani2 == "AO01"
replace benani2 = "2" if benani2 == "AO02"
replace benani2 = "3" if benani2 == "AO03"
replace benani2 = "4" if benani2 == "AO04"
replace benani2 = "5" if benani2 == "AO05"
replace benani2 = "6" if benani2 == "AO06"
replace benani2 = "7" if benani2 == "AO07"

replace bebuni2 = "0" if bebuni2 == "AO00"
replace bebuni2 = "1" if bebuni2 == "AO01"
replace bebuni2 = "2" if bebuni2 == "AO02"
replace bebuni2 = "3" if bebuni2 == "AO03"
replace bebuni2 = "4" if bebuni2 == "AO04"
replace bebuni2 = "5" if bebuni2 == "AO05"
replace bebuni2 = "6" if bebuni2 == "AO06"
replace bebuni2 = "7" if bebuni2 == "AO07"

replace beinni2 = "0" if beinni2 == "AO00"
replace beinni2 = "1" if beinni2 == "AO01"
replace beinni2 = "2" if beinni2 == "AO02"
replace beinni2 = "3" if beinni2 == "AO03"
replace beinni2 = "4" if beinni2 == "AO04"
replace beinni2 = "5" if beinni2 == "AO05"
replace beinni2 = "6" if beinni2 == "AO06"
replace beinni2 = "7" if beinni2 == "AO07"

replace benage2 = "0" if benage2 == "AO00"
replace benage2 = "1" if benage2 == "AO01"
replace benage2 = "2" if benage2 == "AO02"
replace benage2 = "3" if benage2 == "AO03"
replace benage2 = "4" if benage2 == "AO04"
replace benage2 = "5" if benage2 == "AO05"
replace benage2 = "6" if benage2 == "AO06"
replace benage2 = "7" if benage2 == "AO07"

replace bebuge2 = "0" if bebuge2 == "AO00"
replace bebuge2 = "1" if bebuge2 == "AO01"
replace bebuge2 = "2" if bebuge2 == "AO02"
replace bebuge2 = "3" if bebuge2 == "AO03"
replace bebuge2 = "4" if bebuge2 == "AO04"
replace bebuge2 = "5" if bebuge2 == "AO05"
replace bebuge2 = "6" if bebuge2 == "AO06"
replace bebuge2 = "7" if bebuge2 == "AO07"

replace beinge2 = "0" if beinge2 == "AO00"
replace beinge2 = "1" if beinge2 == "AO01"
replace beinge2 = "2" if beinge2 == "AO02"
replace beinge2 = "3" if beinge2 == "AO03"
replace beinge2 = "4" if beinge2 == "AO04"
replace beinge2 = "5" if beinge2 == "AO05"
replace beinge2 = "6" if beinge2 == "AO06"
replace beinge2 = "7" if beinge2 == "AO07"

replace frenani2 = "0" if frenani2 == "AO00"
replace frenani2 = "1" if frenani2 == "AO01"
replace frenani2 = "2" if frenani2 == "AO02"
replace frenani2 = "3" if frenani2 == "AO03"
replace frenani2 = "4" if frenani2 == "AO04"
replace frenani2 = "5" if frenani2 == "AO05"
replace frenani2 = "6" if frenani2 == "AO06"
replace frenani2 = "7" if frenani2 == "AO07"

replace frebuni2 = "0" if frebuni2 == "AO00"
replace frebuni2 = "1" if frebuni2 == "AO01"
replace frebuni2 = "2" if frebuni2 == "AO02"
replace frebuni2 = "3" if frebuni2 == "AO03"
replace frebuni2 = "4" if frebuni2 == "AO04"
replace frebuni2 = "5" if frebuni2 == "AO05"
replace frebuni2 = "6" if frebuni2 == "AO06"
replace frebuni2 = "7" if frebuni2 == "AO07"

replace freinni2 = "0" if freinni2 == "AO00"
replace freinni2 = "1" if freinni2 == "AO01"
replace freinni2 = "2" if freinni2 == "AO02"
replace freinni2 = "3" if freinni2 == "AO03"
replace freinni2 = "4" if freinni2 == "AO04"
replace freinni2 = "5" if freinni2 == "AO05"
replace freinni2 = "6" if freinni2 == "AO06"
replace freinni2 = "7" if freinni2 == "AO07"

replace frenage2 = "0" if frenage2 == "AO00"
replace frenage2 = "1" if frenage2 == "AO01"
replace frenage2 = "2" if frenage2 == "AO02"
replace frenage2 = "3" if frenage2 == "AO03"
replace frenage2 = "4" if frenage2 == "AO04"
replace frenage2 = "5" if frenage2 == "AO05"
replace frenage2 = "6" if frenage2 == "AO06"
replace frenage2 = "7" if frenage2 == "AO07"

replace frebuge2 = "0" if frebuge2 == "AO00"
replace frebuge2 = "1" if frebuge2 == "AO01"
replace frebuge2 = "2" if frebuge2 == "AO02"
replace frebuge2 = "3" if frebuge2 == "AO03"
replace frebuge2 = "4" if frebuge2 == "AO04"
replace frebuge2 = "5" if frebuge2 == "AO05"
replace frebuge2 = "6" if frebuge2 == "AO06"
replace frebuge2 = "7" if frebuge2 == "AO07"

replace freinge2 = "0" if freinge2 == "AO00"
replace freinge2 = "1" if freinge2 == "AO01"
replace freinge2 = "2" if freinge2 == "AO02"
replace freinge2 = "3" if freinge2 == "AO03"
replace freinge2 = "4" if freinge2 == "AO04"
replace freinge2 = "5" if freinge2 == "AO05"
replace freinge2 = "6" if freinge2 == "AO06"
replace freinge2 = "7" if freinge2 == "AO07"

destring benani1, replace
destring benani2, replace
destring benani3, replace

destring bebuni1, replace
destring bebuni2, replace
destring bebuni3, replace

destring beinni1, replace
destring beinni2, replace
destring beinni3, replace

destring benage1, replace
destring benage2, replace
destring benage3, replace

destring bebuge1, replace
destring bebuge2, replace
destring bebuge3, replace

destring beinge1, replace
destring beinge2, replace
destring beinge3, replace

destring frenani1, replace
destring frenani2, replace
destring frenani3, replace

destring frebuni1, replace
destring frebuni2, replace
destring frebuni3, replace

destring freinni1, replace
destring freinni2, replace
destring freinni3, replace

destring frenage1, replace
destring frenage2, replace
destring frenage3, replace

destring frebuge1, replace
destring frebuge2, replace
destring frebuge3, replace

destring freinge1, replace
destring freinge2, replace
destring freinge3, replace

ren randnumber treatment
label define treatment_lb 1 "Known / Neighbor / Kidney" ///
                          2 "Known / State / Kidney" ///
                          3 "Known / Country / Kidney" ///
                          4 "Known / Neighbor / Money" ///
                          5 "Known / State / Money" ///
                          6 "Known / Country / Money" ///
                          7 "Unknown / Neighbor / Kidney" ///
                          8 "Unknown / State / Kidney" ///
                          9 "Unknown / Country / Kidney" ///
                          10 "Unknown / Neighbor / Money" ///
                          11 "Unknown / State / Money" ///
                          12 "Unknown / Country / Money", replace
   label values treatment treatment_lb


/* generate additional variables */
gen answer_do = .
   replace answer_do = 0 if benani1 == 0
   replace answer_do = 1 if benani1 == 1

   replace answer_do = 0 if bebuni1 == 0
   replace answer_do = 1 if bebuni1 == 1

   replace answer_do = 0 if beinni1 == 0
   replace answer_do = 1 if beinni1 == 1

   replace answer_do = 0 if benage1 == 0
   replace answer_do = 1 if benage1 == 1

   replace answer_do = 0 if bebuge1 == 0
   replace answer_do = 1 if bebuge1 == 1

   replace answer_do = 0 if beinge1 == 0
   replace answer_do = 1 if beinge1 == 1

   replace answer_do = 0 if frenani1 == 0
   replace answer_do = 1 if frenani1 == 1

   replace answer_do = 0 if frebuni1 == 0
   replace answer_do = 1 if frebuni1 == 1

   replace answer_do = 0 if freinni1 == 0
   replace answer_do = 1 if freinni1 == 1

   replace answer_do = 0 if frenage1 == 0
   replace answer_do = 1 if frenage1 == 1

   replace answer_do = 0 if frebuge1 == 0
   replace answer_do = 1 if frebuge1 == 1

   replace answer_do = 0 if freinge1 == 0
   replace answer_do = 1 if freinge1 == 1
label define answer_do_lb 0 "No" 1 "Yes"
   label values answer_do answer_do_lb

gen answer_should = .
   replace answer_should = 0 if benani3 == 0
   replace answer_should = 1 if benani3 == 1

   replace answer_should = 0 if bebuni3 == 0
   replace answer_should = 1 if bebuni3 == 1

   replace answer_should = 0 if beinni3 == 0
   replace answer_should = 1 if beinni3 == 1

   replace answer_should = 0 if benage3 == 0
   replace answer_should = 1 if benage3 == 1

   replace answer_should = 0 if bebuge3 == 0
   replace answer_should = 1 if bebuge3 == 1

   replace answer_should = 0 if beinge3 == 0
   replace answer_should = 1 if beinge3 == 1

   replace answer_should = 0 if frenani3 == 0
   replace answer_should = 1 if frenani3 == 1

   replace answer_should = 0 if frebuni3 == 0
   replace answer_should = 1 if frebuni3 == 1

   replace answer_should = 0 if freinni3 == 0
   replace answer_should = 1 if freinni3 == 1

   replace answer_should = 0 if frenage3 == 0
   replace answer_should = 1 if frenage3 == 1

   replace answer_should = 0 if frebuge3 == 0
   replace answer_should = 1 if frebuge3 == 1

   replace answer_should = 0 if freinge3 == 0
   replace answer_should = 1 if freinge3 == 1
label define answer_should_lb 0 "No" 1 "Yes"
   label values answer_should answer_should_lb

gen answer_scale = .
   replace answer_scale = 0 if benani2 == 0
   replace answer_scale = 1 if benani2 == 1
   replace answer_scale = 2 if benani2 == 2
   replace answer_scale = 3 if benani2 == 3
   replace answer_scale = 4 if benani2 == 4
   replace answer_scale = 5 if benani2 == 5
   replace answer_scale = 6 if benani2 == 6
   replace answer_scale = 7 if benani2 == 7

   replace answer_scale = 0 if bebuni2 == 0
   replace answer_scale = 1 if bebuni2 == 1
   replace answer_scale = 2 if bebuni2 == 2
   replace answer_scale = 3 if bebuni2 == 3
   replace answer_scale = 4 if bebuni2 == 4
   replace answer_scale = 5 if bebuni2 == 5
   replace answer_scale = 6 if bebuni2 == 6
   replace answer_scale = 7 if bebuni2 == 7

   replace answer_scale = 0 if beinni2 == 0
   replace answer_scale = 1 if beinni2 == 1
   replace answer_scale = 2 if beinni2 == 2
   replace answer_scale = 3 if beinni2 == 3
   replace answer_scale = 4 if beinni2 == 4
   replace answer_scale = 5 if beinni2 == 5
   replace answer_scale = 6 if beinni2 == 6
   replace answer_scale = 7 if beinni2 == 7

   replace answer_scale = 0 if benage2 == 0
   replace answer_scale = 1 if benage2 == 1
   replace answer_scale = 2 if benage2 == 2
   replace answer_scale = 3 if benage2 == 3
   replace answer_scale = 4 if benage2 == 4
   replace answer_scale = 5 if benage2 == 5
   replace answer_scale = 6 if benage2 == 6
   replace answer_scale = 7 if benage2 == 7

   replace answer_scale = 0 if bebuge2 == 0
   replace answer_scale = 1 if bebuge2 == 1
   replace answer_scale = 2 if bebuge2 == 2
   replace answer_scale = 3 if bebuge2 == 3
   replace answer_scale = 4 if bebuge2 == 4
   replace answer_scale = 5 if bebuge2 == 5
   replace answer_scale = 6 if bebuge2 == 6
   replace answer_scale = 7 if bebuge2 == 7

   replace answer_scale = 0 if beinge2 == 0
   replace answer_scale = 1 if beinge2 == 1
   replace answer_scale = 2 if beinge2 == 2
   replace answer_scale = 3 if beinge2 == 3
   replace answer_scale = 4 if beinge2 == 4
   replace answer_scale = 5 if beinge2 == 5
   replace answer_scale = 6 if beinge2 == 6
   replace answer_scale = 7 if beinge2 == 7

   replace answer_scale = 0 if frenani2 == 0
   replace answer_scale = 1 if frenani2 == 1
   replace answer_scale = 2 if frenani2 == 2
   replace answer_scale = 3 if frenani2 == 3
   replace answer_scale = 4 if frenani2 == 4
   replace answer_scale = 5 if frenani2 == 5
   replace answer_scale = 6 if frenani2 == 6
   replace answer_scale = 7 if frenani2 == 7

   replace answer_scale = 0 if frebuni2 == 0
   replace answer_scale = 1 if frebuni2 == 1
   replace answer_scale = 2 if frebuni2 == 2
   replace answer_scale = 3 if frebuni2 == 3
   replace answer_scale = 4 if frebuni2 == 4
   replace answer_scale = 5 if frebuni2 == 5
   replace answer_scale = 6 if frebuni2 == 6
   replace answer_scale = 7 if frebuni2 == 7

   replace answer_scale = 0 if freinni2 == 0
   replace answer_scale = 1 if freinni2 == 1
   replace answer_scale = 2 if freinni2 == 2
   replace answer_scale = 3 if freinni2 == 3
   replace answer_scale = 4 if freinni2 == 4
   replace answer_scale = 5 if freinni2 == 5
   replace answer_scale = 6 if freinni2 == 6
   replace answer_scale = 7 if freinni2 == 7

   replace answer_scale = 0 if frenage2 == 0
   replace answer_scale = 1 if frenage2 == 1
   replace answer_scale = 2 if frenage2 == 2
   replace answer_scale = 3 if frenage2 == 3
   replace answer_scale = 4 if frenage2 == 4
   replace answer_scale = 5 if frenage2 == 5
   replace answer_scale = 6 if frenage2 == 6
   replace answer_scale = 7 if frenage2 == 7

   replace answer_scale = 0 if frebuge2 == 0
   replace answer_scale = 1 if frebuge2 == 1
   replace answer_scale = 2 if frebuge2 == 2
   replace answer_scale = 3 if frebuge2 == 3
   replace answer_scale = 4 if frebuge2 == 4
   replace answer_scale = 5 if frebuge2 == 5
   replace answer_scale = 6 if frebuge2 == 6
   replace answer_scale = 7 if frebuge2 == 7

   replace answer_scale = 0 if freinge2 == 0
   replace answer_scale = 1 if freinge2 == 1
   replace answer_scale = 2 if freinge2 == 2
   replace answer_scale = 3 if freinge2 == 3
   replace answer_scale = 4 if freinge2 == 4
   replace answer_scale = 5 if freinge2 == 5
   replace answer_scale = 6 if freinge2 == 6
   replace answer_scale = 7 if freinge2 == 7


/* quality checks */
gen qualityfail = .
   replace qualityfail = 1 if ctrl == 1
   replace qualityfail = 1 if ctrl == 2
   replace qualityfail = 1 if ctrl == 4
   replace qualityfail = 1 if ctrl == 5
   replace qualityfail = 0 if ctrl == 3

drop if qualityfail == 1
keep if lastpage == 45


/* sample */
tab treatment

sum age

forvalues i = 1/4 {
   encode gen`i', generate(gender_num_`i')
}

gen gender = .
   replace gender = 0 if gender_num_1 == 1
   replace gender = 1 if gender_num_2 == 1
   replace gender = 2 if gender_num_3 == 1
   replace gender = 3 if gender_num_4 == 1
label define gender_lb 0 "female" ///
                       1 "non-binary" ///
                       2 "male" ///
                       3 "no answer", replace
   label values gender gender_lb

tab gender

forvalues i = 1/8 {
   encode edu`i', generate(edu_num_`i')
}
   encode edu10, generate(edu_num_10)

gen education = .
   replace education = 1 if edu_num_1  == 1
   replace education = 2 if edu_num_2  == 1
   replace education = 3 if edu_num_3  == 1
   replace education = 4 if edu_num_4  == 1
   replace education = 5 if edu_num_5  == 1
   replace education = 6 if edu_num_6  == 1
   replace education = 7 if edu_num_7  == 1
   replace education = 8 if edu_num_8  == 1
   replace education = 9 if edu_num_10 == 1
label define education_lb 1 "no school-leaving qualifications" ///
                          2 "lower secondary school leaving certificate" ///
                          3 "technical college or university entrance qualification" ///
                          4 "bachelor's or master's degree" ///
                          5 "doctorate" ///
                          6 "habilitation" ///
                          7 "currently studying" ///
                          8 "currently in vocational training" ///
                          9 "completed vocational training", replace
   label values education education_lb

tab education


/* generate graphs */
histogram answer_do, percent discrete by(treatment, note("") graphregion(fcolor(white))) ///
   xtitle("Would you donate?") ///
   xlabel(0 "No" 1 "Yes") ///
   ytitle("Percent") ///
   yscale(range(0 100))
graph export moral_obligation_would_all.pdf, replace

histogram answer_should, percent discrete by(treatment, note("") graphregion(fcolor(white))) ///
   xtitle("Sould one donate?") ///
   xlabel(0 "No" 1 "Yes") ///
   ytitle("Percent") ///
   yscale(range(0 100))
graph export moral_obligation_should_all.pdf, replace


/* known vs. unknown */
preserve
   gen treatment_class = .
      replace treatment_class = 0 if treatment == 1
      replace treatment_class = 0 if treatment == 2
      replace treatment_class = 0 if treatment == 3
      replace treatment_class = 0 if treatment == 4
      replace treatment_class = 0 if treatment == 5
      replace treatment_class = 0 if treatment == 6

      replace treatment_class = 1 if treatment == 7
      replace treatment_class = 1 if treatment == 8
      replace treatment_class = 1 if treatment == 9
      replace treatment_class = 1 if treatment == 10
      replace treatment_class = 1 if treatment == 11
      replace treatment_class = 1 if treatment == 12
   label define treatment_class_lb 0 "Known" 1 "Unknown"
      label values treatment_class treatment_class_lb

   histogram answer_do, percent discrete by(treatment_class, note("") graphregion(fcolor(white))) ///
      xtitle("Would you donate?") ///
      xlabel(0 "No" 1 "Yes") ///
      ytitle("Percent") ///
      yscale(range(0 100))
   graph export moral_obligation_would_known_unknown.pdf, replace

   histogram answer_should, percent discrete by(treatment_class, note("") graphregion(fcolor(white))) ///
      xtitle("Sould one donate?") ///
      xlabel(0 "No" 1 "Yes") ///
      ytitle("Percent") ///
      yscale(range(0 100))
   graph export moral_obligation_should_known_unknown.pdf, replace

   tab answer_do treatment_class, cell chi2 V

   tab answer_should treatment_class, cell chi2 V
restore


/* kidney vs. money */
preserve
   gen treatment_class = .
      replace treatment_class = 0 if treatment == 1
      replace treatment_class = 0 if treatment == 2
      replace treatment_class = 0 if treatment == 3
      replace treatment_class = 0 if treatment == 7
      replace treatment_class = 0 if treatment == 8
      replace treatment_class = 0 if treatment == 9

      replace treatment_class = 1 if treatment == 4
      replace treatment_class = 1 if treatment == 5
      replace treatment_class = 1 if treatment == 6
      replace treatment_class = 1 if treatment == 10
      replace treatment_class = 1 if treatment == 11
      replace treatment_class = 1 if treatment == 12
   label define treatment_class_lb 0 "Kidney" 1 "Money"
      label values treatment_class treatment_class_lb

   histogram answer_do, percent discrete by(treatment_class, note("") graphregion(fcolor(white))) ///
      xtitle("Would you donate?") ///
      xlabel(0 "No" 1 "Yes") ///
      ytitle("Percent") ///
      yscale(range(0 100))
   graph export moral_obligation_would_kidney_money.pdf, replace

   histogram answer_should, percent discrete by(treatment_class, note("") graphregion(fcolor(white))) ///
      xtitle("Sould one donate?") ///
      xlabel(0 "No" 1 "Yes") ///
      ytitle("Percent") ///
      yscale(range(0 100))
   graph export moral_obligation_should_kidney_money.pdf, replace

   tab answer_do treatment_class, cell chi2 V

   tab answer_should treatment_class, cell chi2 V
restore


/* neighborhood vs. federal state */
preserve
   gen treatment_class = .
      replace treatment_class = 0 if treatment == 1
      replace treatment_class = 0 if treatment == 4
      replace treatment_class = 0 if treatment == 7
      replace treatment_class = 0 if treatment == 10

      replace treatment_class = 1 if treatment == 2
      replace treatment_class = 1 if treatment == 5
      replace treatment_class = 1 if treatment == 8
      replace treatment_class = 1 if treatment == 11
   label define treatment_class_lb 0 "Neighborhood" 1 "Federal State"
      label values treatment_class treatment_class_lb

   histogram answer_do, percent discrete by(treatment_class, note("") graphregion(fcolor(white))) ///
      xtitle("Would you donate?") ///
      xlabel(0 "No" 1 "Yes") ///
      ytitle("Percent") ///
      yscale(range(0 100))
   graph export moral_obligation_would_neighbor_state.pdf, replace

   histogram answer_should, percent discrete by(treatment_class, note("") graphregion(fcolor(white))) ///
      xtitle("Sould one donate?") ///
      xlabel(0 "No" 1 "Yes") ///
      ytitle("Percent") ///
      yscale(range(0 100))
   graph export moral_obligation_should_neighbor_state.pdf, replace

   tab answer_do treatment_class, cell chi2 V

   tab answer_should treatment_class, cell chi2 V
restore


/* federal state vs. far-away country */
preserve
   gen treatment_class = .
      replace treatment_class = 0 if treatment == 2
      replace treatment_class = 0 if treatment == 5
      replace treatment_class = 0 if treatment == 8
      replace treatment_class = 0 if treatment == 11

      replace treatment_class = 1 if treatment == 3
      replace treatment_class = 1 if treatment == 6
      replace treatment_class = 1 if treatment == 9
      replace treatment_class = 1 if treatment == 12
   label define treatment_class_lb 0 "Federal State" 1 "Far-Away Country"
      label values treatment_class treatment_class_lb

   histogram answer_do, percent discrete by(treatment_class, note("") graphregion(fcolor(white))) ///
      xtitle("Would you donate?") ///
      xlabel(0 "No" 1 "Yes") ///
      ytitle("Percent") ///
      yscale(range(0 100))
   graph export moral_obligation_would_state_country.pdf, replace

   histogram answer_should, percent discrete by(treatment_class, note("") graphregion(fcolor(white))) ///
      xtitle("Sould one donate?") ///
      xlabel(0 "No" 1 "Yes") ///
      ytitle("Percent") ///
      yscale(range(0 100))
   graph export moral_obligation_should_state_country.pdf, replace

   tab answer_do treatment_class, cell chi2 V

   tab answer_should treatment_class, cell chi2 V
restore


/* scales */
histogram answer_scale, percent discrete by(treatment, note("") graphregion(fcolor(white))) ///
   xtitle("Scale") ///
   ytitle("Percent") ///
   yscale(range(0 100))
graph export moral_obligation_scale_all.pdf, replace


exit
