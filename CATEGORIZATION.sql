SELECT *
FROM loan_default;

/* Categorization
added new column to categorise AGE, INCOME, LOAN TERM AND CREDIT SCORE
*/
-- Add new columns for categories

ALTER TABLE loan_default
add column age_category varchar(50),
add column income_category varchar(50),
add column credit_score_category varchar (50),
add column loan_term_category varchar(50);



-- Populate Age Category

update loan_default
set age_category = case
	when age <= 25 then '18-25'
	when age <= 35 then '26-35'
	when age <= 45 then '36-45'
	when age <= 55 then '46-55'
	else '56 and above'
end;

-- Populate Income Category

update loan_default
set income_category = case
	when income <= 50000 then 'low'
	when income <= 100000 then 'medium'
	else 'high'
end;


-- Populate Credit Score Category
update loan_default
set credit_score_category = case
    when credit_score <= 500 then 'poor'
    when credit_score <= 600 then 'fair'
    when credit_score <= 700 then 'good'
    else 'excellent'
end;

-- porpulate loan term category

update loan_default
set loan_term_category = case
    when loan_term <= 12 then 'short term'
    when loan_term <= 36 then 'medium term'
    else 'long term'
end;
