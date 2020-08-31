# Pewlett-Hackard-Analysis

## Overview

The purpose of this analysis was continue assisting Pewlett-Hackard in providing information about forseeing employees that will be retiring soon, also known as the "silver tsunami". The goal was to get the number employees by their employment title, that will be retiring based off of birth dates. Another goal was to determine which current employees are eligible to be active in a mentorship program.


## Results

- We can see in the retirement titles dataset, Table 1, has many employees that began working at Pewlett-Hackard in the late 80s and the 90s, with little starting in the early 2000s. 

- In addition in the retirement titles dataset, the 'to_date' field contains dates that are not representative of current employees, but reflect employees already retired.


![img_1]()


- Senior Engineer is the title that contains the most employees that will be retiring from the company with 29,414 employees. Manager has the least number of employees that will be retiring with only 2 employees. 


![img_2]()


- Of the current employees born in the year 1965, 1,549 are eligible to participate for the mentorship program.


![img_3]()


## Summary

There are a total of 90,398 employees that will be part of the silver tsunami. About 30% are Senior Engineers, meaning P-H may need to fill less roles and promote current employees to higher titles. Taking a look at Table 4 below, an addition query was created to determine the number of employees per title that are involved in the mentorship program. In comparison to the retiring titles table, there are no current selected Managers in the mentorship program, while there will be 2 retiring. 

![img_4]()


Two queries to add to the analysis would be how to get Table 4 above by grouping employees participating in the mentorship program by their titles. Another query would be to remove any employees from the retirement_titles.csv dataset that do not reflect current employees at the company
