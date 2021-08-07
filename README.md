# Pewlett-Hackard-Analysis

## Overview of the analysis: 
The purpose of the analysis is to modernize the company Pewlett-Hackard. PH is a company with a very loyal crew, that has been in the company for a while. Since most employees have been there for a long time, we can see that there is a "Silver Tsunami" coming. In other words, the company has a lot of people retiring form the firm. So the HP has a need to retire older people, hire new and have the older folk mentor the new generations. We will be creating a selection of mentorship program so the soon to be retired employees can mentor the incoming, younger employees.

## Results:
Here are the 4 main insights from the data we found:
- The first thing we did was to get a table, called retiring_titles, with all employees born between 1952 and 1955. The problem with this table, is that due to promotions, many employees appear on different rows. As we can see in the image bellow, if we count all the employee numbers from the retiring_titles table, we have 133,776. As we can see in the second image, we can see some duplicate employees.
<img width="104" alt="Captura de Pantalla 2021-08-06 a la(s) 22 38 40" src="https://user-images.githubusercontent.com/85461477/128586710-0ad39e6b-7b12-4097-b755-442c063d65de.png">
<img width="754" alt="Captura de Pantalla 2021-08-06 a la(s) 22 40 01" src="https://user-images.githubusercontent.com/85461477/128586717-eb6d2b92-0db9-4ef0-a4ae-4060cb5ffae9.png">
- The next thing we did was to use the "DISTINCT ON" statement, to filter out repeated employee numbers and get the latest title each employee has. We created the unique_titles table,. As we can see in the first image, the count was reduced from 133,776 to 90,398 meanding we had 43,378 employee numbers repeated, an important 32.43%.As we can see in the second image, the employee numbers are no loger repeated.
<img width="103" alt="Captura de Pantalla 2021-08-06 a la(s) 22 56 42" src="https://user-images.githubusercontent.com/85461477/128587147-e44f5e75-f0cb-441e-85aa-1f40d4fafae4.png">
<img width="564" alt="Captura de Pantalla 2021-08-06 a la(s) 22 58 49" src="https://user-images.githubusercontent.com/85461477/128587187-9e373fc1-f3e9-4dfa-b234-4bd57fbb9dd2.png">
- The next thing we did was to sort out all of the retiering employees by title, this way we can see how many employees are leaving by title or role in HP. We can see in the image bellow the table with this information. Here we can see that almost 32.54% of the retireing people are "Senior Engineers" and the least common role within the group that is retiring is Manager, with only 6 employees retiering.
<img width="241" alt="Captura de Pantalla 2021-08-06 a la(s) 23 00 08" src="https://user-images.githubusercontent.com/85461477/128587224-b489f06e-81db-4aed-8f14-37a02d3414ba.png">
- Then we created a mentorship eligibility program, which consist of current employees, born in 1965. In the following image we can see table mentorship_eligibility.
<img width="835" alt="Captura de Pantalla 2021-08-06 a la(s) 23 04 11" src="https://user-images.githubusercontent.com/85461477/128587306-b5f68db7-78c1-409d-aa0e-5122be1a9cd6.png">


## Summary:
As we can see, there is a lot of work to be done to take care of the "Silver Tsunami". Let me summarize answering the following questions.

#### - How many roles will need to be filled as the "silver tsunami" begins to make an impact?
As we saw earlier, and we can see in the image bellow. HP will have 90,398 employees retiring. Which means that in the following years, the company will have to fill those positions, which is why the mentorship program im very important.

<img width="103" alt="Captura de Pantalla 2021-08-06 a la(s) 22 56 42" src="https://user-images.githubusercontent.com/85461477/128587663-5282864b-33bc-495d-9286-20500dbab9ee.png">

#### - Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
Depends on the strategy the firm is looking for. We have 1,549 employees eligible to become mentors. If we fill every single retiring position with new recruits. It means that 1,549 mentors will have to teach aproximately 58 employees. HP will have to create a very efficient program, perhaps expand the conditions for eligibility and consider to trying to expand the timeline to recruit the opened positions. We can also see in the second table that the titles of the mentors aren't exactly the same as the retirees' titles. So we will need to create a very efficient mentorship program to meet these goals.

<img width="242" alt="Captura de Pantalla 2021-08-06 a la(s) 23 10 33" src="https://user-images.githubusercontent.com/85461477/128587496-95d5c023-9a7d-4df3-83c2-2c2e389070ae.png">

<img width="99" alt="Captura de Pantalla 2021-08-06 a la(s) 23 07 34" src="https://user-images.githubusercontent.com/85461477/128587737-20c99489-6102-4f0b-a196-1e7e895a8237.png">
