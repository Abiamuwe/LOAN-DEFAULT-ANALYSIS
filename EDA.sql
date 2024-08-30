select *
from loan_default;


SELECT `Default`, COUNT(*) AS DefaultCount
FROM loan_default
GROUP BY `Default`;

SELECT Marital_Status, COUNT(*) AS DefaultCount
FROM loan_default
WHERE `Default` = 1
GROUP BY Marital_Status;

select income_category, count(income_category) as default_count
from loan_default
where `default` = 1
group by income_category;

select education, count(education) as default_count
from loan_default
where `default` = 1
group by education;

select employment_type, count(employment_type) as default_count
from loan_default
where `default` = 1
group by employment_type;

select age_category, count(age_category) as default_count
from loan_default
where `default` = 1
group by age_category;

select loan_term_category, count(loan_term_category) as default_count
from loan_default
where `default` = 1
group by loan_term_category;

select credit_score_category, count(credit_score_category) as default_count
from loan_default
where `default` = 1
group by credit_score_category;



