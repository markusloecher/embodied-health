use workingJan29.dta

* Table 2 col1:

reghdfe healing c.subjectiverecovery##i.condition, absorb(session response) cluster(subject)

*Figure 1

binscatter changed_avg_all subjectiverecovery 

* Figure 2

binscatter healing subjectiverecovery , by(condition)

* Figure 3

binscatter healing changed_avg_all, by(condition)


* Table 2 col2:

reghdfe healing i.hi_subj##c.changed_avg_all##i.condition, absorb(session responseid) cluster(subject) 
