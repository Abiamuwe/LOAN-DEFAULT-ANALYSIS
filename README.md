# Analysis of Loan Default

## Introduction

Loan defaults present a significant challenge, impacting both the profitability of lenders and the well-being of borrowers. As financial institutions strive to minimize the risk of loan defaults, understanding the underlying causes is critical for enhancing credit risk assessment, improving customer segmentation, and ultimately reducing default rates.

## Business Problem

Loan defaults pose a significant financial risk to lending institutions, leading to potential revenue losses and negatively impacting financial stability. This project aims to address the following questions:
- What demographic or financial attributes are most predictive of loan defaults?
- How do variables like income, loan amount, education, marital status, age, and credit score influence default rates?

By answering these questions, the analysis will provide insights to inform risk management strategies, helping lenders reduce the incidence of loan defaults and improve financial outcomes for both institutions and customers.

## Key Areas of Analysis

1. **Age:** Analyze age groups and loan defaults to determine which age category is more prone to defaulting on loans.
2. **Income:** Examine how income levels impact the likelihood of default and identify income categories with higher risk.
3. **Education:** Investigate the relationship between education levels and loan default rates.
4. **Marital Status:** Assess the impact of marital status on loan defaults, considering factors such as financial stability in different marital categories.
5. **Credit Score:** Analyze the relationship between credit scores and default rates.
6. **Employment Type:** Explore how employment types relate to loan defaults.


## Tools Used

- **Data Cleanup and Analysis:** SQL was used for data cleanup, including checking for duplicates, adding necessary columns, as well as for exploratory data analysis (EDA) to uncover insights from the dataset.

## Findings

### Education and Default Rates
- **High School Graduates:** Highest default rate with 8,230 instances.
- **PhD Holders:** Lowest default count at 6,726.
- Higher education levels (Master's and PhD) are associated with lower default rates, possibly due to better financial literacy or more stable employment.

### Age and Default Rates
- **18-25 Age Group:** Highest default count at 8,100.
- **56 and Above Age Group:** Lowest default count at 3,772.
- Younger borrowers are more likely to default, potentially due to lower income and financial inexperience.

### Income and Default Rates
- **Low-Income Borrowers:** Highest default count at 11,344.
- **High-Income Borrowers:** Lowest default count at 8,609.
- Higher income levels are linked to lower default rates, with lower-income borrowers facing higher financial risks.

### Employment Type and Default Rates
- **Unemployed Borrowers:** Highest default count at 8,650.
- **Full-Time Workers:** Lowest default count at 6,024.
- Unemployed and part-time workers show higher default rates, likely due to inconsistent income.

### Loan Term and Default Rates
- **Long-Term Loans:** Highest default count at 11,905.
- **Short-Term Loans:** Lowest default count at 5,920.
- Longer loan terms are associated with higher default rates, possibly due to extended financial commitments.

### Credit Score and Default Rates
- **Poor Credit Scores:** Highest default count at 11,941.
- **Excellent Credit Scores:** Lowest default count at 7,038.
- Credit score is a strong predictor of default risk, with poorer scores correlating with higher default rates.

### Marital Status and Default Rates
- **Divorced Individuals:** Highest default count at 10,657.
- **Married Individuals:** Lowest default count at 8,869.
- Divorced and single individuals are more prone to default, possibly due to single-income households or financial challenges.

## Recommendations

1. ** Offer customized products with favorable terms for higher-risk borrowers, including lower interest rates and flexible repayment schedules.
2. ** Implement systems to track high-risk borrowers, enabling early intervention strategies such as financial counseling or loan restructuring.
3. ** Develop programs for high-risk groups, such as High School graduates and younger borrowers, to enhance their financial management skills.
4. ** Introduce income-based repayment plans or temporary payment deferrals for unemployed or part-time workers to mitigate their default risk.

## Conclusion

This analysis provides valuable insights into the factors influencing loan defaults. By understanding the demographic and financial attributes that predict default risk, lending institutions can better manage and mitigate these risks. Implementing the recommendations can lead to improved financial outcomes and more effective risk management strategies.

## References

1. Kaggle. [Loan Default Dataset](https://www.kaggle.com/datasets/nikhil1e9/loan-default).

